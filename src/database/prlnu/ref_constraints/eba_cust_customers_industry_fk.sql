alter table eba_cust_customers
    add constraint eba_cust_customers_industry_fk
        foreign key ( industry_id )
            references eba_cust_industries ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"d6e1e790513c59b9279236251875f10924db3b45","type":"REF_CONSTRAINT","name":"EBA_CUST_CUSTOMERS_INDUSTRY_FK","schemaName":"PRLNU","sxml":""}