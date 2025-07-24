alter table eba_cust_customers
    add constraint eba_customers_use_case_fk
        foreign key ( use_case_id )
            references eba_cust_use_case ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"56dda2e2dadd7e8dc752609fecc8d0ccdccb00d4","type":"REF_CONSTRAINT","name":"EBA_CUSTOMERS_USE_CASE_FK","schemaName":"PRLNU","sxml":""}