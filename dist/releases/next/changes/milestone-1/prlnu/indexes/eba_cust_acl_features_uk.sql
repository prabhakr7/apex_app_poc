-- liquibase formatted sql
-- changeset PRLNU:1753338759063 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_acl_features_uk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_acl_features_uk.sql:null:da019b5ce490c351a5ea5cfebe0b789745352e75:create

create unique index eba_cust_acl_features_uk on
    eba_cust_acl_features (
        authorization_name
    );

