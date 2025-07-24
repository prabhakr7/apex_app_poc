-- liquibase formatted sql
-- changeset PRLNU:1753338759272 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_links_01.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_links_01.sql:null:68feeffc236ed0fd18a18c2623b951e491f82dce:create

create index eba_cust_links_01 on
    eba_cust_links (
        customer_id
    );

