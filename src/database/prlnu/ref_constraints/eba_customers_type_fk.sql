alter table eba_cust_customers
    add constraint eba_customers_type_fk
        foreign key ( type_id )
            references eba_cust_type ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"aa14ece956e063e90838d857d493ca6f48fb8901","type":"REF_CONSTRAINT","name":"EBA_CUSTOMERS_TYPE_FK","schemaName":"PRLNU","sxml":""}