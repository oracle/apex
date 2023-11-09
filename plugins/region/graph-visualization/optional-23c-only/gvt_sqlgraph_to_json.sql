-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- DBMS_GVT Package Specification
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
 
CREATE OR REPLACE PACKAGE DBMS_GVT
  AUTHID CURRENT_USER IS
 -----------------------------------------------------------------------------
 -- VERTEX_LATERAL_STRING - prepare vertex query string in LATERAL()
 -----------------------------------------------------------------------------
  FUNCTION PROPERTIES_LATERAL_STRING (
    DB_TABLE_NAME_LIST SYS.ODCIVARCHAR2LIST,
    DB_OBJECT_OWNER_LIST SYS.ODCIVARCHAR2LIST,
    GRAPH_VIZ_TABLE_NAME IN VARCHAR2,
    VERTEX_ID_COL_NAME IN VARCHAR2,
    GRAPHNAME IN VARCHAR2,
    GRAPHOWNER IN VARCHAR2,
    ELEMENT_TYPE IN VARCHAR2
  ) RETURN VARCHAR2;
 -----------------------------------------------------------------------------
 -- EDGE_LATERAL_STRING - prepare edge query string in LATERAL()
 -----------------------------------------------------------------------------
  FUNCTION EDGE_LATERAL_STRING (
    DB_TABLE_NAME_LIST SYS.ODCIVARCHAR2LIST,
    DB_OBJECT_OWNER_LIST SYS.ODCIVARCHAR2LIST,
    EDGE_ELEMENT_NAME SYS.ODCIVARCHAR2LIST,
    GRAPH_VIZ_TABLE_NAME IN VARCHAR2,
    EDGE_ID_COL_NAME IN VARCHAR2,
    GRAPHNAME IN VARCHAR2,
    GRAPHOWNER IN VARCHAR2
  ) RETURN CLOB;

  FUNCTION GET_VERSION RETURN VARCHAR2;
END DBMS_GVT;
/
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- DBMS_GVT Package Specification
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE BODY DBMS_GVT IS
  M_VCSIZ_4K  CONSTANT PLS_INTEGER := 4000;
  M_VCSIZ_32K CONSTANT PLS_INTEGER := 32672;
 -----------------------------------------------------------------------------
 -- VERTEX_LATERAL_STRING - prepare vertex query string in LATERAL()
 -----------------------------------------------------------------------------
  FUNCTION PROPERTIES_LATERAL_STRING (
    DB_TABLE_NAME_LIST SYS.ODCIVARCHAR2LIST,
    DB_OBJECT_OWNER_LIST SYS.ODCIVARCHAR2LIST,
    GRAPH_VIZ_TABLE_NAME IN VARCHAR2,
    VERTEX_ID_COL_NAME IN VARCHAR2,
    GRAPHNAME IN VARCHAR2,
    GRAPHOWNER IN VARCHAR2,
    ELEMENT_TYPE IN VARCHAR2
  ) RETURN VARCHAR2 IS
 /*
    This function is to prepare query string for property names. This query string will be in LATERAL():
    SELECT
                JSON_OBJECT('SAL' VALUE X.SAL,
                'AGE' VALUE X.AGE ABSENT
                ON NULL)                                                       AS PROPERTIES
            FROM
                HR.VERTEX_3 X
            WHERE
                JSON_VALUE(VT.COLUMN_VALUE,
                '$.ELEM_TABLE') = 'VERTEX_3'
                AND X.V_ID= JSON_VALUE(VT.COLUMN_VALUE,
                '$.KEY_VALUE.V_ID') UNION
                SELECT
                    JSON_OBJECT('AGE' VALUE X.AGE,
                    'SAL' VALUE X.SAL ABSENT
                    ON NULL)                                                       AS PROPERTIES
                FROM
                    HR.VERTEX_1 X
                WHERE
                    JSON_VALUE(VT.COLUMN_VALUE,
                    '$.ELEM_TABLE') = 'VERTEX_1'
                    AND X.V_ID= JSON_VALUE(VT.COLUMN_VALUE,
                    '$.KEY_VALUE.V_ID') UNION
                    SELECT
                        JSON_OBJECT('AGE' VALUE X.AGE ABSENT
                        ON NULL)                                                       AS PROPERTIES
                    FROM
                        HR.VERTEX_2 X
                    WHERE
                        JSON_VALUE(VT.COLUMN_VALUE,
                        '$.ELEM_TABLE') = 'VERTEX_2'
                        AND X.V_ID= JSON_VALUE(VT.COLUMN_VALUE,
                        '$.KEY_VALUE.V_ID')
  */
    LATERAL_QUERY_STRING               CLOB := '';
    IDX1                               INT;
    IDX2                               INT;
    IDX3                               INT;
    IDX4                               INT;
    IDX5                               INT;
    COLUMN_NAMES                       SYS.ODCIVARCHAR2LIST;
    OBJECT_NAMES                       SYS.ODCIVARCHAR2LIST;
    PROPERTY_NAMES                     SYS.ODCIVARCHAR2LIST;
    TYPE STRING_LIST_TYPE IS
      TABLE OF VARCHAR2(M_VCSIZ_4K) INDEX BY PLS_INTEGER;
    TYPE VARCHARLIST_TABLE IS
      TABLE OF STRING_LIST_TYPE INDEX BY VARCHAR2(M_VCSIZ_4K);
    TYPE STRING_INDEX_BY_STRING IS
      TABLE OF VARCHAR2(M_VCSIZ_4K) INDEX BY VARCHAR(M_VCSIZ_4K);
    TYPE STRING_TO_MAP_TYPE IS
      TABLE OF STRING_INDEX_BY_STRING INDEX BY VARCHAR(M_VCSIZ_4K);
    DB_TABLE_COLUMN_NAME               VARCHARLIST_TABLE; --map structure
    DB_TABLE_PROPERTY_NAME             VARCHARLIST_TABLE; --map structure
    OBJECT_TO_PRIMARY_KEY_LIST_TABLE   VARCHARLIST_TABLE; --map structure
    SELECTED_COL_STRING                VARCHAR2(M_VCSIZ_4K);
    COLUMN_EXPRESSION                  VARCHAR2(M_VCSIZ_4K);
    COLUMN_NAME                        VARCHAR2(M_VCSIZ_4K);
    PROPERTY_NAME                      VARCHAR2(M_VCSIZ_4K);
    ELEMENTNAMES                       SYS.ODCIVARCHAR2LIST;
    ELEMENTNAME                        VARCHAR2(M_VCSIZ_4K);
    PRIMARY_KEY_LIST                   SYS.ODCIVARCHAR2LIST;
    JSON_CONDITION_STRING              VARCHAR2(M_VCSIZ_4K);
    ALL_QUERY_STRING                   CLOB := '';
    COLUMN_EXPRESSIONS                 SYS.ODCIVARCHAR2LIST;
    COLUMN_EXPRESSION_LIST             VARCHARLIST_TABLE;
    DATA_TYPES                         SYS.ODCIVARCHAR2LIST;
    P1                                 INT;
    COLUMN_NAMES_FOR_EACH_OBJECT       STRING_LIST_TYPE;
    PROPERTY_NAMES_FOR_EACH_OBJECT     STRING_LIST_TYPE;
    COLUMN_EXPRESSIONS_FOR_EACH_OBJECT STRING_LIST_TYPE;
    PRIMARY_KEY_LIST_FOR_EACH_OBJECT   STRING_LIST_TYPE;
    OBJECT_TO_ELEMENT_MAP              STRING_INDEX_BY_STRING; --map structure
    OBJECT_COL_DATA_TYPE_MAP           STRING_TO_MAP_TYPE;
    COL_TO_DATA_TYPE                   STRING_INDEX_BY_STRING;
  BEGIN
 -- To prepare this string, we need to know all the underlying tables and the column name (column expression if any) for all the properties for the quried graph vertices
 -- get all object table name, property name and column expression for all the vertices of the quired graph owner and graph name, ordered by the table name
    SELECT
      OBJECT_NAME,
      LABEL_PROPERTIES.PROPERTY_NAME,
      COLUMN_NAME,
      PROP_DEFINITIONS.COLUMN_EXPR BULK COLLECT INTO OBJECT_NAMES,
      PROPERTY_NAMES,
      COLUMN_NAMES,
      COLUMN_EXPRESSIONS
    FROM
      SYS.ALL_PG_ELEMENTS         ELEMENTS
      INNER JOIN SYS.ALL_PG_ELEMENT_LABELS ELEM_LABELS
      ON (ELEMENTS.ELEMENT_NAME = ELEM_LABELS.ELEMENT_NAME
      AND ELEMENTS.OWNER = ELEM_LABELS.OWNER
      AND ELEMENTS.GRAPH_NAME = ELEM_LABELS.GRAPH_NAME)
      INNER JOIN SYS.ALL_PG_LABEL_PROPERTIES LABEL_PROPERTIES
      ON (ELEM_LABELS.LABEL_NAME = LABEL_PROPERTIES.LABEL_NAME
      AND ELEM_LABELS.OWNER = LABEL_PROPERTIES.OWNER
      AND ELEM_LABELS.GRAPH_NAME = LABEL_PROPERTIES.GRAPH_NAME)
      INNER JOIN SYS.ALL_PG_PROP_DEFINITIONS PROP_DEFINITIONS
      ON (PROP_DEFINITIONS.PROPERTY_NAME = LABEL_PROPERTIES.PROPERTY_NAME
      AND PROP_DEFINITIONS.ELEMENT_NAME = ELEMENTS.ELEMENT_NAME
      AND ELEMENTS.GRAPH_NAME = PROP_DEFINITIONS.GRAPH_NAME)
    WHERE
      ELEMENTS.ELEMENT_KIND = ELEMENT_TYPE
      AND ELEMENTS.GRAPH_NAME = GRAPHNAME
      AND ELEMENTS.OWNER = GRAPHOWNER
    ORDER BY
      OBJECT_NAME, LABEL_PROPERTIES.PROPERTY_NAME;
      
    IF DB_TABLE_NAME_LIST.COUNT = 0 THEN
      RETURN 'SELECT NULL AS PROPERTIES FROM DUAL';
    END IF;
 /*
    db_table_property_name(map, indexed by underlyting db table name/object name) -> In each entry, the value is property_names_for_each_object(array)
    column_expression_list(map, indexed by underlyting db table name/object name) -> In each entry, the value is column_names_for_each_object(array)
    */
    FOR IDX1 IN 1..OBJECT_NAMES.COUNT LOOP
      IF IDX1 = 1 THEN
        COLUMN_NAMES_FOR_EACH_OBJECT := NEW STRING_LIST_TYPE();
        PROPERTY_NAMES_FOR_EACH_OBJECT := NEW STRING_LIST_TYPE();
        P1 := 1;
        COLUMN_NAMES_FOR_EACH_OBJECT(P1) := COLUMN_NAMES(IDX1);
        PROPERTY_NAMES_FOR_EACH_OBJECT(P1) := PROPERTY_NAMES(IDX1);
        COLUMN_EXPRESSIONS_FOR_EACH_OBJECT := NEW STRING_LIST_TYPE();
        COLUMN_EXPRESSIONS_FOR_EACH_OBJECT(P1) := COLUMN_EXPRESSIONS(IDX1);
        P1 := P1 + 1;
      ELSE
        IF OBJECT_NAMES(IDX1) = OBJECT_NAMES(IDX1 - 1) THEN
          IF PROPERTY_NAMES(IDX1) != PROPERTY_NAMES(IDX1-1) THEN
            COLUMN_NAMES_FOR_EACH_OBJECT(P1) := COLUMN_NAMES(IDX1);
            PROPERTY_NAMES_FOR_EACH_OBJECT(P1) := PROPERTY_NAMES(IDX1);
            COLUMN_EXPRESSIONS_FOR_EACH_OBJECT(P1) := COLUMN_EXPRESSIONS(IDX1);
            P1 := P1 + 1;
          END IF;
        ELSE
          DB_TABLE_COLUMN_NAME(OBJECT_NAMES(IDX1 - 1)) := COLUMN_NAMES_FOR_EACH_OBJECT;
          DB_TABLE_PROPERTY_NAME(OBJECT_NAMES(IDX1 - 1)) := PROPERTY_NAMES_FOR_EACH_OBJECT;
          COLUMN_EXPRESSION_LIST(OBJECT_NAMES(IDX1 - 1)) := COLUMN_EXPRESSIONS_FOR_EACH_OBJECT;
          COLUMN_NAMES_FOR_EACH_OBJECT := NEW STRING_LIST_TYPE();
          PROPERTY_NAMES_FOR_EACH_OBJECT := NEW STRING_LIST_TYPE();
          P1 := 1;
          COLUMN_NAMES_FOR_EACH_OBJECT(P1) := COLUMN_NAMES(IDX1);
          PROPERTY_NAMES_FOR_EACH_OBJECT(P1) := PROPERTY_NAMES(IDX1);
          COLUMN_EXPRESSIONS_FOR_EACH_OBJECT := NEW STRING_LIST_TYPE();
          COLUMN_EXPRESSIONS_FOR_EACH_OBJECT(P1) := COLUMN_EXPRESSIONS(IDX1);
          P1 := P1 + 1;
        END IF;
      END IF;
      IF IDX1 = OBJECT_NAMES.COUNT THEN
        DB_TABLE_COLUMN_NAME(OBJECT_NAMES(IDX1)) := COLUMN_NAMES_FOR_EACH_OBJECT;
        DB_TABLE_PROPERTY_NAME(OBJECT_NAMES(IDX1)) := PROPERTY_NAMES_FOR_EACH_OBJECT;
        COLUMN_EXPRESSION_LIST(OBJECT_NAMES(IDX1)) := COLUMN_EXPRESSIONS_FOR_EACH_OBJECT;
      END IF;
    END LOOP;
 -- pair object name(underlying db table name) to element name(vertex name)
 -- object_to_element_map (map, indexed by object name) -> each entry is element name (vertex name)
    SELECT
      DISTINCT OBJECT_NAME,
      ELEM_LABELS.ELEMENT_NAME BULK COLLECT INTO OBJECT_NAMES,
      ELEMENTNAMES
    FROM
      SYS.ALL_PG_ELEMENTS         ELEMENTS
      INNER JOIN SYS.ALL_PG_ELEMENT_LABELS ELEM_LABELS
      ON (ELEMENTS.ELEMENT_NAME = ELEM_LABELS.ELEMENT_NAME
      AND ELEMENTS.OWNER = ELEM_LABELS.OWNER
      AND ELEMENTS.GRAPH_NAME = ELEM_LABELS.GRAPH_NAME
      AND ELEMENTS.ELEMENT_NAME = ELEM_LABELS.ELEMENT_NAME)
      INNER JOIN SYS.ALL_PG_LABEL_PROPERTIES LABEL_PROPERTIES
      ON (ELEM_LABELS.LABEL_NAME = LABEL_PROPERTIES.LABEL_NAME
      AND ELEM_LABELS.OWNER = LABEL_PROPERTIES.OWNER
      AND ELEM_LABELS.GRAPH_NAME = LABEL_PROPERTIES.GRAPH_NAME)
      INNER JOIN SYS.ALL_PG_PROP_DEFINITIONS PROP_DEFINITIONS
      ON (PROP_DEFINITIONS.PROPERTY_NAME = LABEL_PROPERTIES.PROPERTY_NAME
      AND PROP_DEFINITIONS.ELEMENT_NAME = ELEMENTS.ELEMENT_NAME
      AND ELEMENTS.GRAPH_NAME = PROP_DEFINITIONS.GRAPH_NAME)
    WHERE
      ELEMENTS.ELEMENT_KIND = ELEMENT_TYPE
      AND ELEMENTS.GRAPH_NAME = GRAPHNAME
      AND ELEMENTS.OWNER = GRAPHOWNER
    ORDER BY
      OBJECT_NAME;
    FOR IDX1 IN 1..OBJECT_NAMES.COUNT LOOP
      OBJECT_TO_ELEMENT_MAP(OBJECT_NAMES(IDX1)) := ELEMENTNAMES(IDX1);
    END LOOP;
 -- get object name, column names and data types for each object
    SELECT
      OBJECT_NAME,
      KEYS.COLUMN_NAME,
      DATA_TYPE BULK COLLECT INTO OBJECT_NAMES,
      PRIMARY_KEY_LIST,
      DATA_TYPES
    FROM
      SYS.ALL_PG_KEYS     KEYS
      INNER JOIN SYS.ALL_PG_ELEMENTS ELEMENTS
      ON ELEMENTS.ELEMENT_NAME = KEYS.ELEMENT_NAME
      INNER JOIN ALL_TAB_COLUMNS
      ON ALL_TAB_COLUMNS.OWNER = ELEMENTS.OBJECT_OWNER
    WHERE
      ELEMENT_KIND = ELEMENT_TYPE
      AND KEYS.GRAPH_NAME = GRAPHNAME
      AND ELEMENTS.OWNER = GRAPHOWNER
      AND ALL_TAB_COLUMNS.TABLE_NAME = OBJECT_NAME
      AND ALL_TAB_COLUMNS.COLUMN_NAME = KEYS.COLUMN_NAME
      AND KEYS.GRAPH_NAME = ELEMENTS.GRAPH_NAME
    ORDER BY
      OBJECT_NAME;
 -- object_to_primary_key_list_table(map, indexed by object name) -> each entry is a list of primary keys
 -- object_col_data_type_map (map, indexed by object name) -> each entry is a map, col_to_data_type (map, indexed by primary key)
    FOR IDX1 IN 1..OBJECT_NAMES.COUNT LOOP
      IF IDX1 = 1 THEN
        PRIMARY_KEY_LIST_FOR_EACH_OBJECT := NEW STRING_LIST_TYPE();
        P1 := 1;
        PRIMARY_KEY_LIST_FOR_EACH_OBJECT(P1) := PRIMARY_KEY_LIST(IDX1);
        COL_TO_DATA_TYPE := NEW STRING_INDEX_BY_STRING();
        COL_TO_DATA_TYPE(PRIMARY_KEY_LIST(IDX1)) := DATA_TYPES(IDX1);
        P1 := P1 + 1;
      ELSE
        IF OBJECT_NAMES(IDX1) = OBJECT_NAMES(IDX1 - 1) THEN
          PRIMARY_KEY_LIST_FOR_EACH_OBJECT(P1) := PRIMARY_KEY_LIST(IDX1);
          COL_TO_DATA_TYPE(PRIMARY_KEY_LIST(IDX1)) := DATA_TYPES(IDX1);
          P1 := P1 + 1;
        ELSE
          OBJECT_TO_PRIMARY_KEY_LIST_TABLE(OBJECT_NAMES(IDX1 - 1)) := PRIMARY_KEY_LIST_FOR_EACH_OBJECT;
          OBJECT_COL_DATA_TYPE_MAP(OBJECT_NAMES(IDX1 - 1)) := COL_TO_DATA_TYPE;
          PRIMARY_KEY_LIST_FOR_EACH_OBJECT := NEW STRING_LIST_TYPE();
          P1 := 1;
          PRIMARY_KEY_LIST_FOR_EACH_OBJECT(P1) := PRIMARY_KEY_LIST(IDX1);
          COL_TO_DATA_TYPE := NEW STRING_INDEX_BY_STRING();
          COL_TO_DATA_TYPE(PRIMARY_KEY_LIST(IDX1)) := DATA_TYPES(IDX1);
          P1 := P1 + 1;
        END IF;
      END IF;
      IF IDX1 = OBJECT_NAMES.COUNT THEN
        OBJECT_TO_PRIMARY_KEY_LIST_TABLE(OBJECT_NAMES(IDX1)) := PRIMARY_KEY_LIST_FOR_EACH_OBJECT;
        OBJECT_COL_DATA_TYPE_MAP(OBJECT_NAMES(IDX1)) := COL_TO_DATA_TYPE;
      END IF;
    END LOOP;
 /*
    for each underlying db table, we need one SELECT statement
    SELECT
                JSON_OBJECT('SAL' VALUE X.SAL,
                'AGE' VALUE X.AGE ABSENT
                ON NULL)                                                       AS PROPERTIES
            FROM
                HR.VERTEX_3 X
            WHERE
                JSON_VALUE(VT.COLUMN_VALUE,
                '$.ELEM_TABLE') = 'VERTEX_3'
                AND X.V_ID= JSON_VALUE(VT.COLUMN_VALUE,
                '$.KEY_VALUE.V_ID')
    */
    FOR IDX1 IN 1..DB_TABLE_NAME_LIST.COUNT LOOP
      LATERAL_QUERY_STRING := 'SELECT JSON_OBJECT(';
 --construct selected columns
      SELECTED_COL_STRING := '';
      FOR IDX2 IN 1..DB_TABLE_NAME_LIST.COUNT LOOP
        IF IDX1 = IDX2 THEN
 --x.col_name as property_name
          FOR IDX4 IN 1..DB_TABLE_PROPERTY_NAME(DB_TABLE_NAME_LIST(IDX2)).COUNT LOOP
            COLUMN_NAME := DB_TABLE_COLUMN_NAME(DB_TABLE_NAME_LIST(IDX2))(IDX4);
            COLUMN_EXPRESSION := COLUMN_EXPRESSION_LIST(DB_TABLE_NAME_LIST(IDX2))(IDX4);
 -- we add 'num_' ahead of property name to distingush same column names for different tables
    /* SELECT
                JSON_OBJECT('SAL' VALUE X.SAL,
                'AGE' VALUE X.AGE ABSENT
                ON NULL)                                                       AS PROPERTIES
        */
            IF COLUMN_EXPRESSION IS NULL THEN
              SELECTED_COL_STRING := SELECTED_COL_STRING
                                     || ''''
                                     || DB_TABLE_PROPERTY_NAME(DB_TABLE_NAME_LIST(IDX2))(IDX4)
                                     || ''''
                                     || ' VALUE '
                                     || 'x."'
                                     || COLUMN_NAME
                                     || '"';
              IF ( IDX4 = DB_TABLE_PROPERTY_NAME(DB_TABLE_NAME_LIST(IDX2)).COUNT) THEN
                SELECTED_COL_STRING := SELECTED_COL_STRING
                                       || ' ';
              ELSE
                SELECTED_COL_STRING := SELECTED_COL_STRING
                                       || ', ';
              END IF;
            ELSE
              SELECTED_COL_STRING := SELECTED_COL_STRING
                                     || ''''
                                     || DB_TABLE_PROPERTY_NAME(DB_TABLE_NAME_LIST(IDX2))(IDX4)
                                     || ''''
                                     || ' VALUE '
                                     || COLUMN_EXPRESSION
                                     || '';
              IF ( IDX4 = DB_TABLE_PROPERTY_NAME(DB_TABLE_NAME_LIST(IDX2)).COUNT) THEN
                SELECTED_COL_STRING := SELECTED_COL_STRING
                                       || ' ';
              ELSE
                SELECTED_COL_STRING := SELECTED_COL_STRING
                                       || ', ';
              END IF;
            END IF;
          END LOOP;
        END IF;
      END LOOP;
      SELECTED_COL_STRING := SELECTED_COL_STRING
                             || 'ABSENT ON NULL) AS properties';
      JSON_CONDITION_STRING := '';
 --X.V_ID= JSON_VALUE(VT.COLUMN_VALUE, '$.KEY_VALUE.V_ID')
      FOR IDX5 IN 1..OBJECT_TO_PRIMARY_KEY_LIST_TABLE(DB_TABLE_NAME_LIST(IDX1)).COUNT LOOP
 -- cast date string if the data type is date
        IF (OBJECT_COL_DATA_TYPE_MAP(DB_TABLE_NAME_LIST(IDX1))(OBJECT_TO_PRIMARY_KEY_LIST_TABLE(DB_TABLE_NAME_LIST(IDX1))(IDX5)) = 'DATE'
        OR OBJECT_COL_DATA_TYPE_MAP(DB_TABLE_NAME_LIST(IDX1))(OBJECT_TO_PRIMARY_KEY_LIST_TABLE(DB_TABLE_NAME_LIST(IDX1))(IDX5)) LIKE 'TIMESTAMP%') THEN
          JSON_CONDITION_STRING := JSON_CONDITION_STRING
                                   || 'x."'
                                   || OBJECT_TO_PRIMARY_KEY_LIST_TABLE(DB_TABLE_NAME_LIST(IDX1))(IDX5)
                                   || '"= to_date(json_value('
                                   || GRAPH_VIZ_TABLE_NAME
                                   || '.'
                                   || VERTEX_ID_COL_NAME
                                   || ', ''$.KEY_VALUE."'
                                   || OBJECT_TO_PRIMARY_KEY_LIST_TABLE(DB_TABLE_NAME_LIST(IDX1))(IDX5)
                                   || '"''), ''yyyy-mm-dd"t"hh24:mi:ss'' )';
        ELSE
          JSON_CONDITION_STRING := JSON_CONDITION_STRING
                                   || 'x.'
                                   || OBJECT_TO_PRIMARY_KEY_LIST_TABLE(DB_TABLE_NAME_LIST(IDX1))(IDX5)
                                   || '= JSON_VALUE('
                                   || GRAPH_VIZ_TABLE_NAME
                                   || '.'
                                   || VERTEX_ID_COL_NAME
                                   || ', ''$.KEY_VALUE."'
                                   || OBJECT_TO_PRIMARY_KEY_LIST_TABLE(DB_TABLE_NAME_LIST(IDX1))(IDX5)
                                   || '"'')';
        END IF;
        IF (IDX5 = OBJECT_TO_PRIMARY_KEY_LIST_TABLE(DB_TABLE_NAME_LIST(IDX1)).COUNT) THEN
          JSON_CONDITION_STRING := JSON_CONDITION_STRING
                                   || '';
        ELSE
          JSON_CONDITION_STRING := JSON_CONDITION_STRING
                                   || ' and ';
        END IF;
      END LOOP;
 --JSON_VALUE(VT.COLUMN_VALUE, '$.ELEM_TABLE') = 'VERTEX_1'
      LATERAL_QUERY_STRING := LATERAL_QUERY_STRING
                              || SELECTED_COL_STRING
                              || ' FROM "'
                              || DB_OBJECT_OWNER_LIST(IDX1)
                              || '"."'
                              || DB_TABLE_NAME_LIST(IDX1)
                              || '" x WHERE JSON_VALUE('
                              || GRAPH_VIZ_TABLE_NAME
                              || '.'
                              || VERTEX_ID_COL_NAME
                              || ', ''$.ELEM_TABLE'') = '''
                              || OBJECT_TO_ELEMENT_MAP(DB_TABLE_NAME_LIST(IDX1))
                              || ''' AND '
                              || JSON_CONDITION_STRING;
      ALL_QUERY_STRING := ALL_QUERY_STRING
                          || LATERAL_QUERY_STRING
                          || ' ';
      IF (IDX1 = DB_TABLE_NAME_LIST.COUNT) THEN
        ALL_QUERY_STRING := ALL_QUERY_STRING
                            || ' ';
      ELSE
        ALL_QUERY_STRING := ALL_QUERY_STRING
                            || 'union ';
      END IF;
    END LOOP;
    RETURN ALL_QUERY_STRING;
  END PROPERTIES_LATERAL_STRING;
 -----------------------------------------------------------------------------
 -- EDGE_LATERAL_STRING - prepare edge query string in LATERAL() id_table
 -----------------------------------------------------------------------------
  FUNCTION EDGE_LATERAL_STRING (
    DB_TABLE_NAME_LIST SYS.ODCIVARCHAR2LIST,
    DB_OBJECT_OWNER_LIST SYS.ODCIVARCHAR2LIST,
    EDGE_ELEMENT_NAME SYS.ODCIVARCHAR2LIST,
    GRAPH_VIZ_TABLE_NAME IN VARCHAR2,
    EDGE_ID_COL_NAME IN VARCHAR2,
    GRAPHNAME IN VARCHAR2,
    GRAPHOWNER IN VARCHAR2
  ) RETURN CLOB IS
 /*
    This function is to prepare string similar to below:
    SELECT
    'VERTEX_1' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID ) AS SOURCE,
    'VERTEX_3' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID ) AS TARGET
FROM
    HR.EDGE_1_3   EDGE_TABLE,
    HR.VERTEX_1   SRC_TABLE,
    HR.VERTEX_3   DST_TABLE
WHERE
    JSON_VALUE(ET.COLUMN_VALUE,
    '$.ELEM_TABLE') ='EDGE_1_3'
    AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
    '$.KEY_VALUE.E_DST')
    AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
    '$.KEY_VALUE.E_SRC')
    AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
    AND EDGE_TABLE.E_DST= DST_TABLE.V_ID UNION
    SELECT
        'VERTEX_1' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID ) AS SOURCE,
        'VERTEX_2' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID ) AS TARGET
    FROM
        HR.EDGE_1_2   EDGE_TABLE,
        HR.VERTEX_1   SRC_TABLE,
        HR.VERTEX_2   DST_TABLE
    WHERE
        JSON_VALUE(ET.COLUMN_VALUE,
        '$.ELEM_TABLE') ='EDGE_1_2'
        AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
        '$.KEY_VALUE.E_SRC')
        AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
        '$.KEY_VALUE.E_DST')
        AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
        AND EDGE_TABLE.E_DST= DST_TABLE.V_ID UNION
        SELECT
            'VERTEX_1' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID ) AS SOURCE,
            'VERTEX_1' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID ) AS TARGET
        FROM
            HR.EDGE_1_1_B EDGE_TABLE,
            HR.VERTEX_1   SRC_TABLE,
            HR.VERTEX_1   DST_TABLE
        WHERE
            JSON_VALUE(ET.COLUMN_VALUE,
            '$.ELEM_TABLE') ='EDGE_1_1_B'
            AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
            '$.KEY_VALUE.E_SRC')
            AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
            '$.KEY_VALUE.E_SRC')
            AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
            '$.KEY_VALUE.E_DST')
            AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
            '$.KEY_VALUE.E_DST')
            AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
            AND EDGE_TABLE.E_DST= DST_TABLE.V_ID UNION
            SELECT
                'VERTEX_1' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID ) AS SOURCE,
                'VERTEX_1' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID ) AS TARGET
            FROM
                HR.EDGE_1_1_B EDGE_TABLE,
                HR.VERTEX_1   SRC_TABLE,
                HR.VERTEX_1   DST_TABLE
            WHERE
                JSON_VALUE(ET.COLUMN_VALUE,
                '$.ELEM_TABLE') ='EDGE_1_1_B'
                AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                '$.KEY_VALUE.E_SRC')
                AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                '$.KEY_VALUE.E_SRC')
                AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                '$.KEY_VALUE.E_DST')
                AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                '$.KEY_VALUE.E_DST')
                AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
                AND EDGE_TABLE.E_DST= DST_TABLE.V_ID UNION
                SELECT
                    'VERTEX_2' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID ) AS SOURCE,
                    'VERTEX_1' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID ) AS TARGET
                FROM
                    HR.EDGE_2_1   EDGE_TABLE,
                    HR.VERTEX_2   SRC_TABLE,
                    HR.VERTEX_1   DST_TABLE
                WHERE
                    JSON_VALUE(ET.COLUMN_VALUE,
                    '$.ELEM_TABLE') ='EDGE_2_1'
                    AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                    '$.KEY_VALUE.E_DST')
                    AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                    '$.KEY_VALUE.E_SRC')
                    AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
                    AND EDGE_TABLE.E_DST= DST_TABLE.V_ID UNION
                    SELECT
                        'VERTEX_1' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID ) AS SOURCE,
                        'VERTEX_1' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID ) AS TARGET
                    FROM
                        HR.EDGE_1_1_A EDGE_TABLE,
                        HR.VERTEX_1   SRC_TABLE,
                        HR.VERTEX_1   DST_TABLE
                    WHERE
                        JSON_VALUE(ET.COLUMN_VALUE,
                        '$.ELEM_TABLE') ='EDGE_1_1_A'
                        AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                        '$.KEY_VALUE.E_SRC')
                        AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                        '$.KEY_VALUE.E_DST')
                        AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                        '$.KEY_VALUE.E_SRC')
                        AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                        '$.KEY_VALUE.E_DST')
                        AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
                        AND EDGE_TABLE.E_DST= DST_TABLE.V_ID UNION
                        SELECT
                            'VERTEX_1' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID ) AS SOURCE,
                            'VERTEX_1' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID ) AS TARGET
                        FROM
                            HR.EDGE_1_1_A EDGE_TABLE,
                            HR.VERTEX_1   SRC_TABLE,
                            HR.VERTEX_1   DST_TABLE
                        WHERE
                            JSON_VALUE(ET.COLUMN_VALUE,
                            '$.ELEM_TABLE') ='EDGE_1_1_A'
                            AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                            '$.KEY_VALUE.E_SRC')
                            AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                            '$.KEY_VALUE.E_DST')
                            AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                            '$.KEY_VALUE.E_SRC')
                            AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                            '$.KEY_VALUE.E_DST')
                            AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
                            AND EDGE_TABLE.E_DST= DST_TABLE.V_ID
     */
    LATERAL_QUERY_STRING               CLOB := '';
    IDX1                               INT;
    IDX2                               INT;
    IDX3                               INT;
    IDX4                               INT;
    TYPE STRING_LIST_TYPE IS
      TABLE OF VARCHAR2(M_VCSIZ_4K) INDEX BY PLS_INTEGER;
    TYPE VARCHARLIST_TABLE IS
      TABLE OF STRING_LIST_TYPE INDEX BY VARCHAR2(M_VCSIZ_4K);
    PRIMARY_KEY_LIST                   SYS.ODCIVARCHAR2LIST;
    JSON_CONDITION_STRING              VARCHAR2(M_VCSIZ_4K);
    ALL_QUERY_STRING                   CLOB := '';
    COLUMN_NAMES                       SYS.ODCIVARCHAR2LIST;
    COLUMN_EXPRESSION_LIST             VARCHARLIST_TABLE;
    ELEMENT_NAME_TABLE                 VARCHARLIST_TABLE;
    VERTEX_TAB_NAMES                   SYS.ODCIVARCHAR2LIST;
    VERTEX_OBJECT_NAMES                SYS.ODCIVARCHAR2LIST;
    VERTEX_OBJECT_OWNERS               SYS.ODCIVARCHAR2LIST;
    EDGE_TAB_NAMES                     SYS.ODCIVARCHAR2LIST;
    TYPE VARCHAR_TABLE IS
      TABLE OF VARCHAR2(M_VCSIZ_4K) INDEX BY VARCHAR2(M_VCSIZ_4K);
    TYPE STRING_TO_MAP_TYPE IS
      TABLE OF VARCHAR_TABLE INDEX BY VARCHAR(M_VCSIZ_4K);
    SRC_VERTEX_TAB_NAME_TABLE          VARCHAR_TABLE;
    SRC_VERTEX_OBJECT_NAME_TABLE       VARCHAR_TABLE;
    SRC_VERTEX_OBJECT_OWNER_TABLE      VARCHAR_TABLE;
    DEST_VERTEX_TAB_NAME_TABLE         VARCHAR_TABLE;
    DEST_VERTEX_OBJECT_NAME_TABLE      VARCHAR_TABLE;
    DEST_VERTEX_OBJECT_OWNER_TABLE     VARCHAR_TABLE;
    EDGE_COL_NAME                      SYS.ODCIVARCHAR2LIST;
    VERTEX_COL_NAME                    SYS.ODCIVARCHAR2LIST;
    EDGE_END_LIST                      SYS.ODCIVARCHAR2LIST;
    ELEMENT_NAME_LIST                  SYS.ODCIVARCHAR2LIST;
    DATA_TYPES                         SYS.ODCIVARCHAR2LIST;
    SRC_EDGE_COL_NAME_TABLE            VARCHARLIST_TABLE;
    SRC_VERTEX_COL_NAME_TABLE          VARCHARLIST_TABLE;
    DEST_EDGE_COL_NAME_TABLE           VARCHARLIST_TABLE;
    DEST_VERTEX_COL_NAME_TABLE         VARCHARLIST_TABLE;
    EDGE_TO_PRIMARY_KEYS_TABLE         VARCHARLIST_TABLE;
    SRC_JSON_STRING                    VARCHAR2(M_VCSIZ_4K);
    DEST_JSON_STRING                   VARCHAR2(M_VCSIZ_4K);
    SRC_EDGE_COL_NAME_FOR_EACH_EDGE    STRING_LIST_TYPE;
    SRC_VERTEX_COL_NAME_FOR_EACH_EDGE  STRING_LIST_TYPE;
    DEST_EDGE_COL_NAME_FOR_EACH_EDGE   STRING_LIST_TYPE;
    DEST_VERTEX_COL_NAME_FOR_EACH_EDGE STRING_LIST_TYPE;
    PRIMARY_KEY_LIST_FOR_EACH_EDGE     STRING_LIST_TYPE;
    P1                                 INT;
    OBJECT_COL_DATA_TYPE_MAP           STRING_TO_MAP_TYPE;
    COL_TO_DATA_TYPE                   VARCHAR_TABLE;
  BEGIN
 -- get all edge tables, source vertex table, target vertex tables and underlying db tables for vertex tables
    SELECT
      DISTINCT VERTEX_TAB_NAME,
      OBJECT_NAME,
      EDGE_TAB_NAME,
      EDGE_END,
      ELEMENTS.OBJECT_OWNER BULK COLLECT INTO VERTEX_TAB_NAMES,
      VERTEX_OBJECT_NAMES,
      EDGE_TAB_NAMES,
      EDGE_END_LIST,
      VERTEX_OBJECT_OWNERS
    FROM
      SYS.ALL_PG_EDGE_RELATIONSHIPS RELATIONSHIPS
      INNER JOIN SYS.ALL_PG_ELEMENTS ELEMENTS
      ON RELATIONSHIPS.VERTEX_TAB_NAME = ELEMENTS.ELEMENT_NAME
    WHERE
      RELATIONSHIPS.GRAPH_NAME = GRAPHNAME
      AND ELEMENTS.OWNER = GRAPHOWNER;
 -- src_vertex_tab_name_table(map, indexed by edge table name) -> each entry is vertex table name
 -- src_vertex_object_name_table(map, indexed by edge table name) -> each entry is underlying db table name for vertex table
 -- dest_vertex_tab_name_table(map, indexed by edge table name) -> each entry is vertex table name
 -- dest_vertex_object_name_table(map, indexed by edge table name) -> each entry is underlying db table name for vertex table
    FOR IDX1 IN 1..EDGE_TAB_NAMES.COUNT LOOP
      IF EDGE_END_LIST(IDX1) = 'SOURCE' THEN
        SRC_VERTEX_TAB_NAME_TABLE(EDGE_TAB_NAMES(IDX1)) := VERTEX_TAB_NAMES(IDX1);
        SRC_VERTEX_OBJECT_NAME_TABLE(EDGE_TAB_NAMES(IDX1)) := VERTEX_OBJECT_NAMES(IDX1);
        SRC_VERTEX_OBJECT_OWNER_TABLE(EDGE_TAB_NAMES(IDX1)) := VERTEX_OBJECT_OWNERS(IDX1);
      ELSE
        DEST_VERTEX_TAB_NAME_TABLE(EDGE_TAB_NAMES(IDX1)) := VERTEX_TAB_NAMES(IDX1);
        DEST_VERTEX_OBJECT_NAME_TABLE(EDGE_TAB_NAMES(IDX1)) := VERTEX_OBJECT_NAMES(IDX1);
        DEST_VERTEX_OBJECT_OWNER_TABLE(EDGE_TAB_NAMES(IDX1)) := VERTEX_OBJECT_OWNERS(IDX1);
      END IF;
    END LOOP;
 -- get edge table name, foreign column and referenced column for source vertex
    SELECT
      DISTINCT EDGE_COL_NAME,
      VERTEX_COL_NAME,
      EDGE_TAB_NAME BULK COLLECT INTO EDGE_COL_NAME,
      VERTEX_COL_NAME,
      EDGE_TAB_NAMES
    FROM
      SYS.ALL_PG_EDGE_RELATIONSHIPS RELATIONSHIPS
      INNER JOIN SYS.ALL_PG_ELEMENTS ELEMENTS
      ON RELATIONSHIPS.VERTEX_TAB_NAME = ELEMENTS.ELEMENT_NAME
    WHERE
      RELATIONSHIPS.GRAPH_NAME = GRAPHNAME
      AND ELEMENTS.OWNER = GRAPHOWNER
      AND EDGE_END = 'SOURCE'
    ORDER BY
      EDGE_TAB_NAME;
 -- src_edge_col_name_table(map, indexed by edge table name) -> each entry is src_edge_col_name_for_each_edge, src_edge_col_name_for_each_edge is a list of string(column name of edge, foreign column), indexed by num.
 -- src_vertex_col_name_table(map, indexed by edge table name) -> each entry is src_vertex_col_name_for_each_edge, src_vertex_col_name_for_each_edge is a list of string(column name of vertex, referenced column), indexed by num.
    FOR IDX1 IN 1..EDGE_TAB_NAMES.COUNT LOOP
      IF IDX1 = 1 THEN
        P1 := 1;
        SRC_EDGE_COL_NAME_FOR_EACH_EDGE := NEW STRING_LIST_TYPE();
        SRC_EDGE_COL_NAME_FOR_EACH_EDGE(P1) := EDGE_COL_NAME(IDX1);
        SRC_VERTEX_COL_NAME_FOR_EACH_EDGE := NEW STRING_LIST_TYPE();
        SRC_VERTEX_COL_NAME_FOR_EACH_EDGE(P1) := VERTEX_COL_NAME(IDX1);
        P1 := P1 + 1;
      ELSE
        IF EDGE_TAB_NAMES(IDX1) = EDGE_TAB_NAMES(IDX1 - 1) THEN
          SRC_EDGE_COL_NAME_FOR_EACH_EDGE(P1) := EDGE_COL_NAME(IDX1);
          SRC_VERTEX_COL_NAME_FOR_EACH_EDGE(P1) := VERTEX_COL_NAME(IDX1);
          P1 := P1 + 1;
        ELSE
          SRC_EDGE_COL_NAME_TABLE(EDGE_TAB_NAMES(IDX1 - 1)) := SRC_EDGE_COL_NAME_FOR_EACH_EDGE;
          SRC_VERTEX_COL_NAME_TABLE(EDGE_TAB_NAMES(IDX1 - 1)) := SRC_VERTEX_COL_NAME_FOR_EACH_EDGE;
          P1 := 1;
          SRC_EDGE_COL_NAME_FOR_EACH_EDGE := NEW STRING_LIST_TYPE();
          SRC_EDGE_COL_NAME_FOR_EACH_EDGE(P1) := EDGE_COL_NAME(IDX1);
          SRC_VERTEX_COL_NAME_FOR_EACH_EDGE := NEW STRING_LIST_TYPE();
          SRC_VERTEX_COL_NAME_FOR_EACH_EDGE(P1) := VERTEX_COL_NAME(IDX1);
          P1 := P1 + 1;
        END IF;
      END IF;
      IF IDX1 = EDGE_TAB_NAMES.COUNT THEN
        SRC_EDGE_COL_NAME_TABLE(EDGE_TAB_NAMES(IDX1)) := SRC_EDGE_COL_NAME_FOR_EACH_EDGE;
        SRC_VERTEX_COL_NAME_TABLE(EDGE_TAB_NAMES(IDX1)) := SRC_VERTEX_COL_NAME_FOR_EACH_EDGE;
      END IF;
    END LOOP;
 -- get edge table name, foreign column and referenced column for destination vertex
    SELECT
      DISTINCT EDGE_COL_NAME,
      VERTEX_COL_NAME,
      EDGE_TAB_NAME BULK COLLECT INTO EDGE_COL_NAME,
      VERTEX_COL_NAME,
      EDGE_TAB_NAMES
    FROM
      SYS.ALL_PG_EDGE_RELATIONSHIPS RELATIONSHIPS
      INNER JOIN SYS.ALL_PG_ELEMENTS ELEMENTS
      ON RELATIONSHIPS.VERTEX_TAB_NAME = ELEMENTS.ELEMENT_NAME
    WHERE
      RELATIONSHIPS.GRAPH_NAME = GRAPHNAME
      AND ELEMENTS.OWNER = GRAPHOWNER
      AND EDGE_END = 'DESTINATION'
    ORDER BY
      EDGE_TAB_NAME;
 -- dest_edge_col_name_table(map, indexed by edge table name) -> each entry is dest_edge_col_name_for_each_edge, dest_edge_col_name_for_each_edge is a list of string(column name of edge, foreign column), indexed by num.
 -- dest_vertex_col_name_table(map, indexed by edge table name) -> each entry is dest_vertex_col_name_for_each_edge, dest_vertex_col_name_for_each_edge is a list of string(column name of vertex, referenced column), indexed by num.
    FOR IDX1 IN 1..EDGE_TAB_NAMES.COUNT LOOP
      IF IDX1 = 1 THEN
        P1 := 1;
        DEST_EDGE_COL_NAME_FOR_EACH_EDGE := NEW STRING_LIST_TYPE();
        DEST_EDGE_COL_NAME_FOR_EACH_EDGE(P1) := EDGE_COL_NAME(IDX1);
        DEST_VERTEX_COL_NAME_FOR_EACH_EDGE := NEW STRING_LIST_TYPE();
        DEST_VERTEX_COL_NAME_FOR_EACH_EDGE(P1) := VERTEX_COL_NAME(IDX1);
        P1 := P1 + 1;
      ELSE
        IF EDGE_TAB_NAMES(IDX1) = EDGE_TAB_NAMES(IDX1 - 1) THEN
          DEST_EDGE_COL_NAME_FOR_EACH_EDGE(P1) := EDGE_COL_NAME(IDX1);
          DEST_VERTEX_COL_NAME_FOR_EACH_EDGE(P1) := VERTEX_COL_NAME(IDX1);
          P1 := P1 + 1;
        ELSE
          DEST_EDGE_COL_NAME_TABLE(EDGE_TAB_NAMES(IDX1 - 1)) := DEST_EDGE_COL_NAME_FOR_EACH_EDGE;
          DEST_VERTEX_COL_NAME_TABLE(EDGE_TAB_NAMES(IDX1 - 1)) := DEST_VERTEX_COL_NAME_FOR_EACH_EDGE;
          P1 := 1;
          DEST_EDGE_COL_NAME_FOR_EACH_EDGE := NEW STRING_LIST_TYPE();
          DEST_EDGE_COL_NAME_FOR_EACH_EDGE(P1) := EDGE_COL_NAME(IDX1);
          DEST_VERTEX_COL_NAME_FOR_EACH_EDGE := NEW STRING_LIST_TYPE();
          DEST_VERTEX_COL_NAME_FOR_EACH_EDGE(P1) := VERTEX_COL_NAME(IDX1);
          P1 := P1 + 1;
        END IF;
      END IF;
      IF IDX1 = EDGE_TAB_NAMES.COUNT THEN
        DEST_EDGE_COL_NAME_TABLE(EDGE_TAB_NAMES(IDX1)) := DEST_EDGE_COL_NAME_FOR_EACH_EDGE;
        DEST_VERTEX_COL_NAME_TABLE(EDGE_TAB_NAMES(IDX1)) := DEST_VERTEX_COL_NAME_FOR_EACH_EDGE;
      END IF;
    END LOOP;
 -- get edge table name, column names used to dfine the edge key and the column data type
    SELECT
      KEYS.COLUMN_NAME,
      KEYS.ELEMENT_NAME,
      DATA_TYPE BULK COLLECT INTO PRIMARY_KEY_LIST,
      ELEMENT_NAME_LIST,
      DATA_TYPES
    FROM
      SYS.ALL_PG_KEYS     KEYS
      INNER JOIN SYS.ALL_PG_ELEMENTS ELEMENTS
      ON ELEMENTS.ELEMENT_NAME = KEYS.ELEMENT_NAME
      INNER JOIN ALL_TAB_COLUMNS
      ON ALL_TAB_COLUMNS.OWNER = ELEMENTS.OBJECT_OWNER
    WHERE
      ELEMENT_KIND = 'EDGE'
      AND KEYS.GRAPH_NAME = GRAPHNAME
      AND ELEMENTS.OWNER = GRAPHOWNER
      AND ALL_TAB_COLUMNS.TABLE_NAME = OBJECT_NAME
      AND ALL_TAB_COLUMNS.COLUMN_NAME = KEYS.COLUMN_NAME
      AND KEYS.GRAPH_NAME = ELEMENTS.GRAPH_NAME
    ORDER BY
      OBJECT_NAME;
 -- edge_to_primary_keys_table(map, indexed by edge table name) -> each entry is a list, primary_key_list_for_each_edge, a list of column names used to define the edge key.
 -- object_col_data_type_map(map, indexed by edge table name) -> each entry is a list, col_to_data_type, a list of data types of the columns.
    FOR IDX1 IN 1..ELEMENT_NAME_LIST.COUNT LOOP
      IF IDX1 = 1 THEN
        P1 := 1;
        PRIMARY_KEY_LIST_FOR_EACH_EDGE := NEW STRING_LIST_TYPE();
        PRIMARY_KEY_LIST_FOR_EACH_EDGE(P1) := PRIMARY_KEY_LIST(IDX1);
        COL_TO_DATA_TYPE := NEW VARCHAR_TABLE();
        COL_TO_DATA_TYPE(PRIMARY_KEY_LIST(IDX1)) := DATA_TYPES(IDX1);
        P1 := P1 + 1;
      ELSE
        IF ELEMENT_NAME_LIST(IDX1) = ELEMENT_NAME_LIST(IDX1 - 1) THEN
          PRIMARY_KEY_LIST_FOR_EACH_EDGE(P1) := PRIMARY_KEY_LIST(IDX1);
          COL_TO_DATA_TYPE(PRIMARY_KEY_LIST(IDX1)) := DATA_TYPES(IDX1);
          P1 := P1 + 1;
        ELSE
          EDGE_TO_PRIMARY_KEYS_TABLE(ELEMENT_NAME_LIST(IDX1 - 1)) := PRIMARY_KEY_LIST_FOR_EACH_EDGE;
          OBJECT_COL_DATA_TYPE_MAP(ELEMENT_NAME_LIST(IDX1 - 1)) := COL_TO_DATA_TYPE;
          P1 := 1;
          PRIMARY_KEY_LIST_FOR_EACH_EDGE := NEW STRING_LIST_TYPE();
          PRIMARY_KEY_LIST_FOR_EACH_EDGE(P1) := PRIMARY_KEY_LIST(IDX1);
          COL_TO_DATA_TYPE := NEW VARCHAR_TABLE();
          COL_TO_DATA_TYPE(PRIMARY_KEY_LIST(IDX1)) := DATA_TYPES(IDX1);
          P1 := P1 + 1;
        END IF;
      END IF;
      IF IDX1 = ELEMENT_NAME_LIST.COUNT THEN
        EDGE_TO_PRIMARY_KEYS_TABLE(ELEMENT_NAME_LIST(IDX1)) := PRIMARY_KEY_LIST_FOR_EACH_EDGE;
        OBJECT_COL_DATA_TYPE_MAP(ELEMENT_NAME_LIST(IDX1)) := COL_TO_DATA_TYPE;
      END IF;
    END LOOP;
 /*
    SELECT
                'VERTEX_1' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID )            AS SOURCE,
                'VERTEX_3' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID )            AS TARGET
            FROM
                HR.EDGE_1_3   EDGE_TABLE,
                HR.VERTEX_1   SRC_TABLE,
                HR.VERTEX_3   DST_TABLE
            WHERE
                JSON_VALUE(ET.COLUMN_VALUE,
                '$.ELEM_TABLE') ='EDGE_1_3'
                AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                '$.KEY_VALUE.E_DST')
                AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                '$.KEY_VALUE.E_SRC')
                AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
                AND EDGE_TABLE.E_DST= DST_TABLE.V_ID UNION
    ....
    */
 -- below query is to build string similar to above
    ALL_QUERY_STRING := '';
    FOR IDX1 IN 1..EDGE_ELEMENT_NAME.COUNT LOOP
      LATERAL_QUERY_STRING := 'select '''
                              || SRC_VERTEX_TAB_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1))
                              || ''' || json_object(';
      SRC_JSON_STRING := '';
      DEST_JSON_STRING := '';
      FOR IDX2 IN 1..SRC_EDGE_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1)).COUNT LOOP
        SRC_JSON_STRING := SRC_JSON_STRING
                           || ''''
                           || SRC_VERTEX_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1))(IDX2)
                           || ''' is src_table.'
                           || SRC_VERTEX_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1))(IDX2);
        IF (IDX2 = SRC_EDGE_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1)).COUNT) THEN
          SRC_JSON_STRING := SRC_JSON_STRING
                             || ' ';
        ELSE
          SRC_JSON_STRING := SRC_JSON_STRING
                             || ', ';
        END IF;
      END LOOP;
      LATERAL_QUERY_STRING := LATERAL_QUERY_STRING
                              || SRC_JSON_STRING;
      LATERAL_QUERY_STRING := LATERAL_QUERY_STRING
                              || ') as source, '''
                              || DEST_VERTEX_TAB_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1))
                              || ''' || json_object(';
      FOR IDX3 IN 1..DEST_EDGE_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1)).COUNT LOOP
        DEST_JSON_STRING := DEST_JSON_STRING
                            || ''''
                            || DEST_VERTEX_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1))(IDX3)
                            || ''' is dst_table.'
                            || DEST_VERTEX_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1))(IDX3);
        IF (IDX3 = DEST_EDGE_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1)).COUNT) THEN
          DEST_JSON_STRING := DEST_JSON_STRING
                              || ' ';
        ELSE
          DEST_JSON_STRING := DEST_JSON_STRING
                              || ', ';
        END IF;
      END LOOP;
      LATERAL_QUERY_STRING := LATERAL_QUERY_STRING
                              || DEST_JSON_STRING;
      LATERAL_QUERY_STRING := LATERAL_QUERY_STRING
                              ||') as target from '
                              || DB_OBJECT_OWNER_LIST(IDX1)
                              || '.'
                              || DB_TABLE_NAME_LIST(IDX1)
                              || ' edge_table, '
                              || SRC_VERTEX_OBJECT_OWNER_TABLE(EDGE_ELEMENT_NAME(IDX1))
                              || '.'
                              ||SRC_VERTEX_OBJECT_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1))
                              || ' src_table, '
                              || DEST_VERTEX_OBJECT_OWNER_TABLE(EDGE_ELEMENT_NAME(IDX1))
                              || '.'
                              || DEST_VERTEX_OBJECT_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1))
                              || ' dst_table where json_value('
                              || GRAPH_VIZ_TABLE_NAME
                              || '.'
                              || EDGE_ID_COL_NAME
                              || ', ''$.ELEM_TABLE'') ='''
                              || EDGE_ELEMENT_NAME(IDX1)
                              || ''' and ';
      JSON_CONDITION_STRING := '';
      FOR IDX4 IN 1..EDGE_TO_PRIMARY_KEYS_TABLE(EDGE_ELEMENT_NAME(IDX1)).COUNT LOOP
 -- cast date type if data type is date
        IF (OBJECT_COL_DATA_TYPE_MAP(EDGE_ELEMENT_NAME(IDX1))(EDGE_TO_PRIMARY_KEYS_TABLE(EDGE_ELEMENT_NAME(IDX1))(IDX4)) = 'DATE'
        OR OBJECT_COL_DATA_TYPE_MAP(EDGE_ELEMENT_NAME(IDX1))(EDGE_TO_PRIMARY_KEYS_TABLE(EDGE_ELEMENT_NAME(IDX1))(IDX4)) LIKE 'TIMESTAMP%') THEN
          JSON_CONDITION_STRING := JSON_CONDITION_STRING
                                   || 'edge_table.'
                                   || EDGE_TO_PRIMARY_KEYS_TABLE(EDGE_ELEMENT_NAME(IDX1))(IDX4)
                                   || '= to_date(json_value('
                                   || GRAPH_VIZ_TABLE_NAME
                                   || '.'
                                   || EDGE_ID_COL_NAME
                                   || ', ''$.KEY_VALUE.'
                                   || EDGE_TO_PRIMARY_KEYS_TABLE(EDGE_ELEMENT_NAME(IDX1))(IDX4)
                                   || '''), ''yyyy-mm-dd"t"hh24:mi:ss'')';
        ELSE
          JSON_CONDITION_STRING := JSON_CONDITION_STRING
                                   || 'edge_table.'
                                   || EDGE_TO_PRIMARY_KEYS_TABLE(EDGE_ELEMENT_NAME(IDX1))(IDX4)
                                   || '= JSON_VALUE('
                                   || GRAPH_VIZ_TABLE_NAME
                                   || '.'
                                   || EDGE_ID_COL_NAME
                                   || ', ''$.KEY_VALUE.'
                                   || EDGE_TO_PRIMARY_KEYS_TABLE(EDGE_ELEMENT_NAME(IDX1))(IDX4)
                                   || ''')';
        END IF;
        IF (IDX4 = EDGE_TO_PRIMARY_KEYS_TABLE(EDGE_ELEMENT_NAME(IDX1)).COUNT) THEN
          JSON_CONDITION_STRING := JSON_CONDITION_STRING
                                   || '';
        ELSE
          JSON_CONDITION_STRING := JSON_CONDITION_STRING
                                   || ' AND ';
        END IF;
      END LOOP;
      LATERAL_QUERY_STRING := LATERAL_QUERY_STRING
                              || JSON_CONDITION_STRING
                              || ' AND ';
      SRC_JSON_STRING := '';
      FOR IDX4 IN 1..SRC_EDGE_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1)).COUNT LOOP
        SRC_JSON_STRING := SRC_JSON_STRING
                           || 'edge_table.'
                           || SRC_EDGE_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1))(IDX4)
                           || '= src_table.'
                           || SRC_VERTEX_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1))(IDX4);
        SRC_JSON_STRING := SRC_JSON_STRING
                           || ' AND ';
      END LOOP;
      LATERAL_QUERY_STRING := LATERAL_QUERY_STRING
                              || SRC_JSON_STRING;
      DEST_JSON_STRING := '';
      FOR IDX4 IN 1..DEST_EDGE_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1)).COUNT LOOP
        DEST_JSON_STRING := DEST_JSON_STRING
                            || 'edge_table.'
                            || DEST_EDGE_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1))(IDX4)
                            || '= dst_table.'
                            || DEST_VERTEX_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1))(IDX4);
        IF (IDX4 = DEST_EDGE_COL_NAME_TABLE(EDGE_ELEMENT_NAME(IDX1)).COUNT) THEN
          DEST_JSON_STRING := DEST_JSON_STRING
                              || '';
        ELSE
          DEST_JSON_STRING := DEST_JSON_STRING
                              || ' AND ';
        END IF;
      END LOOP;
      LATERAL_QUERY_STRING := LATERAL_QUERY_STRING
                              || DEST_JSON_STRING;
      ALL_QUERY_STRING := ALL_QUERY_STRING
                          || LATERAL_QUERY_STRING
                          || ' ';
      IF (IDX1 = EDGE_ELEMENT_NAME.COUNT) THEN
        ALL_QUERY_STRING := ALL_QUERY_STRING
                            || '';
      ELSE
        ALL_QUERY_STRING := ALL_QUERY_STRING
                            || ' union ';
      END IF;
    END LOOP;
    RETURN ALL_QUERY_STRING;
  END EDGE_LATERAL_STRING;
  FUNCTION GET_VERSION RETURN VARCHAR2 IS
  BEGIN
    RETURN '23.4.6 (2023-10-31T05:16:42.761Z, build: 1b61e021)';
  END GET_VERSION;
END DBMS_GVT;
/
/*
APEX can render JSON in the format {"vertices" : [...], "edges":[...]}
In this function, we build two query strings, one for vertex and one for edge.
After we have query strings, we use dynamic sql to execute the quries and 
put the result in required json format.
*/
CREATE OR REPLACE FUNCTION ORA_SQLGRAPH_TO_JSON (
  CURS_ID INTEGER,
  PAGE_START NUMBER DEFAULT -1,
  PAGE_SIZE NUMBER DEFAULT -1
) RETURN CLOB
  AUTHID CURRENT_USER IS
  M_VCSIZ_4K                              CONSTANT PLS_INTEGER := 4000;
  M_VCSIZ_32K                             CONSTANT PLS_INTEGER := 32672;
  JSON_FILE                               CLOB; --the returned result
  GRAPHNAME                               VARCHAR2(M_VCSIZ_4K);
  ELEMENT_NAME                            VARCHAR2(M_VCSIZ_4K);
  GRAPHOWNER                              VARCHAR2(M_VCSIZ_4K);
  VERTEX                                  JSON;
  EDGE                                    JSON;
  LATERALSTRING                           VARCHAR2(M_VCSIZ_32K);
  VERTEX_UNDERLYING_DB_NAME_LIST          SYS.ODCIVARCHAR2LIST;
  VERTEX_DB_TABLE_OBJECT_OWNER            SYS.ODCIVARCHAR2LIST;
  EDGE_UNDERLYING_DB_NAME_LIST            SYS.ODCIVARCHAR2LIST;
  EDGE_DB_TABLE_OBJECT_OWNER              SYS.ODCIVARCHAR2LIST;
  EDGE_UNDERLYING_DB_NAME_LIST_WITH_PROPS SYS.ODCIVARCHAR2LIST;
  EDGE_DB_TABLE_OBJECT_OWNER_WITH_PROPS   SYS.ODCIVARCHAR2LIST;
  EDGE_ELEMENT_NAME                       SYS.ODCIVARCHAR2LIST;
  SUB_QUERY_STRING                        VARCHAR2(M_VCSIZ_32K);
  QUERY_STRING                            VARCHAR2(M_VCSIZ_32K);
  L_COLS                                  INTEGER;
  TAB_REC                                 DBMS_SQL.DESC_TAB;
  CUR                                     SYS_REFCURSOR;
  L_FLAG                                  NUMBER;
  L_JSON                                  VARCHAR2(M_VCSIZ_4K);
  VERTEX_ID_COLUMN_LIST                   SYS.ODCINUMBERLIST := SYS.ODCINUMBERLIST();
  EDGE_ID_COLUMN_LIST                     SYS.ODCINUMBERLIST := SYS.ODCINUMBERLIST();
  P1                                      NUMBER := 1;
  V1                                      NUMBER := 1;
  E1                                      NUMBER := 1;
  VERTEX_COUNT                            NUMBER;
  EDGE_COUNT                              NUMBER;
  VERTEX_TABLE                            SYS.ODCIRIDLIST := SYS.ODCIRIDLIST();
  EDGE_TABLE                              SYS.ODCIRIDLIST := SYS.ODCIRIDLIST();
  V2                                      NUMBER := 1;
  E2                                      NUMBER := 1;
  L_HAVING_ELEMENT_ID                     BOOLEAN := FALSE;
  COUNTER                                 NUMBER := 0;
BEGIN
  DBMS_SQL.DESCRIBE_COLUMNS(
    C => CURS_ID,
    COL_CNT => L_COLS,
    DESC_T => TAB_REC
  );
  FOR POS IN 1 .. L_COLS LOOP
    CASE TAB_REC (POS).COL_TYPE
      WHEN 119 THEN
        DBMS_SQL.DEFINE_COLUMN (CURS_ID, POS, L_JSON, 2000);
        L_HAVING_ELEMENT_ID := TRUE;
      ELSE
        NULL;
    END CASE;
  END LOOP;
 --check if query results have element_id
  IF L_HAVING_ELEMENT_ID = FALSE THEN
    RAISE_APPLICATION_ERROR(-20000, 'Please add vertex_id/edge_id in CLOUMNS clause');
  END IF;
 -- Print data fetched by query
  LOOP
    L_FLAG := DBMS_SQL.FETCH_ROWS (CURS_ID);
    EXIT WHEN L_FLAG = 0;
    COUNTER := COUNTER + 1;
    IF ((PAGE_START < 0
    OR PAGE_SIZE <= 0)
    AND (PAGE_START != -1
    AND PAGE_SIZE != -1)) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Please provide valid values for page_start and page_size parameter. page_start should be an integer equal to or greater than 0. page_size should be an integer greater than 0');
    END IF;
    IF ((COUNTER > PAGE_START
    AND COUNTER <= PAGE_START + PAGE_SIZE)
    OR (PAGE_START = -1
    AND PAGE_START = -1) ) THEN
      IF P1 = 1 THEN
        FOR POS IN 1 .. L_COLS LOOP
          IF TAB_REC(POS).COL_TYPE = 119 THEN
            DBMS_SQL.COLUMN_VALUE (CURS_ID, POS, L_JSON);
            IF JSON_EXISTS(L_JSON, '$.ELEM_TABLE') THEN
              IF GRAPHNAME IS NULL AND GRAPHOWNER IS NULL THEN
                GRAPHNAME := JSON_VALUE(L_JSON, '$.GRAPH_NAME');
                GRAPHOWNER := JSON_VALUE(L_JSON, '$.GRAPH_OWNER');
              END IF;
              SELECT
                ELEMENT_KIND INTO ELEMENT_NAME
              FROM
                ALL_PG_ELEMENTS
              WHERE
                ELEMENT_NAME = JSON_VALUE(L_JSON, '$.ELEM_TABLE')
                AND GRAPH_NAME = GRAPHNAME
                AND OWNER = GRAPHOWNER;
              IF ELEMENT_NAME = 'VERTEX' THEN
                VERTEX_ID_COLUMN_LIST.EXTEND;
                VERTEX_ID_COLUMN_LIST(V1) := POS;
                V1 := V1 + 1;
                VERTEX_TABLE.EXTEND();
                VERTEX_TABLE(V2) := L_JSON;
                V2 := V2 + 1;
              ELSE
                EDGE_ID_COLUMN_LIST.EXTEND;
                EDGE_ID_COLUMN_LIST(E1) := POS;
                E1 := E1 + 1;
                EDGE_TABLE.EXTEND();
                EDGE_TABLE(E2) := L_JSON;
                E2 := E2 + 1;
              END IF;
            END IF;
          END IF;
        END LOOP;
      ELSE
        FOR I IN 1..VERTEX_ID_COLUMN_LIST.COUNT LOOP
          DBMS_SQL.COLUMN_VALUE (CURS_ID, VERTEX_ID_COLUMN_LIST(I), L_JSON);
          VERTEX_TABLE.EXTEND();
          VERTEX_TABLE(V2) := L_JSON;
          V2 := V2 + 1;
        END LOOP;
        FOR I IN 1..EDGE_ID_COLUMN_LIST.COUNT LOOP
          DBMS_SQL.COLUMN_VALUE (CURS_ID, EDGE_ID_COLUMN_LIST(I), L_JSON);
          EDGE_TABLE.EXTEND();
          EDGE_TABLE(E2) := L_JSON;
          E2 := E2 + 1;
        END LOOP;
      END IF;
      P1 := P1 + 1;
    END IF;
  END LOOP;
 /**********************************************************************************/
 --get all underlyting db table names for vertices with properties
  SELECT
    DISTINCT ELEMENTS.OBJECT_NAME,
    ELEMENTS.OBJECT_OWNER BULK COLLECT INTO VERTEX_UNDERLYING_DB_NAME_LIST,
    VERTEX_DB_TABLE_OBJECT_OWNER
  FROM
    SYS.ALL_PG_ELEMENTS ELEMENTS
    INNER JOIN SYS.ALL_PG_ELEMENT_LABELS ELEM_LABELS
    ON (ELEMENTS.ELEMENT_NAME = ELEM_LABELS.ELEMENT_NAME
    AND ELEMENTS.OWNER = ELEM_LABELS.OWNER
    AND ELEMENTS.GRAPH_NAME = ELEM_LABELS.GRAPH_NAME )
    INNER JOIN SYS.ALL_PG_LABEL_PROPERTIES LABEL_PROPERTIES
    ON (ELEM_LABELS.LABEL_NAME = LABEL_PROPERTIES.LABEL_NAME
    AND ELEM_LABELS.OWNER = LABEL_PROPERTIES.OWNER
    AND ELEM_LABELS.GRAPH_NAME = LABEL_PROPERTIES.GRAPH_NAME)
    INNER JOIN SYS.ALL_PG_PROP_DEFINITIONS PROP_DEFINITIONS
    ON PROP_DEFINITIONS.PROPERTY_NAME = LABEL_PROPERTIES.PROPERTY_NAME
  WHERE
    ELEMENTS.ELEMENT_KIND = 'VERTEX'
    AND ELEMENTS.GRAPH_NAME = GRAPHNAME
    AND ELEMENTS.OWNER = GRAPHOWNER;
 --prepare query vertices string

 /* Example vertex query string 
  WITH VERTICES AS (
    SELECT
        JSON_OBJECT ('id' VALUE JSON_VALUE(VT.COLUMN_VALUE,
        '$.ELEM_TABLE') || JSON_QUERY(VT.COLUMN_VALUE,
        '$.KEY_VALUE'),
        'properties' VALUE PROPERTIES_TABLE.PROPERTIES ABSENT ON NULL RETURNING CLOB) AS VERTEX
    FROM
        TABLE(:1) VT,
        LATERAL(
            SELECT
                JSON_OBJECT('SAL' VALUE X.SAL,
                'AGE' VALUE X.AGE ABSENT
                ON NULL)                                                       AS PROPERTIES
            FROM
                HR.VERTEX_3 X
            WHERE
                JSON_VALUE(VT.COLUMN_VALUE,
                '$.ELEM_TABLE') = 'VERTEX_3'
                AND X.V_ID= JSON_VALUE(VT.COLUMN_VALUE,
                '$.KEY_VALUE.V_ID') UNION
                SELECT
                    JSON_OBJECT('AGE' VALUE X.AGE,
                    'SAL' VALUE X.SAL ABSENT
                    ON NULL)                                                       AS PROPERTIES
                FROM
                    HR.VERTEX_1 X
                WHERE
                    JSON_VALUE(VT.COLUMN_VALUE,
                    '$.ELEM_TABLE') = 'VERTEX_1'
                    AND X.V_ID= JSON_VALUE(VT.COLUMN_VALUE,
                    '$.KEY_VALUE.V_ID') UNION
                    SELECT
                        JSON_OBJECT('AGE' VALUE X.AGE ABSENT
                        ON NULL)                                                       AS PROPERTIES
                    FROM
                        HR.VERTEX_2 X
                    WHERE
                        JSON_VALUE(VT.COLUMN_VALUE,
                        '$.ELEM_TABLE') = 'VERTEX_2'
                        AND X.V_ID= JSON_VALUE(VT.COLUMN_VALUE,
                        '$.KEY_VALUE.V_ID')
        ) PROPERTIES_TABLE
    )
    SELECT
      JSON_ARRAYAGG(VERTEX RETURNING CLOB)
    FROM
        VERTICES
  */
 -- if there is vertex id, prepare vertex query string like above example query string
  IF (VERTEX_TABLE.COUNT != 0) THEN
    QUERY_STRING := 'with vertices as (';
 -- prepare string inside LATERAL()
    LATERALSTRING := DBMS_GVT.PROPERTIES_LATERAL_STRING(VERTEX_UNDERLYING_DB_NAME_LIST, VERTEX_DB_TABLE_OBJECT_OWNER, 'VT', 'COLUMN_VALUE', GRAPHNAME, GRAPHOWNER, 'VERTEX');
    SUB_QUERY_STRING := 'select json_object (''id'' value json_value(VT.COLUMN_VALUE, ''$.ELEM_TABLE'') || json_query(VT.COLUMN_VALUE, ''$.KEY_VALUE''), ''properties'' value properties_table.PROPERTIES absent on null returning clob) as vertex from (select distinct * from table(:1)) VT outer apply('
                        || LATERALSTRING
                        || ') properties_table';
    QUERY_STRING := QUERY_STRING
                    || SUB_QUERY_STRING;
    QUERY_STRING := QUERY_STRING
                    || ') select json_arrayagg(vertex returning clob) from vertices';
    EXECUTE IMMEDIATE QUERY_STRING INTO VERTEX USING VERTEX_TABLE;
  ELSE
 -- if there is no vertex id in global temp table, return an empty array to vertex value
    SELECT
      JSON_ARRAY() INTO VERTEX;
  END IF;
 --get edges table name and underlying db table names for edges
  SELECT
    ELEMENTS.ELEMENT_NAME,
    ELEMENTS.OBJECT_NAME,
    ELEMENTS.OBJECT_OWNER BULK COLLECT INTO EDGE_ELEMENT_NAME,
    EDGE_UNDERLYING_DB_NAME_LIST,
    EDGE_DB_TABLE_OBJECT_OWNER
  FROM
    SYS.ALL_PG_ELEMENTS ELEMENTS
    INNER JOIN SYS.ALL_PG_ELEMENT_LABELS ELEMENTS_LABELS
    ON ELEMENTS.ELEMENT_NAME = ELEMENTS_LABELS.ELEMENT_NAME
    AND ELEMENTS.GRAPH_NAME = ELEMENTS_LABELS.GRAPH_NAME
  WHERE
    ELEMENTS.ELEMENT_KIND = 'EDGE'
    AND ELEMENTS.GRAPH_NAME = GRAPHNAME
    AND ELEMENTS.OWNER = GRAPHOWNER;
 --get all underlyting db table names for edges with properties
  SELECT
    DISTINCT ELEMENTS.OBJECT_NAME,
    ELEMENTS.OBJECT_OWNER BULK COLLECT INTO EDGE_UNDERLYING_DB_NAME_LIST_WITH_PROPS,
    EDGE_DB_TABLE_OBJECT_OWNER_WITH_PROPS
  FROM
    SYS.ALL_PG_ELEMENTS ELEMENTS
    INNER JOIN SYS.ALL_PG_ELEMENT_LABELS ELEM_LABELS
    ON (ELEMENTS.ELEMENT_NAME = ELEM_LABELS.ELEMENT_NAME
    AND ELEMENTS.OWNER = ELEM_LABELS.OWNER
    AND ELEMENTS.GRAPH_NAME = ELEM_LABELS.GRAPH_NAME )
    INNER JOIN SYS.ALL_PG_LABEL_PROPERTIES LABEL_PROPERTIES
    ON (ELEM_LABELS.LABEL_NAME = LABEL_PROPERTIES.LABEL_NAME
    AND ELEM_LABELS.OWNER = LABEL_PROPERTIES.OWNER
    AND ELEM_LABELS.GRAPH_NAME = LABEL_PROPERTIES.GRAPH_NAME)
    INNER JOIN SYS.ALL_PG_PROP_DEFINITIONS PROP_DEFINITIONS
    ON PROP_DEFINITIONS.PROPERTY_NAME = LABEL_PROPERTIES.PROPERTY_NAME
  WHERE
    ELEMENTS.ELEMENT_KIND = 'EDGE'
    AND ELEMENTS.GRAPH_NAME = GRAPHNAME
    AND ELEMENTS.OWNER = GRAPHOWNER;
 --prepare query vertices string
 --prepare edge query string

 /*Example string 
  WITH EDGES AS (
    SELECT
        JSON_OBJECT('id' VALUE JSON_VALUE(ET.COLUMN_VALUE,
        '$.ELEM_TABLE') || JSON_QUERY(ET.COLUMN_VALUE,
        '$.KEY_VALUE'),
        'source' IS ID_TABLE.SOURCE,
        'target' IS ID_TABLE.TARGET,
        'properties' VALUE PROPERTIES_TABLE.PROPERTIES ABSENT ON NULL RETURNING CLOB ) AS EDGE
    FROM
        TABLE(:1) ET,
        LATERAL(
            SELECT
                'VERTEX_1' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID )            AS SOURCE,
                'VERTEX_3' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID )            AS TARGET
            FROM
                HR.EDGE_1_3   EDGE_TABLE,
                HR.VERTEX_1   SRC_TABLE,
                HR.VERTEX_3   DST_TABLE
            WHERE
                JSON_VALUE(ET.COLUMN_VALUE,
                '$.ELEM_TABLE') ='EDGE_1_3'
                AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                '$.KEY_VALUE.E_DST')
                AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                '$.KEY_VALUE.E_SRC')
                AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
                AND EDGE_TABLE.E_DST= DST_TABLE.V_ID UNION
                SELECT
                    'VERTEX_1' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID )            AS SOURCE,
                    'VERTEX_2' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID )            AS TARGET
                FROM
                    HR.EDGE_1_2   EDGE_TABLE,
                    HR.VERTEX_1   SRC_TABLE,
                    HR.VERTEX_2   DST_TABLE
                WHERE
                    JSON_VALUE(ET.COLUMN_VALUE,
                    '$.ELEM_TABLE') ='EDGE_1_2'
                    AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                    '$.KEY_VALUE.E_SRC')
                    AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                    '$.KEY_VALUE.E_DST')
                    AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
                    AND EDGE_TABLE.E_DST= DST_TABLE.V_ID UNION
                    SELECT
                        'VERTEX_1' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID )            AS SOURCE,
                        'VERTEX_1' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID )            AS TARGET
                    FROM
                        HR.EDGE_1_1_B EDGE_TABLE,
                        HR.VERTEX_1   SRC_TABLE,
                        HR.VERTEX_1   DST_TABLE
                    WHERE
                        JSON_VALUE(ET.COLUMN_VALUE,
                        '$.ELEM_TABLE') ='EDGE_1_1_B'
                        AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                        '$.KEY_VALUE.E_SRC')
                        AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                        '$.KEY_VALUE.E_DST')
                        AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
                        AND EDGE_TABLE.E_DST= DST_TABLE.V_ID UNION
                        SELECT
                            'VERTEX_1' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID )            AS SOURCE,
                            'VERTEX_1' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID )            AS TARGET
                        FROM
                            HR.EDGE_1_1_B EDGE_TABLE,
                            HR.VERTEX_1   SRC_TABLE,
                            HR.VERTEX_1   DST_TABLE
                        WHERE
                            JSON_VALUE(ET.COLUMN_VALUE,
                            '$.ELEM_TABLE') ='EDGE_1_1_B'
                            AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                            '$.KEY_VALUE.E_SRC')
                            AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                            '$.KEY_VALUE.E_DST')
                            AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
                            AND EDGE_TABLE.E_DST= DST_TABLE.V_ID UNION
                            SELECT
                                'VERTEX_2' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID )            AS SOURCE,
                                'VERTEX_1' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID )            AS TARGET
                            FROM
                                HR.EDGE_2_1   EDGE_TABLE,
                                HR.VERTEX_2   SRC_TABLE,
                                HR.VERTEX_1   DST_TABLE
                            WHERE
                                JSON_VALUE(ET.COLUMN_VALUE,
                                '$.ELEM_TABLE') ='EDGE_2_1'
                                AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                                '$.KEY_VALUE.E_SRC')
                                AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                                '$.KEY_VALUE.E_DST')
                                AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
                                AND EDGE_TABLE.E_DST= DST_TABLE.V_ID UNION
                                SELECT
                                    'VERTEX_1' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID )            AS SOURCE,
                                    'VERTEX_1' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID )            AS TARGET
                                FROM
                                    HR.EDGE_1_1_A EDGE_TABLE,
                                    HR.VERTEX_1   SRC_TABLE,
                                    HR.VERTEX_1   DST_TABLE
                                WHERE
                                    JSON_VALUE(ET.COLUMN_VALUE,
                                    '$.ELEM_TABLE') ='EDGE_1_1_A'
                                    AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                                    '$.KEY_VALUE.E_DST')
                                    AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                                    '$.KEY_VALUE.E_SRC')
                                    AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
                                    AND EDGE_TABLE.E_DST= DST_TABLE.V_ID UNION
                                    SELECT
                                        'VERTEX_1' || JSON_OBJECT('V_ID' IS SRC_TABLE.V_ID )            AS SOURCE,
                                        'VERTEX_1' || JSON_OBJECT('V_ID' IS DST_TABLE.V_ID )            AS TARGET
                                    FROM
                                        HR.EDGE_1_1_A EDGE_TABLE,
                                        HR.VERTEX_1   SRC_TABLE,
                                        HR.VERTEX_1   DST_TABLE
                                    WHERE
                                        JSON_VALUE(ET.COLUMN_VALUE,
                                        '$.ELEM_TABLE') ='EDGE_1_1_A'
                                        AND EDGE_TABLE.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                                        '$.KEY_VALUE.E_DST')
                                        AND EDGE_TABLE.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                                        '$.KEY_VALUE.E_SRC')
                                        AND EDGE_TABLE.E_SRC= SRC_TABLE.V_ID
                                        AND EDGE_TABLE.E_DST= DST_TABLE.V_ID
        ) ID_TABLE,
        LATERAL(
            SELECT
                JSON_OBJECT('COST' VALUE X.E_C ABSENT
                ON NULL)                                                        AS PROPERTIES
            FROM
                HR.EDGE_1_3   X
            WHERE
                JSON_VALUE(ET.COLUMN_VALUE,
                '$.ELEM_TABLE') = 'EDGE_1_3'
                AND X.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                '$.KEY_VALUE.E_DST')
                AND X.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                '$.KEY_VALUE.E_SRC') UNION
                SELECT
                    JSON_OBJECT('COST' VALUE X.E_WEIGHT ABSENT
                    ON NULL)                                                        AS PROPERTIES
                FROM
                    HR.EDGE_1_2   X
                WHERE
                    JSON_VALUE(ET.COLUMN_VALUE,
                    '$.ELEM_TABLE') = 'EDGE_1_2'
                    AND X.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                    '$.KEY_VALUE.E_SRC')
                    AND X.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                    '$.KEY_VALUE.E_DST') UNION
                    SELECT
                        JSON_OBJECT('COST' VALUE X.COST ABSENT
                        ON NULL)                                                        AS PROPERTIES
                    FROM
                        HR.EDGE_1_1_B X
                    WHERE
                        JSON_VALUE(ET.COLUMN_VALUE,
                        '$.ELEM_TABLE') = 'EDGE_1_1_B'
                        AND X.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                        '$.KEY_VALUE.E_SRC')
                        AND X.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                        '$.KEY_VALUE.E_DST') UNION
                        SELECT
                            JSON_OBJECT('COST' VALUE X.COST ABSENT
                            ON NULL)                                                        AS PROPERTIES
                        FROM
                            HR.EDGE_1_1_B X
                        WHERE
                            JSON_VALUE(ET.COLUMN_VALUE,
                            '$.ELEM_TABLE') = 'EDGE_1_1_B'
                            AND X.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                            '$.KEY_VALUE.E_SRC')
                            AND X.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                            '$.KEY_VALUE.E_DST') UNION
                            SELECT
                                JSON_OBJECT('COST' VALUE X.E_W ABSENT
                                ON NULL)                                                        AS PROPERTIES
                            FROM
                                HR.EDGE_2_1   X
                            WHERE
                                JSON_VALUE(ET.COLUMN_VALUE,
                                '$.ELEM_TABLE') = 'EDGE_2_1'
                                AND X.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                                '$.KEY_VALUE.E_SRC')
                                AND X.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                                '$.KEY_VALUE.E_DST') UNION
                                SELECT
                                    JSON_OBJECT('COST' VALUE X.E_COST ABSENT
                                    ON NULL)                                                        AS PROPERTIES
                                FROM
                                    HR.EDGE_1_1_A X
                                WHERE
                                    JSON_VALUE(ET.COLUMN_VALUE,
                                    '$.ELEM_TABLE') = 'EDGE_1_1_A'
                                    AND X.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                                    '$.KEY_VALUE.E_DST')
                                    AND X.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                                    '$.KEY_VALUE.E_SRC') UNION
                                    SELECT
                                        JSON_OBJECT('COST' VALUE X.E_COST ABSENT
                                        ON NULL)                                                        AS PROPERTIES
                                    FROM
                                        HR.EDGE_1_1_A X
                                    WHERE
                                        JSON_VALUE(ET.COLUMN_VALUE,
                                        '$.ELEM_TABLE') = 'EDGE_1_1_A'
                                        AND X.E_DST= JSON_VALUE(ET.COLUMN_VALUE,
                                        '$.KEY_VALUE.E_DST')
                                        AND X.E_SRC= JSON_VALUE(ET.COLUMN_VALUE,
                                        '$.KEY_VALUE.E_SRC')
        ) PROPERTIES_TABLE
    )
    SELECT
        JSON_ARRAYAGG(EDGE RETURNING CLOB)
    FROM
        EDGES
  */
 -- if there is edge id, prepare edge query string like above example query string
  IF (EDGE_TABLE.COUNT != 0) THEN
    QUERY_STRING := 'WITH EDGES AS (SELECT JSON_OBJECT(''id'' value json_value(ET.COLUMN_VALUE, ''$.ELEM_TABLE'') || json_query(ET.COLUMN_VALUE, ''$.KEY_VALUE''),''source'' is id_table.source, ''target'' is id_table.target, ''properties'' value PROPERTIES_TABLE.PROPERTIES absent on null returning clob ) as edge FROM (select distinct * from table(:1)) ET outer apply(';
 -- prepare string inside LATERAL()
    LATERALSTRING := DBMS_GVT.PROPERTIES_LATERAL_STRING(EDGE_UNDERLYING_DB_NAME_LIST_WITH_PROPS, EDGE_DB_TABLE_OBJECT_OWNER_WITH_PROPS, 'ET', 'COLUMN_VALUE', GRAPHNAME, GRAPHOWNER, 'EDGE');
    QUERY_STRING := QUERY_STRING
                    || LATERALSTRING;
    QUERY_STRING := QUERY_STRING
                    || ') properties_table, LATERAL(';
    LATERALSTRING := DBMS_GVT.EDGE_LATERAL_STRING(EDGE_UNDERLYING_DB_NAME_LIST, EDGE_DB_TABLE_OBJECT_OWNER, EDGE_ELEMENT_NAME, 'ET', 'COLUMN_VALUE', GRAPHNAME, GRAPHOWNER);
    QUERY_STRING := QUERY_STRING
                    || LATERALSTRING;
    QUERY_STRING := QUERY_STRING
                    ||') id_table ) select JSON_ARRAYAGG(edge returning clob) from edges';
    EXECUTE IMMEDIATE QUERY_STRING INTO EDGE USING EDGE_TABLE;
  ELSE
 -- if there is no edge id in global temp table, return an empty array to edge value
    SELECT
      JSON_ARRAY() INTO EDGE;
  END IF;
 -- prepare the final result
  SELECT
    JSON_OBJECT('vertices' VALUE VERTEX,
    'edges' VALUE EDGE,
    'numResults' VALUE COUNTER RETURNING CLOB) INTO JSON_FILE
  FROM
    DUAL;
  RETURN JSON_FILE;
END ORA_SQLGRAPH_TO_JSON;
/


