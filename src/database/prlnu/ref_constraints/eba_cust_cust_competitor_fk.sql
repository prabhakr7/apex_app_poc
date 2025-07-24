alter table eba_cust_cust_competitor_ref
    add constraint eba_cust_cust_competitor_fk
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"7e04b8ab616e2ce188f30edaed02c0d5ca9e17f0","type":"REF_CONSTRAINT","name":"EBA_CUST_CUST_COMPETITOR_FK","schemaName":"PRLNU","sxml":""}