-- liquibase formatted sql
-- changeset PRLNU:1753338759228 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_email_log_n2.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_email_log_n2.sql:null:6c9ba32cebe3476dcc293f73571590b94719796b:create

create index eba_cust_email_log_n2 on
    eba_cust_email_log (
        email_from
    );

