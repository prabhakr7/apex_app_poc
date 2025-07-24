-- liquibase formatted sql
-- changeset PRLNU:1753338766031 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_impl_partners.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_impl_partners.sql:null:422ae1f9b339df811a4a530a71173da3851fcce5:create

create table eba_cust_impl_partners (
    id                 number not null enable,
    row_version_number number,
    name               varchar2(250 byte) not null enable,
    description        varchar2(4000 byte),
    website            varchar2(512 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

alter table eba_cust_impl_partners
    add constraint eba_cust_impl_partners_pk primary key ( id )
        using index enable;

