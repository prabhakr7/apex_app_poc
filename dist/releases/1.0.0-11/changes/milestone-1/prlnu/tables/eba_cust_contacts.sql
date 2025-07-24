-- liquibase formatted sql
-- changeset PRLNU:1753338765780 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_contacts.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_contacts.sql:null:9514335052f48d1e937c21d4567a49683468c54e:create

create table eba_cust_contacts (
    id                 number not null enable,
    row_version_number number,
    customer_id        number not null enable,
    name               varchar2(255 byte) not null enable,
    title              varchar2(100 byte),
    company            varchar2(100 byte),
    address_line1      varchar2(255 byte),
    address_line2      varchar2(255 byte),
    city               varchar2(100 byte),
    state              varchar2(100 byte),
    country            varchar2(100 byte),
    zip                varchar2(30 byte),
    email              varchar2(250 byte),
    phone              varchar2(100 byte),
    cell_phone         varchar2(100 byte),
    fax                varchar2(100 byte),
    contact_type_id    number,
    notes              varchar2(4000 byte),
    facebook           varchar2(4000 byte),
    linkedin           varchar2(4000 byte),
    twitter            varchar2(4000 byte),
    tags               varchar2(4000 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

alter table eba_cust_contacts
    add constraint eba_cust_contacts_pk primary key ( id )
        using index enable;

