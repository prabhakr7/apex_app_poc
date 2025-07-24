alter table eba_cust_customer_reftype_ref
    add constraint eba_cust_customer_reftype_fk2
        foreign key ( reference_type_id )
            references eba_cust_reference_types ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"6eafd9cde13178d6322ccd0dd6e97d58ee117b33","type":"REF_CONSTRAINT","name":"EBA_CUST_CUSTOMER_REFTYPE_FK2","schemaName":"PRLNU","sxml":""}