-- liquibase formatted sql
-- changeset PRLNU:1753338765617 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_activities.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_activities.sql:null:af28f20787671e621b14a5b89d4ac71978536318:create

create table eba_cust_activities (
    id                 number not null enable,
    row_version_number number not null enable,
    type_id            number not null enable,
    name               varchar2(255 byte),
    description        varchar2(4000 byte),
    activity_date      date,
    owner              varchar2(255 byte),
    location           varchar2(4000 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

alter table eba_cust_activities
    add constraint eba_cust_activities_pk primary key ( id )
        using index enable;

