alter table eba_cust_activity_ref
    add constraint eba_cust_activity_ref_fk3
        foreign key ( contact_id )
            references eba_cust_contacts ( id )
                on delete set null
        enable;


-- sqlcl_snapshot {"hash":"c9b06bc6fc8828b16df1909bfbd1729daddedc51","type":"REF_CONSTRAINT","name":"EBA_CUST_ACTIVITY_REF_FK3","schemaName":"PRLNU","sxml":""}