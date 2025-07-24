-- liquibase formatted sql
-- changeset PRLNU:1753338766352 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_tags_sum.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_tags_sum.sql:null:ad4f2488329a67c929ff9f2f9bc83a653c15db2b:create

create table eba_cust_tags_sum (
    tag       varchar2(255 byte),
    tag_count number
);

alter table eba_cust_tags_sum
    add constraint eba_cust_tags_sum_pk primary key ( tag )
        using index enable;

