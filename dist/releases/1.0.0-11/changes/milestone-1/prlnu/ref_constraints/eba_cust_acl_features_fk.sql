-- liquibase formatted sql
-- changeset PRLNU:1753338765336 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_acl_features_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_acl_features_fk.sql:null:41ee11eaae533387cc3c6eff5ed0712bbe62321d:create

alter table eba_cust_acl_features
    add constraint eba_cust_acl_features_fk
        foreign key ( access_level_id )
            references eba_cust_access_levels ( id )
        enable;

