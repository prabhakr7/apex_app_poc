-- liquibase formatted sql
-- changeset PRLNU:1753338765813 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_cust_competitor_ref.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_cust_competitor_ref.sql:null:f6ad065b79191aac437a31edf07e3cde8496c165:create

create table eba_cust_cust_competitor_ref (
    id            number not null enable,
    customer_id   number not null enable,
    competitor_id number not null enable,
    created       timestamp(6) with time zone not null enable,
    created_by    varchar2(255 byte) not null enable,
    updated       timestamp(6) with time zone,
    updated_by    varchar2(255 byte)
);

alter table eba_cust_cust_competitor_ref
    add constraint eba_cust_cust_competitor_pk primary key ( id )
        using index enable;

