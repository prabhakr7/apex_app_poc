alter table eba_cust_cust_partner_ref
    add constraint eba_cust_cust_part_fk
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"fb520e83e905e05b1fa227597baa1f1a91c95e46","type":"REF_CONSTRAINT","name":"EBA_CUST_CUST_PART_FK","schemaName":"PRLNU","sxml":""}