-- liquibase formatted sql
-- changeset PRLNU:1753338765795 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_countries.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_countries.sql:null:c6522115a339caf3b64a3d76d0d9b32920e0255a:create

create table eba_cust_countries (
    id                 number,
    country_code       varchar2(30 byte) not null enable,
    country_name       varchar2(255 byte) not null enable,
    region_id          number,
    display_yn         varchar2(1 byte),
    row_version_number number,
    created            timestamp(6) with time zone,
    created_by         varchar2(255 byte),
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

alter table eba_cust_countries
    add constraint eba_cust_countries_disp_cc
        check ( display_yn in ( 'Y', 'N' ) ) enable;

alter table eba_cust_countries add primary key ( id )
    using index enable;

