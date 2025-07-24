-- liquibase formatted sql
-- changeset PRLNU:1753338766363 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_tags_type_sum.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_tags_type_sum.sql:null:a47e4763f89a0de6aa3449d83bf8ad85667fb3b4:create

create table eba_cust_tags_type_sum (
    tag          varchar2(255 byte),
    content_type varchar2(30 byte),
    tag_count    number
);

alter table eba_cust_tags_type_sum
    add constraint eba_cust_tags_type_sum_pk primary key ( tag,
                                                           content_type )
        using index enable;

