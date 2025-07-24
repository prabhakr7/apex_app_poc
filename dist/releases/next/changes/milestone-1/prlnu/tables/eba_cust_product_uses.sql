-- liquibase formatted sql
-- changeset PRLNU:1753338766203 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_product_uses.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_product_uses.sql:null:0ada1513d2b8938cf3aa8b75f3a6d84917d2435f:create

create table eba_cust_product_uses (
    id                  number not null enable,
    row_version_number  number not null enable,
    customer_id         number not null enable,
    product_id          number not null enable,
    reference_type_ids  varchar2(4000 byte),
    internal_contact    varchar2(255 byte),
    customer_contact_id number,
    reference_status_id number,
    valid_from          timestamp(6) with time zone,
    valid_to            timestamp(6) with time zone,
    comments            varchar2(4000 byte),
    created             timestamp(6) with time zone not null enable,
    created_by          varchar2(255 byte) not null enable,
    updated             timestamp(6) with time zone,
    updated_by          varchar2(255 byte)
);

alter table eba_cust_product_uses
    add constraint eba_cust_product_uses_pk primary key ( id )
        using index enable;

