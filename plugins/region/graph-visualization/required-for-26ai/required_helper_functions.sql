CREATE OR REPLACE FUNCTION apex_sqlgraph_json (
   p_query      VARCHAR2,
   p_page_start NUMBER DEFAULT NULL,
   p_page_size  NUMBER DEFAULT NULL,
   p_bind_items VARCHAR2 DEFAULT NULL
) RETURN CLOB IS
   l_incur    SYS_REFCURSOR;
   l_cur      NUMBER;
   l_retvalue CLOB;
   l_item     VARCHAR2(4000);
   l_cur_id   NUMBER;
BEGIN
   l_cur := DBMS_SQL.OPEN_CURSOR;
   DBMS_SQL.PARSE(
      l_cur,
      p_query,
      DBMS_SQL.NATIVE
   );
   
   IF p_bind_items IS NOT NULL THEN
      FOR i IN 1..REGEXP_COUNT(p_bind_items, ',') + 1 LOOP
         l_item := REGEXP_SUBSTR(p_bind_items, '[^,]+', 1, i);
         DBMS_SQL.BIND_VARIABLE(
            l_cur,
            ':' || l_item,
            V(l_item)
         );
      END LOOP;
   END IF;
   
   BEGIN
      l_cur_id := DBMS_SQL.EXECUTE(l_cur);
      l_retvalue := ORA_SQLGRAPH_TO_JSON(
         l_cur,
         p_page_start,
         p_page_size
      );
   EXCEPTION
      WHEN OTHERS THEN
         DBMS_SQL.CLOSE_CURSOR(l_cur);
         IF SQLCODE = -1008 THEN
            RAISE_APPLICATION_ERROR(-20001, 'SQL error: ORA-01008: value for bind variable placeholder was not provided. Please check the query and Page Items To Submit. Make sure that all bind variables are added into Page Items to Submit.');
         ELSE
            RAISE;
         END IF;
   END;
   DBMS_SQL.CLOSE_CURSOR(l_cur);
   
   RETURN l_retvalue;
END apex_sqlgraph_json;
/
CREATE OR REPLACE PROCEDURE get_graph_metadata_proc (
  p_graph_name  IN VARCHAR2,
  p_graph_owner IN VARCHAR2,
  p_metadata    OUT CLOB
) AS
BEGIN
  SELECT
    JSON_OBJECT(
      'vertices' VALUE(
        SELECT JSON_ARRAYAGG(
          JSON_OBJECT(
            'labels' VALUE(
              SELECT JSON_ARRAYAGG(el.label_name)
                FROM sys.all_pg_element_labels el
               WHERE el.element_name = e.element_name
                 AND el.graph_name = p_graph_name
                 AND el.owner = p_graph_owner
            ),
                      'properties' VALUE coalesce(
              (
                SELECT JSON_ARRAYAGG(
                  JSON_OBJECT(
                    'name' VALUE p.property_name,
                              'dataType' VALUE
                      CASE
                        WHEN p.data_type IN('INTEGER',
                                            'INT',
                                            'SMALLINT',
                                            'DEC',
                                            'DECIMAL',
                                            'NUMERIC',
                                            'DOUBLE PRECISION',
                                            'FLOAT',
                                            'REAL',
                                            'NUMBER',
                                            'BINARY_FLOAT',
                                            'BINARY_DOUBLE') THEN
                          'number'
                        WHEN p.data_type IN('TIMESTAMP') THEN
                          'timestamp'
                        ELSE
                          'string'
                      END,
                              'limits' VALUE
                      CASE
                        WHEN p.data_char_length > 0 THEN
                          JSON_ARRAY(p.data_char_length)
                        ELSE
                          JSON_ARRAY()
                      END,
                              'mandatory' VALUE(
                      SELECT CASE nullable
                        WHEN 'Y' THEN
                          FALSE
                        WHEN 'N' THEN
                          TRUE
                             END
                        FROM sys.all_tab_columns col
                       WHERE col.column_name = d.column_name
                         AND col.table_name = e.object_name
                    )
                  )
                RETURNING CLOB)
                  FROM sys.all_pg_label_properties p
                 INNER JOIN sys.all_pg_prop_definitions d
                ON(p.property_name = d.property_name
                   AND p.owner = d.owner
                   AND p.graph_name = d.graph_name)
                 WHERE d.element_name = e.element_name
                   AND p.label_name = l.label_name
                   AND p.graph_name = p_graph_name
                   AND p.owner = p_graph_owner
              ),
              JSON_ARRAY(RETURNING CLOB)
            )
          RETURNING CLOB)
        RETURNING CLOB)
          FROM sys.all_pg_elements e
         INNER JOIN sys.all_pg_element_labels l
        ON(e.element_name = l.element_name
           AND e.graph_name = l.graph_name
           AND e.owner = l.owner)
         WHERE e.element_kind = 'VERTEX'
           AND e.graph_name = p_graph_name
           AND e.owner = p_graph_owner
      ),
                'edges' VALUE(
        SELECT JSON_ARRAYAGG(
          JSON_OBJECT(
            'labels' VALUE(
              SELECT JSON_ARRAYAGG(el.label_name)
                FROM sys.all_pg_element_labels el
               WHERE el.element_name = e.element_name
                 AND e.graph_name = p_graph_name
                 AND e.owner = p_graph_owner
            ),
                      'properties' VALUE coalesce(
              (
                SELECT JSON_ARRAYAGG(
                  JSON_OBJECT(
                    'name' VALUE p.property_name,
                              'dataType' VALUE
                      CASE
                        WHEN p.data_type IN('INTEGER',
                                            'INT',
                                            'SMALLINT',
                                            'DEC',
                                            'DECIMAL',
                                            'NUMERIC',
                                            'DOUBLE PRECISION',
                                            'FLOAT',
                                            'REAL',
                                            'NUMBER',
                                            'BINARY_FLOAT',
                                            'BINARY_DOUBLE') THEN
                          'number'
                        WHEN p.data_type IN('TIMESTAMP') THEN
                          'timestamp'
                        ELSE
                          'string'
                      END,
                              'limits' VALUE
                      CASE
                        WHEN p.data_char_length > 0 THEN
                          JSON_ARRAY(p.data_length)
                        ELSE
                          JSON_ARRAY()
                      END,
                              'mandatory' VALUE(
                      SELECT CASE nullable
                        WHEN 'Y' THEN
                          FALSE
                        WHEN 'N' THEN
                          TRUE
                             END
                        FROM sys.all_tab_columns col
                       WHERE col.column_name = d.column_name
                         AND col.table_name = e.object_name
                    )
                  RETURNING CLOB)
                RETURNING CLOB)
                  FROM sys.all_pg_label_properties p
                 INNER JOIN sys.all_pg_prop_definitions d
                ON(p.property_name = d.property_name
                   AND p.owner = d.owner
                   AND p.graph_name = d.graph_name)
                 WHERE d.element_name = e.element_name
                   AND p.label_name = l.label_name
                   AND p.graph_name = p_graph_name
                   AND p.owner = p_graph_owner
              ),
              JSON_ARRAY(RETURNING CLOB)
            ),
                      'sourceVertexLabels' VALUE(
              SELECT JSON_ARRAYAGG(label_name)
                FROM(
                SELECT DISTINCT l.label_name AS label_name
                  FROM sys.all_pg_elements e2
                 INNER JOIN sys.all_pg_element_labels l
                ON e2.element_name = l.element_name
                   AND e2.graph_name = l.graph_name
                   AND e2.owner = l.owner
                 INNER JOIN sys.all_pg_edge_relationships r
                ON r.vertex_tab_name = e2.element_name
                   AND e2.graph_name = r.graph_name
                   AND e2.owner = r.owner
                 WHERE e2.element_kind = 'VERTEX'
                   AND r.graph_name = e.graph_name
                   AND r.edge_tab_name = e.element_name
                   AND edge_end = 'SOURCE'
              )
               FETCH FIRST 1 ROWS ONLY
            ),
                      'targetVertexLabels' VALUE(
              SELECT JSON_ARRAYAGG(label_name)
                FROM(
                SELECT DISTINCT l.label_name AS label_name
                  FROM sys.all_pg_elements e2
                 INNER JOIN sys.all_pg_element_labels l
                ON e2.element_name = l.element_name
                   AND e2.graph_name = l.graph_name
                   AND e2.owner = l.owner
                 INNER JOIN sys.all_pg_edge_relationships r
                ON r.vertex_tab_name = e2.element_name
                   AND e2.graph_name = r.graph_name
                   AND e2.owner = r.owner
                 WHERE e2.element_kind = 'VERTEX'
                   AND r.graph_name = e.graph_name
                   AND r.edge_tab_name = e.element_name
                   AND edge_end = 'DESTINATION'
              )
               FETCH FIRST 1 ROWS ONLY
            )
          RETURNING CLOB)
        RETURNING CLOB)
          FROM sys.all_pg_elements e
         INNER JOIN sys.all_pg_element_labels l
        ON(e.element_name = l.element_name
           AND e.graph_name = l.graph_name
           AND e.owner = l.owner)
         WHERE e.element_kind = 'EDGE'
           AND e.graph_name = p_graph_name
           AND e.owner = p_graph_owner
      )
    RETURNING CLOB)
    INTO p_metadata
    FROM sys.dual;
END get_graph_metadata_proc;
/
/*
  Dynamically compute distinct vertex and edge counts from a user-provided graph query,
  using provided JSON arrays of vertex and edge column names.
  If column names are NULL or empty, return 0 for the respective count.
*/

/*
  Example usage:
  WITH my_table AS (
    SELECT JSON_HASH("ID_V") AS "ID_V",
           JSON_HASH("ID_D") AS "ID_D",
           JSON_HASH("ID_E") AS "ID_E"
    FROM (
      SELECT id_v, id_e, id_d
      FROM GRAPH_TABLE (
        eba_sample_graph
        MATCH (v)-[e]->(d)
        COLUMNS (
          vertex_id(v) as id_v,
          edge_id(e) as id_e,
          vertex_id(d) as id_d
        )
      )
    )
  )
  SELECT JSON_OBJECT(
    'vertexCount' VALUE (
      SELECT COUNT(DISTINCT vertex_id_colum)
      FROM my_table
      UNPIVOT (vertex_id_colum FOR vid IN ("ID_V", "ID_D"))
    ),
    'edgeCount' VALUE (
      SELECT COUNT(DISTINCT edge_id_colum)
      FROM my_table
      UNPIVOT (edge_id_colum FOR eid IN ("ID_E"))
    )
  ) AS counts_json
  FROM DUAL;
*/
CREATE OR REPLACE FUNCTION ORA_SQLGRAPH_GET_COUNTS_QUERY_BUILDER (
  p_query VARCHAR2,
  p_vertex_columns JSON,
  p_edge_columns JSON
) RETURN VARCHAR2 IS
  -- Variables for building dynamic SQL components
  l_select_clause VARCHAR2(32767) := '';
  l_vertex_unpivot_list VARCHAR2(32767) := '';
  l_edge_unpivot_list VARCHAR2(32767) := '';
  l_vertex_unpivot_clause VARCHAR2(32767) := '';
  l_edge_unpivot_clause VARCHAR2(32767) := '';
  l_vertex_count_sql VARCHAR2(32767) := '0';
  l_edge_count_sql VARCHAR2(32767) := '0';
  l_count_query VARCHAR2(32767);
  l_vertex_count NUMBER := 0;
  l_edge_count NUMBER := 0;
  l_vertex_array JSON_ARRAY_T;
  l_edge_array JSON_ARRAY_T;
  l_col_name VARCHAR2(4000);
BEGIN
  -- Parse vertex columns JSON if provided
  IF p_vertex_columns IS NOT NULL THEN
    BEGIN
      l_vertex_array := JSON_ARRAY_T(p_vertex_columns);
      l_vertex_count := l_vertex_array.get_size();
    EXCEPTION
      WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Invalid JSON for p_vertex_columns: ' || SQLERRM);
    END;
  END IF;

  -- Parse edge columns JSON if provided
  IF p_edge_columns IS NOT NULL THEN
    BEGIN
      l_edge_array := JSON_ARRAY_T(p_edge_columns);
      l_edge_count := l_edge_array.get_size();
    EXCEPTION
      WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20003, 'Invalid JSON for p_edge_columns: ' || SQLERRM);
    END;
  END IF;

  -- Early return query if no columns provided for both vertices and edges
  IF l_vertex_count = 0 AND l_edge_count = 0 THEN
    RETURN 'SELECT JSON_OBJECT(''vertexCount'' VALUE 0, ''edgeCount'' VALUE 0) AS counts_json FROM DUAL';
  END IF;

  -- Build SELECT clause and unpivot list for vertex columns
  IF l_vertex_count > 0 THEN
    FOR i IN 0 .. l_vertex_count - 1 LOOP
      l_col_name := l_vertex_array.get_string(i);
      l_select_clause := l_select_clause || 'JSON_HASH(' || DBMS_ASSERT.ENQUOTE_NAME(l_col_name, FALSE) || ') AS ' || DBMS_ASSERT.ENQUOTE_NAME(l_col_name, TRUE) || ', ';
      l_vertex_unpivot_list := l_vertex_unpivot_list || DBMS_ASSERT.ENQUOTE_NAME(l_col_name, TRUE) || ',';
    END LOOP;
    l_vertex_unpivot_list := RTRIM(l_vertex_unpivot_list, ',');
    l_vertex_unpivot_clause := 'UNPIVOT (vertex_id_colum FOR vid IN (' || l_vertex_unpivot_list || '))';
    l_vertex_count_sql := 'SELECT COUNT(DISTINCT vertex_id_colum) FROM my_table ' || l_vertex_unpivot_clause;
  END IF;

  -- Build SELECT clause and unpivot list for edge columns
  IF l_edge_count > 0 THEN
    FOR i IN 0 .. l_edge_count - 1 LOOP
      l_col_name := l_edge_array.get_string(i);
      l_select_clause := l_select_clause || 'JSON_HASH(' || DBMS_ASSERT.ENQUOTE_NAME(l_col_name, FALSE) || ') AS ' || DBMS_ASSERT.ENQUOTE_NAME(l_col_name, TRUE) || ', ';
      l_edge_unpivot_list := l_edge_unpivot_list || DBMS_ASSERT.ENQUOTE_NAME(l_col_name, TRUE) || ',';
    END LOOP;
    l_edge_unpivot_list := RTRIM(l_edge_unpivot_list, ',');
    l_edge_unpivot_clause := 'UNPIVOT (edge_id_colum FOR eid IN (' || l_edge_unpivot_list || '))';
    l_edge_count_sql := 'SELECT COUNT(DISTINCT edge_id_colum) FROM my_table ' || l_edge_unpivot_clause;
  END IF;

  -- Remove trailing comma from SELECT clause
  l_select_clause := RTRIM(l_select_clause, ', ');

  -- Construct the full dynamic count query
  l_count_query := 'WITH my_table AS ( SELECT ' || l_select_clause ||
                   ' FROM ( ' || p_query ||
                   ' ) )' ||
                   'SELECT JSON_OBJECT( ' ||
                   '''vertexCount'' VALUE (' || l_vertex_count_sql || '), ' ||
                   '''edgeCount'' VALUE (' || l_edge_count_sql || ') ' ||
                   ') AS counts_json ' ||
                   'FROM DUAL';

  RETURN l_count_query;
END ORA_SQLGRAPH_GET_COUNTS_QUERY_BUILDER;
/

CREATE OR REPLACE FUNCTION APEX_SQLGRAPH_GET_COUNTS (
  p_query VARCHAR2,
  p_vertex_columns JSON,
  p_edge_columns JSON,
  p_bind_items VARCHAR2 DEFAULT NULL
) RETURN CLOB IS
  l_count_query VARCHAR2(32767);
  l_result CLOB;
  l_cur NUMBER;
  l_cur_id NUMBER;
  l_item VARCHAR2(4000);
BEGIN
  -- Validate required input
  IF p_query IS NULL THEN
    RAISE_APPLICATION_ERROR(-20000, 'p_query must be provided.');
  END IF;

  l_count_query := ora_sqlgraph_get_counts_query_builder(p_query, p_vertex_columns, p_edge_columns);

  -- Execute the dynamic query using DBMS_SQL to allow binding
  l_cur := DBMS_SQL.OPEN_CURSOR;
  DBMS_SQL.PARSE(
    l_cur,
    l_count_query,
    DBMS_SQL.NATIVE
  );

  IF p_bind_items IS NOT NULL THEN
    FOR i IN 1..REGEXP_COUNT(p_bind_items, ',') + 1 LOOP
      l_item := REGEXP_SUBSTR(p_bind_items, '[^,]+', 1, i);
      DBMS_SQL.BIND_VARIABLE(
        l_cur,
        ':' || l_item,
        V(l_item)
      );
    END LOOP;
  END IF;

  -- Define column and fetch the result
  DBMS_SQL.DEFINE_COLUMN(l_cur, 1, EMPTY_CLOB());
  l_cur_id := DBMS_SQL.EXECUTE(l_cur);
  IF DBMS_SQL.FETCH_ROWS(l_cur) > 0 THEN
    DBMS_SQL.COLUMN_VALUE(l_cur, 1, l_result);
  END IF;

  DBMS_SQL.CLOSE_CURSOR(l_cur);

  RETURN l_result;
EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20001, 'Error executing count query: ' || SQLERRM || ' Query: ' || l_count_query);
END APEX_SQLGRAPH_GET_COUNTS;
/
