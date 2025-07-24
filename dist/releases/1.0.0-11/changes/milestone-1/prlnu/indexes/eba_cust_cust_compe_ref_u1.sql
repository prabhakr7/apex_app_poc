-- liquibase formatted sql
-- changeset PRLNU:1753338759169 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_cust_compe_ref_u1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_cust_compe_ref_u1.sql:null:efd3f454359e066e8f00a4e8eabeabe2dbcee1c3:create

create unique index eba_cust_cust_compe_ref_u1 on
    eba_cust_cust_competitor_ref (
        customer_id,
        competitor_id
    );

