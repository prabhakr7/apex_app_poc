-- liquibase formatted sql
-- changeset PRLNU:1753338765909 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_email_log.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_email_log.sql:null:cfb204814dd375f6a710e1aec0b5b8bc71c39270:create

create table eba_cust_email_log (
    id                 number,
    row_version_number number,
    email_first_to     varchar2(255 byte),
    email_to           varchar2(4000 byte),
    email_from         varchar2(255 byte),
    body_size          number,
    customer_id        number,
    email_type         varchar2(30 byte),
    created            timestamp(6) with time zone,
    created_by         varchar2(255 byte),
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

alter table eba_cust_email_log add primary key ( id )
    using index enable;

