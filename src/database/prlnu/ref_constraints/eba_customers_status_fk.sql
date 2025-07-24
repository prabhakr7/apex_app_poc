alter table eba_cust_customers
    add constraint eba_customers_status_fk
        foreign key ( status_id )
            references eba_cust_status ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"1651e28e31a4c279b661cc9f36d6eaefce672c63","type":"REF_CONSTRAINT","name":"EBA_CUSTOMERS_STATUS_FK","schemaName":"PRLNU","sxml":""}