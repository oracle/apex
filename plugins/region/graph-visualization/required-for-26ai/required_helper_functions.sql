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