-- liquibase formatted sql
-- changeset PRLNU:1753338759056 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_access_levels_uk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_access_levels_uk.sql:null:dd12b514ecb2cc58066a21741a5f396318320d76:create

create unique index eba_cust_access_levels_uk on
    eba_cust_access_levels (
        access_level
    );

