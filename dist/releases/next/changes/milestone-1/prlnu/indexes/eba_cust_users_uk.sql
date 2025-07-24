-- liquibase formatted sql
-- changeset PRLNU:1753338759331 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_users_uk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_users_uk.sql:null:c8ed30b19ac9796054e1c8e2a00a1e6ad8256e6e:create

create unique index eba_cust_users_uk on
    eba_cust_users (
        username
    );

