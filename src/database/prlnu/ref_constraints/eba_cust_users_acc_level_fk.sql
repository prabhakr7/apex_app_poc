alter table eba_cust_users
    add constraint eba_cust_users_acc_level_fk
        foreign key ( access_level_id )
            references eba_cust_access_levels ( id )
        enable;


-- sqlcl_snapshot {"hash":"85c7afb5f2cea098dd266e7d4704edc7507611c7","type":"REF_CONSTRAINT","name":"EBA_CUST_USERS_ACC_LEVEL_FK","schemaName":"PRLNU","sxml":""}