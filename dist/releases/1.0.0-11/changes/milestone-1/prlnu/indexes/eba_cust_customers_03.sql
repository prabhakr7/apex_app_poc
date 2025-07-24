-- liquibase formatted sql
-- changeset PRLNU:1753338759190 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_customers_03.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_customers_03.sql:null:54ce27711562f7fe18ea83079859b552c813a496:create

create index eba_cust_customers_03 on
    eba_cust_customers (
        status_id
    );

