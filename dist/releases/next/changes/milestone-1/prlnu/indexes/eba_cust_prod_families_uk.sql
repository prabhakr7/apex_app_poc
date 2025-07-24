-- liquibase formatted sql
-- changeset PRLNU:1753338759309 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_prod_families_uk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_prod_families_uk.sql:null:24bff52fbea42b17c4091bafd509b879659943bf:create

create unique index eba_cust_prod_families_uk on
    eba_cust_product_families (
        name
    );

