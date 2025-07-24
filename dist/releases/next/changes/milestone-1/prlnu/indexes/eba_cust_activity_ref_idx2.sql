-- liquibase formatted sql
-- changeset PRLNU:1753338759094 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_activity_ref_idx2.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_activity_ref_idx2.sql:null:e8b9bf8bfbcc3f52e7993c3b6424a5b505866adf:create

create index eba_cust_activity_ref_idx2 on
    eba_cust_activity_ref (
        customer_id
    );

