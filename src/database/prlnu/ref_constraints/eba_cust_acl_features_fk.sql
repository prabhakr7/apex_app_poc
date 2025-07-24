alter table eba_cust_acl_features
    add constraint eba_cust_acl_features_fk
        foreign key ( access_level_id )
            references eba_cust_access_levels ( id )
        enable;


-- sqlcl_snapshot {"hash":"41ee11eaae533387cc3c6eff5ed0712bbe62321d","type":"REF_CONSTRAINT","name":"EBA_CUST_ACL_FEATURES_FK","schemaName":"PRLNU","sxml":""}