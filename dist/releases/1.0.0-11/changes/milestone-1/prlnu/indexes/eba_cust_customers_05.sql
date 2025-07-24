-- liquibase formatted sql
-- changeset PRLNU:1753338759204 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_customers_05.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_customers_05.sql:null:930a8fdbab09e4331937c2d268e16ada2aa8d16a:create

create index eba_cust_customers_05 on
    eba_cust_customers (
        type_id
    );

