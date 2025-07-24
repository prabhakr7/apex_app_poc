-- liquibase formatted sql
-- changeset PRLNU:1753338766117 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_notes.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_notes.sql:null:24473317f3363f19ece81aff2ce3531d0e082d20:create

create table eba_cust_notes (
    id                 number,
    row_version_number number not null enable,
    customer_id        number not null enable,
    contact_id         number,
    note_date          date,
    note               clob,
    tags               varchar2(4000 byte),
    created            timestamp(6) with time zone,
    created_by         varchar2(255 byte),
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

alter table eba_cust_notes
    add constraint eba_cust_notes_pk primary key ( id )
        using index enable;

