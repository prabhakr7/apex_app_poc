-- liquibase formatted sql
-- changeset PRLNU:1753338766155 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_preferences.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_preferences.sql:null:7a8ae1c58ae7e4d4e4877bb6da2c266063413731:create

create table eba_cust_preferences (
    id               number not null enable,
    preference_name  varchar2(255 byte) not null enable,
    preference_value varchar2(255 byte),
    created_by       varchar2(255 byte) not null enable,
    created_on       timestamp(6) with time zone,
    updated_by       varchar2(255 byte),
    updated_on       timestamp(6) with time zone
);

alter table eba_cust_preferences
    add constraint eba_cust_preferences_pk primary key ( id )
        using index enable;

alter table eba_cust_preferences
    add constraint eba_cust_prefs_prefname_ck check ( upper(preference_name) = preference_name ) enable;

