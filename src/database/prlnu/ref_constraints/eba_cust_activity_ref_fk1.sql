alter table eba_cust_activity_ref
    add constraint eba_cust_activity_ref_fk1
        foreign key ( activity_id )
            references eba_cust_activities ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"1965d77a174c03eef3b80bacd472ed0f786f33a5","type":"REF_CONSTRAINT","name":"EBA_CUST_ACTIVITY_REF_FK1","schemaName":"PRLNU","sxml":""}