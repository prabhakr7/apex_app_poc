alter table eba_cust_activity_files
    add constraint eba_cust_activity_files_fk
        foreign key ( activity_id )
            references eba_cust_activities ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"c55494068092a785e57a8a67bec980dfa2ade48d","type":"REF_CONSTRAINT","name":"EBA_CUST_ACTIVITY_FILES_FK","schemaName":"PRLNU","sxml":""}