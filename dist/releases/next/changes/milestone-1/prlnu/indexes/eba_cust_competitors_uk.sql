-- liquibase formatted sql
-- changeset PRLNU:1753338759130 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_competitors_uk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_competitors_uk.sql:null:fa5fb834fbaac0e5ca0fba6b8d77ca6ae065a8a2:create

create unique index eba_cust_competitors_uk on
    eba_cust_competitors (
        name
    );

