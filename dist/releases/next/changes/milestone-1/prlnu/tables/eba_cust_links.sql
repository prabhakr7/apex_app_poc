-- liquibase formatted sql
-- changeset PRLNU:1753338766103 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_links.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_links.sql:null:be7bea8f062ddc826f32ec3f04864306ca340646:create

create table eba_cust_links (
    id                 number not null enable,
    row_version_number number,
    customer_id        number not null enable,
    contact_id         number,
    link               varchar2(4000 byte) not null enable,
    link_desc          varchar2(255 byte),
    link_type          varchar2(10 byte),
    link_comments      varchar2(4000 byte),
    tags               varchar2(4000 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

alter table eba_cust_links
    add constraint eba_cust_links_pk primary key ( id )
        using index enable;

