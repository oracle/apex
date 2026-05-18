-- =========================================================================== 
-- RESTful Service Definitions 
-- ===========================================================================

begin
  ords.enable_schema(
      p_enabled              => true,
      p_url_mapping_type     => 'BASE_PATH',
      p_url_mapping_pattern  => :APP_USER,
      p_auto_rest_auth       => false
    );

  ords.define_module(
      p_module_name          => 'eba.rest.emp',
      p_base_path            => '/data/',
      p_items_per_page       => 25,
      p_status               => 'PUBLISHED',
      p_comments             => null
    );

  ords.define_template(
      p_module_name          => 'eba.rest.emp',
      p_pattern              => 'emp',
      p_priority             => 0,
      p_etag_type            => 'HASH',
      p_etag_query           => null,
      p_comments             => null
    );

  ords.define_handler(
      p_module_name          => 'eba.rest.emp',
      p_pattern              => 'emp',
      p_method               => 'GET',
      p_source_type          => 'json/collection',
      p_mimes_allowed        => null,
      p_comments             => null,
      p_source               => 
        'select * from  eba_demo_rest_employee'
    );

  ords.define_template(
      p_module_name          => 'eba.rest.emp',
      p_pattern              => 'emp/:id',
      p_priority             => 0,
      p_etag_type            => 'HASH',
      p_etag_query           => null,
      p_comments             => null
    );

  ords.define_handler(
      p_module_name          => 'eba.rest.emp',
      p_pattern              => 'emp/:id',
      p_method               => 'PUT',
      p_source_type          => 'plsql/block',
      p_mimes_allowed        => 'application/json',
      p_comments             => null,
      p_source               => 
            'declare
                current_salary  eba_demo_rest_employee.sal%type;
                dept_name       eba_demo_rest_department.dname%type;
            begin
                select
                    e.sal,
                    d.dname
                into
                    current_salary,
                    dept_name
                from
                    eba_demo_rest_employee e
                    join eba_demo_rest_department d
                        on e.deptno = d.deptno
                where
                    e.empno = :id;

                if :sal < 0 then
                    htp.p(
                        ''{"status":400,"message":"New salary must be positive value."}''
                    );
                    return;
                end if;

                if current_salary >= 6000 then
                    htp.p(
                        ''{"status":400,"message":"No Update: Employee with salary.''
                        || current_salary
                        || '' is not authorized for a raise."}''
                    );
                    return;
                end if;

                if upper(dept_name) = ''RESEARCH'' then
                    htp.p(
                        ''{"status":400,"message":"No Update: Employees in research department are not eligible for a raise."}''
                    );
                    return;
                end if;

                update
                    eba_demo_rest_employee
                set
                    sal = :sal
                where
                    empno = :id;

                commit;

                htp.p(
                    ''{"status":200,"location":''
                    || :id
                    || '',"message":"Salary updated successfully."}''
                );
            exception
                when no_data_found then
                    htp.p(
                        ''{"status":404,"message":"Employee not found."}''
                    );
                when others then
                    rollback;
                    htp.p(
                        ''{"status":400,"message":"''
                        || sys.htf.escape_sc(sqlerrm)
                        || ''"}''
                    );
            end;
            ');

  ords.define_parameter(
      p_module_name          => 'eba.rest.emp',
      p_pattern              => 'emp/:id',
      p_method               => 'PUT',
      p_name                 => 'id',
      p_bind_variable_name   => 'id',
      p_source_type          => 'URI',
      p_param_type           => 'INT',
      p_access_method        => 'IN',
      p_comments             => null
    );

  ords.define_parameter(
      p_module_name          => 'eba.rest.emp',
      p_pattern              => 'emp/:id',
      p_method               => 'PUT',
      p_name                 => 'res',
      p_bind_variable_name   => 'res',
      p_source_type          => 'RESPONSE',
      p_param_type           => 'STRING',
      p_access_method        => 'OUT',
      p_comments             => null
    );

  ords.define_handler(
      p_module_name          => 'eba.rest.emp',
      p_pattern              => 'emp/:id',
      p_method               => 'GET',
      p_source_type          => 'json/collection',
      p_mimes_allowed        => null,
      p_comments             => null,
      p_source               => 
        'select * 
            from eba_demo_rest_employee '
    );

  ords.define_parameter(
      p_module_name          => 'eba.rest.emp',
      p_pattern              => 'emp/:id',
      p_method               => 'GET',
      p_name                 => 'id',
      p_bind_variable_name   => 'id',
      p_source_type          => 'URI',
      p_param_type           => 'INT',
      p_access_method        => 'IN',
      p_comments             => null
    );

  ords.define_template(
      p_module_name          => 'eba.rest.emp',
      p_pattern              => 'Pagination',
      p_priority             => 0,
      p_etag_type            => 'HASH',
      p_etag_query           => null,
      p_comments             => null
    );

  ords.define_handler(
      p_module_name          => 'eba.rest.emp',
      p_pattern              => 'Pagination',
      p_method               => 'GET',
      p_source_type          => 'json/collection',
      p_mimes_allowed        => null,
      p_comments             => null,
      p_source               => 
            'select
                level         as id,    
                case ora_hash(level, 3) + 1
                    when 1 then ''HR''
                    when 2 then ''SALES''
                    when 3 then ''DEVELOPMENT''
                    when 4 then ''QA''
                end           as dept,
                case ora_hash(level, 9) + 1
                    when 1 then 1500
                    when 2 then 2600
                    when 3 then 500
                    else 2000
                end           as sal,
                level         as rnum,
                round(dbms_random.value(100, 500), 0) as bonus,
                case mod(level, 5)
                    when 0 then ''Alvaro''
                    when 1 then ''Morata''
                    when 2 then ''Junior''
                    when 3 then ''Pathe''
                    when 4 then ''Antonyo''
                end           as name,
                case mod(level, 3)
                    when 0 then ''Active''
                    when 1 then ''On Leave''
                    when 2 then ''Retired''
                end           as status
             from sys.dual connect by level < 1000
            '
    );

  ords.define_module(
      p_module_name          => 'eba.rest.orders',
      p_base_path            => '/orders/',
      p_items_per_page       => 25,
      p_status               => 'PUBLISHED',
      p_comments             => null
    );

  ords.define_template(
      p_module_name          => 'eba.rest.orders',
      p_pattern              => 'purchaseorders/',
      p_priority             => 0,
      p_etag_type            => 'HASH',
      p_etag_query           => null,
      p_comments             => null
    );

  ords.define_handler(
      p_module_name          => 'eba.rest.orders',
      p_pattern              => 'purchaseorders/',
      p_method               => 'GET',
      p_source_type          => 'json/collection',
      p_mimes_allowed        => null,
      p_comments             => null,
      p_source               => 
        'select po 
            as "{}po" 
           from eba_demo_rest_purchaseorders '
    );

  ords.define_template(
      p_module_name          => 'eba.rest.orders',
      p_pattern              => 'product/:id',
      p_priority             => 0,
      p_etag_type            => 'HASH',
      p_etag_query           => null,
      p_comments             => null
    );

  ords.define_handler(
      p_module_name          => 'eba.rest.orders',
      p_pattern              => 'product/:id',
      p_method               => 'GET',
      p_source_type          => 'json/item',
      p_mimes_allowed        => null,
      p_comments             => null,
      p_source               => 
        'select * 
            from eba_demo_rest_producttable 
            where product_id = :id
        '
    );

  ords.define_parameter(
      p_module_name          => 'eba.rest.orders',
      p_pattern              => 'product/:id',
      p_method               => 'GET',
      p_name                 => 'id',
      p_bind_variable_name   => 'id',
      p_source_type          => 'URI',
      p_param_type           => 'INT',
      p_access_method        => 'IN',
      p_comments             => null
    );

  ords.define_template(
      p_module_name          => 'eba.rest.orders',
      p_pattern              => 'product_post',
      p_priority             => 0,
      p_etag_type            => 'HASH',
      p_etag_query           => null,
      p_comments             => null
    );

  ords.define_handler(
      p_module_name          => 'eba.rest.orders',
      p_pattern              => 'product_post',
      p_method               => 'POST',
      p_source_type          => 'plsql/block',
      p_mimes_allowed        => 'application/json',
      p_comments             => null,
      p_source               => 
        'insert into eba_demo_rest_order_workflow (
            user_id,
            product_name,
            product_details
        ) values (
            :USER_ID,
            :PRODUCT_NAME,
            :PRODUCT_DETAILS
        )
        '
    );

  ords.define_handler(
      p_module_name          => 'eba.rest.orders',
      p_pattern              => 'product_post',
      p_method               => 'GET',
      p_source_type          => 'json/item',
      p_mimes_allowed        => null,
      p_comments             => null,
      p_source               => 
        'select * 
            from eba_demo_rest_order_workflow
        '
    );

  ords_metadata.ords.enable_object(
      p_enabled              => true, 
      p_object               => 'EBA_DEMO_REST_EMPLOYEE',
      p_object_type          => 'TABLE',
      p_object_alias         => 'employee',
      p_auto_rest_auth       => false
    );

  ords_metadata.ords.enable_object(
      p_enabled              => true, 
      p_object               => 'EBA_DEMO_REST_ORDERS',
      p_object_type          => 'TABLE',
      p_object_alias         => 'orders',
      p_auto_rest_auth       => false
    );

  ords_metadata.ords.enable_object(
      p_enabled              => true, 
      p_object               => 'EBA_DEMO_REST_TASKS',
      p_object_type          => 'TABLE',
      p_object_alias         => 'tasks',
      p_auto_rest_auth       => false
    );

  ords_metadata.ords.enable_object(
      p_enabled              => true, 
      p_object               => 'EBA_DEMO_REST_DEPARTMENT',
      p_object_type          => 'TABLE',
      p_object_alias         => 'departments',
      p_auto_rest_auth       => false
    );

  ords_metadata.ords.enable_object(
      p_enabled              => true, 
      p_object               => 'EBA_DEMO_REST_STORES',
      p_object_type          => 'TABLE',
      p_object_alias         => 'stores',
      p_auto_rest_auth       => false
    );

  commit;
end;
