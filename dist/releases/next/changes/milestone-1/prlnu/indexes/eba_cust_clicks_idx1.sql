-- liquibase formatted sql
-- changeset PRLNU:1753338759116 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_clicks_idx1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_clicks_idx1.sql:null:b79538536f4c0b0fb7e4bf21228a0d2b1584d7bc:create

create index eba_cust_clicks_idx1 on
    eba_cust_clicks (
        cust_id
    );

