-- liquibase formatted sql
-- changeset PRLNU:1753338766187 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_product_statuses.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_product_statuses.sql:null:cb5d18f9f99d318c2ef9dfa673337e31e6bf706f:create

create table eba_cust_product_statuses (
    id            number not null enable,
    status        varchar2(255 byte),
    description   varchar2(512 byte),
    is_current_yn varchar2(1 byte),
    created       timestamp(6) with time zone not null enable,
    created_by    varchar2(255 byte) not null enable,
    updated       timestamp(6) with time zone,
    updated_by    varchar2(255 byte)
);

alter table eba_cust_product_statuses
    add constraint eba_cust_product_statuses_pk primary key ( id )
        using index enable;

