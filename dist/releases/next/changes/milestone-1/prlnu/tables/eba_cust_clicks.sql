-- liquibase formatted sql
-- changeset PRLNU:1753338765720 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_clicks.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_clicks.sql:null:4fcca7cc405a4b96874a4e35e475ee3cecb2820f:create

create table eba_cust_clicks (
    id             number,
    cust_id        number,
    app_username   varchar2(255 byte),
    view_timestamp timestamp(6) with time zone,
    app_session    varchar2(255 byte)
);

alter table eba_cust_clicks add primary key ( id )
    using index enable;

