-- liquibase formatted sql
-- changeset PRLNU:1753338766266 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_reference_types.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_reference_types.sql:null:5b440867f5685ab6e33b92842f65bb5c4106c330:create

create table eba_cust_reference_types (
    id                 number not null enable,
    row_version_number number,
    reference_type     varchar2(60 byte) not null enable,
    is_active          varchar2(1 byte) default 'Y',
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

create unique index eba_cust_reference_types_uk on
    eba_cust_reference_types (
        reference_type
    );

alter table eba_cust_reference_types
    add constraint eba_cust_reference_types_pk primary key ( id )
        using index enable;

alter table eba_cust_reference_types
    add constraint eba_cust_reference_types_uk unique ( reference_type )
        using index eba_cust_reference_types_uk enable;

