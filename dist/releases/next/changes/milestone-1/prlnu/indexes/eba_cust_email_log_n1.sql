-- liquibase formatted sql
-- changeset PRLNU:1753338759222 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_email_log_n1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_email_log_n1.sql:null:6b0c07aab5d4bf3bde88d684e25e9213df72e959:create

create index eba_cust_email_log_n1 on
    eba_cust_email_log (
        email_first_to
    );

