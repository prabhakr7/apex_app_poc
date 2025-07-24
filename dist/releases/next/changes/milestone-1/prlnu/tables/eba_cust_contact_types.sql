-- liquibase formatted sql
-- changeset PRLNU:1753338765751 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_contact_types.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_contact_types.sql:null:54f212b7c89638ebb164283e66b61edf440ab19c:create

create table eba_cust_contact_types (
    id                 number not null enable,
    row_version_number number,
    contact_type       varchar2(60 byte) not null enable,
    is_active          varchar2(1 byte) default 'Y',
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

create unique index eba_cust_contact_types_uk on
    eba_cust_contact_types (
        contact_type
    );

alter table eba_cust_contact_types
    add constraint eba_cust_contact_types_pk primary key ( id )
        using index enable;

alter table eba_cust_contact_types
    add constraint eba_cust_contact_types_uk unique ( contact_type )
        using index eba_cust_contact_types_uk enable;

