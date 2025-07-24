-- liquibase formatted sql
-- changeset PRLNU:1753338759242 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_errors_i1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_errors_i1.sql:null:ac1380daa13e18fe49528977919dd2f4eb7be518:create

create index eba_cust_errors_i1 on
    eba_cust_errors ( sys_extract_utc(err_time) );

