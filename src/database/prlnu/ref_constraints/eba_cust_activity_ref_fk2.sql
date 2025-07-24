alter table eba_cust_activity_ref
    add constraint eba_cust_activity_ref_fk2
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"fb61f68028886ee0d918374a7c12dafc02c57581","type":"REF_CONSTRAINT","name":"EBA_CUST_ACTIVITY_REF_FK2","schemaName":"PRLNU","sxml":""}