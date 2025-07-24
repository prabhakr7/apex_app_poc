-- liquibase formatted sql
-- changeset PRLNU:1753338759109 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_activity_types_uk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_activity_types_uk.sql:null:27b84ba7a1d646923012b98a216b34f5905ea998:create

create unique index eba_cust_activity_types_uk on
    eba_cust_activity_types (
        name
    );

