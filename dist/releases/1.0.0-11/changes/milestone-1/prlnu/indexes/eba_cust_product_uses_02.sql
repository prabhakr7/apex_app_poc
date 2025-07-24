-- liquibase formatted sql
-- changeset PRLNU:1753338759319 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_product_uses_02.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_product_uses_02.sql:null:fa1458c3f073599c518ce3f0bf99df62666bb620:create

create index eba_cust_product_uses_02 on
    eba_cust_product_uses (
        product_id
    );

