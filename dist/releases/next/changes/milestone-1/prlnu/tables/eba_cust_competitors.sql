-- liquibase formatted sql
-- changeset PRLNU:1753338765735 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_competitors.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_competitors.sql:null:252ab47641248759af831d306519048bda0a96a4:create

create table eba_cust_competitors (
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

alter table eba_cust_competitors
    add constraint eba_cust_competitors_pk primary key ( id )
        using index enable;

