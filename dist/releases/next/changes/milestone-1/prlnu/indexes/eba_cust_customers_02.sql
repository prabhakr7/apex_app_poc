-- liquibase formatted sql
-- changeset PRLNU:1753338759184 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_customers_02.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_customers_02.sql:null:3a5ff3592b574d589c9103a1fcf9cf407a01132b:create

create index eba_cust_customers_02 on
    eba_cust_customers (
        category_id
    );

