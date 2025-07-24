-- liquibase formatted sql
-- changeset PRLNU:1753338759216 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_customers_07.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_customers_07.sql:null:983296a89a46c4a142f853ef0ececd7ea4c6e5f7:create

create index eba_cust_customers_07 on
    eba_cust_customers (
        parent_customer_id
    );

