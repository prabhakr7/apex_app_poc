-- liquibase formatted sql
-- changeset PRLNU:1753338759210 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_customers_06.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_customers_06.sql:null:900b437d26632d6784359eca6a94f14a61857ac5:create

create index eba_cust_customers_06 on
    eba_cust_customers (
        use_case_id
    );

