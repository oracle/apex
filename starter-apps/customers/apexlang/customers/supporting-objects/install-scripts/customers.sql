create table eba_cust_customers (
    id                            number         not null,
    parent_customer_id            number,
    row_version_number            number         not null,
    row_key                       varchar2(60)   not null,
    customer_name                 varchar2(255)  not null,
    customer_name_upper           varchar2(255)  not null,
    customer_account_number       varchar2(255),
    --
    industry_id                   number,
    category_id                   number,
    status_id                     number,
    type_id                       number,
    use_case_id                   number,
    geography_id                  number,
    country_id                    number,
    default_timezone              varchar2(255),
    --
    referencable                  varchar2(30),
    marquee_customer_yn           varchar2(1),
    reference_phase_id            number,
    ref_recruitment_owner         varchar2(255),
    strategic_customer_program_yn varchar2(1)    default 'N',
    --
    tags                          varchar2(4000),
    sales_channel_id              number,
    customer_products             varchar2(4000),
    number_of_users               varchar2(60),
    summary                       varchar2(4000),
    customer_profile              clob,
    applications                  clob,
    logo_blob                     blob,
    logo_name                     varchar2(512),
    logo_mimetype                 varchar2(512),
    logo_charset                  varchar2(512),
    logo_lastupd                  date,
    --
    web_site                      varchar2(1000),
    linkedin                      varchar2(1000),
    facebook                      varchar2(1000),
    twitter                       varchar2(1000),
    stock_symbol                  varchar2(30),
    total_contract_value          number,
    annual_recurring_revenue      number,
    currency                      varchar2(20),
    discount_level                number,
    sic                           varchar2(30),  -- standard industry code
    duns                          varchar2(30),  -- dun and bradstreet number
    --
    support_id                    varchar2(50),
    party_id                      varchar2(50),
    parent_party_id               varchar2(50),
    party_name                    varchar2(255),
    partent_party_name            varchar2(255),
    --
    created                       timestamp with time zone not null,
    created_by                    varchar2(255) not null,
    updated                       timestamp with time zone,
    updated_by                    varchar2(255)
)
/
alter table eba_cust_customers
    add constraint eba_cust_customers_pk
        primary key (id)
/
create unique index eba_cust_customers_uk on eba_cust_customers(customer_name)
/
alter table eba_cust_customers
    add constraint eba_cust_customers_uk
        unique (customer_name)
        using index eba_cust_customers_uk
/
alter table eba_cust_customers
    add constraint eba_cust_customers_industry_fk
        foreign key (industry_id)
        references eba_cust_industries (id) on delete cascade
/
alter table eba_cust_customers
    add constraint eba_customers_category_fk
        foreign key (category_id)
        references eba_cust_categories (id) on delete cascade
/
alter table eba_cust_customers
    add constraint eba_customers_status_fk
        foreign key (status_id)
        references eba_cust_status (id) on delete cascade
/
alter table eba_cust_customers
    add constraint eba_customers_type_fk
        foreign key (type_id)
        references eba_cust_type (id) on delete cascade
/
alter table eba_cust_customers
    add constraint eba_customers_use_case_fk
        foreign key (use_case_id)
        references eba_cust_use_case (id) on delete cascade
/
alter table eba_cust_customers
    add constraint eba_customers_geography_fk
        foreign key (geography_id)
        references eba_cust_geographies (id) on delete cascade
/
alter table eba_cust_customers
    add constraint eba_customers_country_fk
        foreign key (country_id)
        references eba_cust_countries (id) on delete cascade
/
alter table eba_cust_customers
    add constraint eba_customers_parent_fk
        foreign key (parent_customer_id)
        references eba_cust_customers (id) on delete cascade
/

create index eba_cust_customers_01 on eba_cust_customers (industry_id);
create index eba_cust_customers_02 on eba_cust_customers (category_id);
create index eba_cust_customers_03 on eba_cust_customers (status_id);
create index eba_cust_customers_04 on eba_cust_customers (geography_id,country_id);
create index eba_cust_customers_05 on eba_cust_customers (type_id);
create index eba_cust_customers_06 on eba_cust_customers (use_case_id);
create index eba_cust_customers_07 on eba_cust_customers (parent_customer_id);