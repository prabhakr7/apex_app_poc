-- liquibase formatted sql
-- changeset PRLNU:1753338759267 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_impl_partners_uk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_impl_partners_uk.sql:null:4fa62c7e42dfc6904a28c470dbeae6e1a19e24fe:create

create unique index eba_cust_impl_partners_uk on
    eba_cust_impl_partners (
        name
    );

