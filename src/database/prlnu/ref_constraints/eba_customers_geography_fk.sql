alter table eba_cust_customers
    add constraint eba_customers_geography_fk
        foreign key ( geography_id )
            references eba_cust_geographies ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"87c236570cb82fe5c62d25fb95a30d0c5cf5d4b4","type":"REF_CONSTRAINT","name":"EBA_CUSTOMERS_GEOGRAPHY_FK","schemaName":"PRLNU","sxml":""}