alter table eba_cust_customers
    add constraint eba_customers_parent_fk
        foreign key ( parent_customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"d129a5e6c2222d5274c74df8f62c97185e9a3868","type":"REF_CONSTRAINT","name":"EBA_CUSTOMERS_PARENT_FK","schemaName":"PRLNU","sxml":""}