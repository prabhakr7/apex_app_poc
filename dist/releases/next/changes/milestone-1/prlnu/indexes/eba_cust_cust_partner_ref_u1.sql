-- liquibase formatted sql
-- changeset PRLNU:1753338759174 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_cust_partner_ref_u1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_cust_partner_ref_u1.sql:null:05735ba2812fc4638c9932fb8d0b77c63f1f3234:create

create unique index eba_cust_cust_partner_ref_u1 on
    eba_cust_cust_partner_ref (
        customer_id,
        partner_id
    );

