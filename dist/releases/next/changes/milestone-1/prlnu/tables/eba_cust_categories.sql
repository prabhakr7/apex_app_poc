-- liquibase formatted sql
-- changeset PRLNU:1753338765701 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_categories.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_categories.sql:null:02adc5685d16bbb50f735a8d7ad90ed2d1a1052a:create

create table eba_cust_categories (
    id                 number not null enable,
    row_version_number number,
    category           varchar2(60 byte) not null enable,
    description        varchar2(255 byte),
    is_active          varchar2(1 byte) default 'Y',
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

create unique index eba_cust_categories_uk on
    eba_cust_categories (
        category
    );

alter table eba_cust_categories
    add constraint eba_cust_categories_pk primary key ( id )
        using index enable;

alter table eba_cust_categories
    add constraint eba_cust_categories_uk unique ( category )
        using index eba_cust_categories_uk enable;

