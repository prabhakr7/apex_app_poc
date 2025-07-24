-- liquibase formatted sql
-- changeset PRLNU:1753338765939 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_errors.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_errors.sql:null:4bf050a457439021df89368e09a090f404706bc2:create

create table eba_cust_errors (
    id              number not null enable,
    err_time        timestamp(6) with time zone default current_timestamp not null enable,
    app_id          number,
    app_page_id     number,
    app_user        varchar2(512 byte),
    user_agent      varchar2(4000 byte),
    ip_address      varchar2(512 byte),
    ip_address2     varchar2(512 byte),
    message         varchar2(4000 byte),
    page_item_name  varchar2(255 byte),
    region_id       number,
    column_alias    varchar2(255 byte),
    row_num         number,
    apex_error_code varchar2(255 byte),
    ora_sqlcode     number,
    ora_sqlerrm     varchar2(4000 byte),
    error_backtrace varchar2(4000 byte)
);

alter table eba_cust_errors
    add constraint eba_cust_errors_pk primary key ( id )
        using index enable;

