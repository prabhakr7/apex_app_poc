-- liquibase formatted sql
-- changeset PRLNU:1753338766220 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_products.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_products.sql:null:971a3e405af80218a1e3e12d775dbbe28a450a20:create

create table eba_cust_products (
    id                     number not null enable,
    row_version_number     number,
    product_family_id      number,
    product_name           varchar2(255 byte) not null enable,
    description            varchar2(4000 byte),
    tags                   varchar2(4000 byte),
    is_active              varchar2(1 byte) default 'Y',
    price_list_part_number varchar2(255 byte),
    created                timestamp(6) with time zone not null enable,
    created_by             varchar2(255 byte) not null enable,
    updated                timestamp(6) with time zone,
    updated_by             varchar2(255 byte)
);

create unique index eba_cust_products_uk on
    eba_cust_products (
        product_name
    );

alter table eba_cust_products
    add constraint eba_cust_products_pk primary key ( id )
        using index enable;

alter table eba_cust_products
    add constraint eba_cust_products_uk unique ( product_name )
        using index eba_cust_products_uk enable;

