-- liquibase formatted sql
-- changeset PRLNU:1753338765661 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_activity_types.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_activity_types.sql:null:0f8ec92340be953c231d1eb0ebcf2d83ce586248:create

create table eba_cust_activity_types (
    id                 number not null enable,
    row_version_number number not null enable,
    name               varchar2(255 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

alter table eba_cust_activity_types
    add constraint eba_cust_activity_types_pk primary key ( id )
        using index enable;

