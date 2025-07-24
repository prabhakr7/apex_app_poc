-- liquibase formatted sql
-- changeset PRLNU:1753338765996 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_geographies.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_geographies.sql:null:44111ea49acbfa1a780f0331d07aeb2a3dc310c2:create

create table eba_cust_geographies (
    id                 number not null enable,
    row_version_number number not null enable,
    geography_name     varchar2(255 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

create unique index eba_cust_geographies_uk on
    eba_cust_geographies (
        geography_name
    );

alter table eba_cust_geographies
    add constraint eba_cust_geographies_pk primary key ( id )
        using index enable;

alter table eba_cust_geographies
    add constraint eba_cust_geographies_uk unique ( geography_name )
        using index eba_cust_geographies_uk enable;

