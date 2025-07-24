alter table eba_cust_product_uses
    add constraint eba_cust_product_uses_cust_fk
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"5799a8906ced5b2afa0a6ec3f2085156faecfe7d","type":"REF_CONSTRAINT","name":"EBA_CUST_PRODUCT_USES_CUST_FK","schemaName":"PRLNU","sxml":""}