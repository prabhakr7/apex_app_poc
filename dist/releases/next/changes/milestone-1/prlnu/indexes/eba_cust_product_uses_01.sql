-- liquibase formatted sql
-- changeset PRLNU:1753338759314 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_product_uses_01.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_product_uses_01.sql:null:34615999ad81ad3b13d6e00ec5bb46d19e5c0872:create

create index eba_cust_product_uses_01 on
    eba_cust_product_uses (
        customer_id
    );

