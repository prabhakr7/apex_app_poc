-- liquibase formatted sql
-- changeset PRLNU:1753338765602 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_acl_features.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_acl_features.sql:null:3a825d3b51d746445d933440e37ee7aae22a3cf7:create

create table eba_cust_acl_features (
    id                 number not null enable,
    authorization_name varchar2(255 byte) not null enable,
    access_level_id    number not null enable,
    feature            varchar2(255 byte) not null enable,
    row_version        number,
    created_by         varchar2(255 byte) not null enable,
    created            timestamp(6) with time zone,
    updated_by         varchar2(255 byte),
    updated            timestamp(6) with time zone
);

alter table eba_cust_acl_features
    add constraint eba_cust_acl_features_pk primary key ( id )
        using index enable;

