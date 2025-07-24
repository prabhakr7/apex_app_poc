-- liquibase formatted sql
-- changeset PRLNU:1753338759236 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_error_lookup_uk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_error_lookup_uk.sql:null:10627d4b786c6a258e69153a38a9d90dfb7eee52:create

create unique index eba_cust_error_lookup_uk on
    eba_cust_error_lookup (
        constraint_name,
        language_code
    );

