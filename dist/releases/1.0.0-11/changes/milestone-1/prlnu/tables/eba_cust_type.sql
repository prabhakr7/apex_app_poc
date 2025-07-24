-- liquibase formatted sql
-- changeset PRLNU:1753338766379 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_type.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_type.sql:null:b37ecbd008bbd152a4292b4b290037e58c88fa65:create

create table eba_cust_type (
    id                 number not null enable,
    row_version_number number,
    type               varchar2(60 byte) not null enable,
    description        varchar2(4000 byte),
    is_active          varchar2(1 byte) default 'Y',
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

create unique index eba_cust_type_uk on
    eba_cust_type (
        type
    );

alter table eba_cust_type
    add constraint eba_cust_type_pk primary key ( id )
        using index enable;

alter table eba_cust_type
    add constraint eba_cust_type_uk unique ( type )
        using index eba_cust_type_uk enable;

