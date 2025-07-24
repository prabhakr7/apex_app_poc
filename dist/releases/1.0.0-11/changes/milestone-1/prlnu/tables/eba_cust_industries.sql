-- liquibase formatted sql
-- changeset PRLNU:1753338766046 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_industries.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_industries.sql:null:15dffbf9cdb630fb9c6afd6bf9e7e0425b37f5d4:create

create table eba_cust_industries (
    id                 number not null enable,
    row_version_number number,
    industry_name      varchar2(255 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

create unique index eba_cust_industries_uk on
    eba_cust_industries (
        industry_name
    );

alter table eba_cust_industries
    add constraint eba_cust_industries_pk primary key ( id )
        using index enable;

alter table eba_cust_industries
    add constraint eba_cust_industries_uk unique ( industry_name )
        using index eba_cust_industries_uk enable;

