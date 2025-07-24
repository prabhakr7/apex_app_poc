-- liquibase formatted sql
-- changeset PRLNU:1753338766402 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_tz_pref.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_tz_pref.sql:null:a714db57cd8bd0cac331bab8c05c33d724f6160f:create

create table eba_cust_tz_pref (
    id                  number not null enable,
    row_version_number  number(*, 0),
    userid              varchar2(255 byte) not null enable,
    timezone_preference varchar2(255 byte) not null enable,
    created             timestamp(6) with time zone,
    created_by          varchar2(255 byte),
    updated             timestamp(6) with time zone,
    updated_by          varchar2(255 byte)
);

alter table eba_cust_tz_pref
    add constraint eba_cust_tz_pref_pk primary key ( id )
        using index enable;

