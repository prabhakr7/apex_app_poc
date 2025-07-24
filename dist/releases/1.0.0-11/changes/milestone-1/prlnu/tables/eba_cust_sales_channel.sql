-- liquibase formatted sql
-- changeset PRLNU:1753338766290 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_sales_channel.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_sales_channel.sql:null:406d8d9db56746f305625f47194ce310ebd81bb9:create

create table eba_cust_sales_channel (
    id          number not null enable,
    channel     varchar2(60 byte) not null enable,
    description varchar2(4000 byte),
    created     timestamp(6) with time zone not null enable,
    created_by  varchar2(255 byte) not null enable,
    updated     timestamp(6) with time zone,
    updated_by  varchar2(255 byte)
);

create unique index eba_cust_sales_channel_uk on
    eba_cust_sales_channel (
        channel
    );

alter table eba_cust_sales_channel
    add constraint eba_cust_sales_channel_pk primary key ( id )
        using index enable;

alter table eba_cust_sales_channel
    add constraint eba_cust_sales_channel_uk unique ( channel )
        using index eba_cust_sales_channel_uk enable;

