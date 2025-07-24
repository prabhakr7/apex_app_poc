alter table eba_cust_customer_reftype_ref
    add constraint eba_cust_customer_reftype_fk1
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"3163693f5595d34a1e594d518598c1d7f5a83f3e","type":"REF_CONSTRAINT","name":"EBA_CUST_CUSTOMER_REFTYPE_FK1","schemaName":"PRLNU","sxml":""}