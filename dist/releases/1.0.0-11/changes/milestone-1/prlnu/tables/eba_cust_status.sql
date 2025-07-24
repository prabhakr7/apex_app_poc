-- liquibase formatted sql
-- changeset PRLNU:1753338766315 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_status.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_status.sql:null:313767ca83689e29b1989ebd656910483d63cfc2:create

create table eba_cust_status (
    id                 number not null enable,
    row_version_number number,
    status             varchar2(60 byte) not null enable,
    description        varchar2(4000 byte),
    is_active          varchar2(1 byte) default 'Y',
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

create unique index eba_cust_status_uk on
    eba_cust_status (
        status
    );

alter table eba_cust_status
    add constraint eba_cust_status_pk primary key ( id )
        using index enable;

alter table eba_cust_status
    add constraint eba_cust_status_uk unique ( status )
        using index eba_cust_status_uk enable;

