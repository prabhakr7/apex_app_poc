alter table eba_cust_activities
    add constraint eba_cust_activities_fk
        foreign key ( type_id )
            references eba_cust_activity_types ( id )
        enable;


-- sqlcl_snapshot {"hash":"ce47ed817c2064f83ef2c8593945fc042f2874f0","type":"REF_CONSTRAINT","name":"EBA_CUST_ACTIVITIES_FK","schemaName":"PRLNU","sxml":""}