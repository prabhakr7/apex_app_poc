-- liquibase formatted sql
-- changeset PRLNU:1753338766337 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_tags.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_tags.sql:null:af1ba69a221cd9a6010fd7e92196d1941dc6d361:create

create table eba_cust_tags (
    tag_id       number not null enable,
    tag          varchar2(255 byte) not null enable,
    content_id   number,
    content_type varchar2(30 byte),
    created      timestamp(6) with time zone not null enable,
    created_by   varchar2(255 byte) not null enable,
    updated      timestamp(6) with time zone,
    updated_by   varchar2(255 byte)
);

alter table eba_cust_tags
    add constraint eba_cust_tags_ck
        check ( content_type in ( 'CUSTOMER', 'CONTACT', 'PRODUCT', 'FILE' ) ) enable;

alter table eba_cust_tags
    add constraint eba_cust_tags_pk primary key ( tag_id )
        using index enable;

