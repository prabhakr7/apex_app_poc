-- liquibase formatted sql
-- changeset PRLNU:1753338759254 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_files_01.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_files_01.sql:null:cfae4f223e5fe8714a349fb433de38b09f0bcd9a:create

create index eba_cust_files_01 on
    eba_cust_files (
        customer_id
    );

