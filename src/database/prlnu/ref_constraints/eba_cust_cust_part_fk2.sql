alter table eba_cust_cust_partner_ref
    add constraint eba_cust_cust_part_fk2
        foreign key ( partner_id )
            references eba_cust_impl_partners ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"4b7d7ed7945839610933957efe2db699a484f7aa","type":"REF_CONSTRAINT","name":"EBA_CUST_CUST_PART_FK2","schemaName":"PRLNU","sxml":""}