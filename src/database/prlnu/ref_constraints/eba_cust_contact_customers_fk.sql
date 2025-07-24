alter table eba_cust_contacts
    add constraint eba_cust_contact_customers_fk
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"2313da43c22a20d0cba4236944a16ac584ab663e","type":"REF_CONSTRAINT","name":"EBA_CUST_CONTACT_CUSTOMERS_FK","schemaName":"PRLNU","sxml":""}