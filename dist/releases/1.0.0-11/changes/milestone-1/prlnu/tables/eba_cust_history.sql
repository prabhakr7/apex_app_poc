-- liquibase formatted sql
-- changeset PRLNU:1753338766018 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_history.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_history.sql:null:6c8968a32f4b44cfb96862b994043c8ddf2acebb:create

create table eba_cust_history (
    id                 number,
    row_version_number number,
    table_name         varchar2(255 byte),
    component_id       number,
    component_rowkey   varchar2(30 byte),
    column_name        varchar2(60 byte) not null enable,
    old_value          varchar2(4000 byte),
    new_value          varchar2(4000 byte),
    change_date        timestamp(6) with time zone,
    changed_by         varchar2(255 byte)
);

alter table eba_cust_history
    add constraint eba_cust_history_pk primary key ( id )
        using index enable;

