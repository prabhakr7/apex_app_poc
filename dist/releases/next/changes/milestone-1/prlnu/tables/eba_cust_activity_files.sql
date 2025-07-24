-- liquibase formatted sql
-- changeset PRLNU:1753338765632 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_activity_files.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_activity_files.sql:null:eb4e86a0d670306ea7c23f519faba91793f68b08:create

create table eba_cust_activity_files (
    id                 number not null enable,
    row_version_number number not null enable,
    activity_id        number not null enable,
    file_name          varchar2(512 byte),
    file_mimetype      varchar2(512 byte),
    file_charset       varchar2(512 byte),
    file_last_update   date,
    file_blob          blob,
    file_comments      varchar2(4000 byte),
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

alter table eba_cust_activity_files
    add constraint eba_cust_activity_files_pk primary key ( id )
        using index enable;

