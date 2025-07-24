-- liquibase formatted sql
-- changeset PRLNU:1753338766478 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_views_log.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_views_log.sql:null:b88def3302496540bf4c74cdcc10afbd3476995a:create

create table eba_cust_views_log (
    id                 number not null enable,
    row_version_number number,
    table_primary_id   number,
    view_type          varchar2(10 byte),
    view_count         number default 1,
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

alter table eba_cust_views_log
    add constraint eba_cust_views_log_pk primary key ( id )
        using index enable;

