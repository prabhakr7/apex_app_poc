-- liquibase formatted sql
-- changeset PRLNU:1753338766441 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_users.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_users.sql:null:e77389875bf22d614543212971a7960cc70addbb:create

create table eba_cust_users (
    id              number not null enable,
    username        varchar2(255 byte) not null enable,
    access_level_id number not null enable,
    account_locked  varchar2(1 byte) not null enable,
    row_version     number,
    created_by      varchar2(255 byte) not null enable,
    created         timestamp(6) with time zone,
    updated_by      varchar2(255 byte),
    updated         timestamp(6) with time zone
);

alter table eba_cust_users
    add constraint eba_cust_users_acc_locked_ck
        check ( account_locked in ( 'Y', 'N' ) ) enable;

alter table eba_cust_users
    add constraint eba_cust_users_pk primary key ( id )
        using index enable;

alter table eba_cust_users
    add constraint eba_cust_users_username_ck check ( upper(username) = username ) enable;

