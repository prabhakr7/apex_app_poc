-- liquibase formatted sql
-- changeset PRLNU:1753338765886 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_customers.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_customers.sql:null:21daccbb9b756eef1500aac539eeca98837c6cb8:create

create table eba_cust_customers (
    id                            number not null enable,
    parent_customer_id            number,
    row_version_number            number not null enable,
    row_key                       varchar2(60 byte) not null enable,
    customer_name                 varchar2(255 byte) not null enable,
    customer_name_upper           varchar2(255 byte) not null enable,
    customer_account_number       varchar2(255 byte),
    industry_id                   number,
    category_id                   number,
    status_id                     number,
    type_id                       number,
    use_case_id                   number,
    geography_id                  number,
    country_id                    number,
    default_timezone              varchar2(255 byte),
    referencable                  varchar2(30 byte),
    marquee_customer_yn           varchar2(1 byte),
    reference_phase_id            number,
    ref_recruitment_owner         varchar2(255 byte),
    strategic_customer_program_yn varchar2(1 byte) default 'N',
    tags                          varchar2(4000 byte),
    sales_channel_id              number,
    customer_products             varchar2(4000 byte),
    number_of_users               varchar2(60 byte),
    summary                       varchar2(4000 byte),
    customer_profile              clob,
    applications                  clob,
    logo_blob                     blob,
    logo_name                     varchar2(512 byte),
    logo_mimetype                 varchar2(512 byte),
    logo_charset                  varchar2(512 byte),
    logo_lastupd                  date,
    web_site                      varchar2(1000 byte),
    linkedin                      varchar2(1000 byte),
    facebook                      varchar2(1000 byte),
    twitter                       varchar2(1000 byte),
    stock_symbol                  varchar2(30 byte),
    total_contract_value          number,
    annual_recurring_revenue      number,
    currency                      varchar2(20 byte),
    discount_level                number,
    sic                           varchar2(30 byte),
    duns                          varchar2(30 byte),
    support_id                    varchar2(50 byte),
    party_id                      varchar2(50 byte),
    parent_party_id               varchar2(50 byte),
    party_name                    varchar2(255 byte),
    partent_party_name            varchar2(255 byte),
    created                       timestamp(6) with time zone not null enable,
    created_by                    varchar2(255 byte) not null enable,
    updated                       timestamp(6) with time zone,
    updated_by                    varchar2(255 byte)
);

create unique index eba_cust_customers_uk on
    eba_cust_customers (
        customer_name
    );

alter table eba_cust_customers
    add constraint eba_cust_customers_pk primary key ( id )
        using index enable;

alter table eba_cust_customers
    add constraint eba_cust_customers_uk unique ( customer_name )
        using index eba_cust_customers_uk enable;

