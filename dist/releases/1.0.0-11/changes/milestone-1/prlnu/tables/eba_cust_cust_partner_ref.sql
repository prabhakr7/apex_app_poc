-- liquibase formatted sql
-- changeset PRLNU:1753338765827 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_cust_partner_ref.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_cust_partner_ref.sql:null:3eacfe44bc2f5c97d44ac9b28c7a714e8a9600b5:create

create table eba_cust_cust_partner_ref (
    id          number not null enable,
    customer_id number not null enable,
    partner_id  number not null enable,
    created     timestamp(6) with time zone not null enable,
    created_by  varchar2(255 byte) not null enable,
    updated     timestamp(6) with time zone,
    updated_by  varchar2(255 byte)
);

alter table eba_cust_cust_partner_ref
    add constraint eba_cust_cust_part_pk primary key ( id )
        using index enable;

