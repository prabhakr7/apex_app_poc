-- liquibase formatted sql
-- changeset PRLNU:1753338766133 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_notifications.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_notifications.sql:null:19a2b65b6f03bcb870bd30272a15c42820fa12fa:create

create table eba_cust_notifications (
    id                       number not null enable,
    row_version_number       number,
    notification_name        varchar2(255 byte) not null enable,
    notification_description varchar2(4000 byte),
    notification_type        varchar2(30 byte) not null enable,
    display_sequence         number,
    display_from             timestamp(6) with time zone,
    display_until            timestamp(6) with time zone,
    created_by               varchar2(255 byte) not null enable,
    created                  timestamp(6) with time zone,
    updated_by               varchar2(255 byte) not null enable,
    updated                  timestamp(6) with time zone
);

alter table eba_cust_notifications
    add constraint eba_cust_notif_pk primary key ( id )
        using index enable;

alter table eba_cust_notifications
    add constraint eba_cust_notif_tp_cc
        check ( notification_type in ( 'RED', 'YELLOW' ) ) enable;

