-- liquibase formatted sql
-- changeset PRLNU:1753338765648 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_activity_ref.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_activity_ref.sql:null:289b352b7b02bde8b219d66ed5690867faf7681b:create

create table eba_cust_activity_ref (
    id                 number not null enable,
    activity_id        number not null enable,
    customer_id        number not null enable,
    contact_id         number,
    activity_date      date,
    owner              varchar2(255 byte),
    location           varchar2(4000 byte),
    notes              varchar2(4000 byte),
    row_version_number number default 1 not null enable,
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

alter table eba_cust_activity_ref
    add constraint eba_cust_activity_ref_pk primary key ( id )
        using index enable;

