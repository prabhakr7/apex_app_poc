-- liquibase formatted sql
-- changeset PRLNU:1753338766173 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_product_families.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_product_families.sql:null:11e2f02e44889a7cdfd19f171f28ba4e5c8af845:create

create table eba_cust_product_families (
    id                 number not null enable,
    row_version_number number,
    name               varchar2(60 byte) not null enable,
    description        varchar2(4000 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

alter table eba_cust_product_families
    add constraint eba_cust_prod_families_pk primary key ( id )
        using index enable;

