-- liquibase formatted sql
-- changeset PRLNU:1753338759198 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_customers_04.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_customers_04.sql:null:a25736f7c1660a83fabde874af35cd0841088f52:create

create index eba_cust_customers_04 on
    eba_cust_customers (
        geography_id,
        country_id
    );

