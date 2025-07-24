-- liquibase formatted sql
-- changeset PRLNU:1753338759335 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_verify_idx1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_verify_idx1.sql:null:cda3a4b7d3e3e5c9a655016b77ce77765f8f3fa9:create

create index eba_cust_verify_idx1 on
    eba_cust_verifications (
        cust_id
    );

