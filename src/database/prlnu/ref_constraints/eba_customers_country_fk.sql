alter table eba_cust_customers
    add constraint eba_customers_country_fk
        foreign key ( country_id )
            references eba_cust_countries ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"d63941805dcf31e97d9435a649fa6c476f53ecd6","type":"REF_CONSTRAINT","name":"EBA_CUSTOMERS_COUNTRY_FK","schemaName":"PRLNU","sxml":""}