-- liquibase formatted sql
-- changeset PRLNU:1753338765842 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_customer_reftype_ref.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_customer_reftype_ref.sql:null:fb30696af2960780003851322f1186698058f1d0:create

create table eba_cust_customer_reftype_ref (
    id                number not null enable,
    customer_id       number not null enable,
    reference_type_id number not null enable,
    created           timestamp(6) with time zone not null enable,
    created_by        varchar2(255 byte) not null enable,
    updated           timestamp(6) with time zone,
    updated_by        varchar2(255 byte)
);

create unique index eba_cust_customer_reftype_uk on
    eba_cust_customer_reftype_ref (
        customer_id,
        reference_type_id
    );

alter table eba_cust_customer_reftype_ref
    add constraint eba_cust_customer_reftype_pk primary key ( id )
        using index enable;

alter table eba_cust_customer_reftype_ref
    add constraint eba_cust_customer_reftype_uk unique ( customer_id,
                                                         reference_type_id )
        using index eba_cust_customer_reftype_uk enable;

