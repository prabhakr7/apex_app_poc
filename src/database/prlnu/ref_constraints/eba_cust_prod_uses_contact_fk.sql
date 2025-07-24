alter table eba_cust_product_uses
    add constraint eba_cust_prod_uses_contact_fk
        foreign key ( customer_contact_id )
            references eba_cust_contacts ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"72ecb15f8a991b9656a608245ad81bceef364f03","type":"REF_CONSTRAINT","name":"EBA_CUST_PROD_USES_CONTACT_FK","schemaName":"PRLNU","sxml":""}