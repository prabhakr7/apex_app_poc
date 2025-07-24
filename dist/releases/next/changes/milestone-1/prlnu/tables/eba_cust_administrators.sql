-- liquibase formatted sql
-- changeset PRLNU:1753338765677 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_administrators.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_administrators.sql:null:b14d1bd63497a15e632324c9242a901948d521a3:create

create table eba_cust_administrators (
    id                 number not null enable,
    row_version_number number,
    app_user           varchar2(255 byte) not null enable,
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

create unique index eba_cust_administrators_uk on
    eba_cust_administrators (
        app_user
    );

alter table eba_cust_administrators
    add constraint eba_cust_administrators_pk primary key ( id )
        using index enable;

alter table eba_cust_administrators
    add constraint eba_cust_administrators_uk unique ( app_user )
        using index eba_cust_administrators_uk enable;

