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
