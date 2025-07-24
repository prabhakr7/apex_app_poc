-- liquibase formatted sql
-- changeset PRLNU:1753338759179 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_customers_01.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_customers_01.sql:null:270fbf7457dce2cf1d2eaf39f0646d2aed56c9cf:create

create index eba_cust_customers_01 on
    eba_cust_customers (
        industry_id
    );

