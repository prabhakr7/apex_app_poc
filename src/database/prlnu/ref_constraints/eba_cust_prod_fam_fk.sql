alter table eba_cust_products
    add constraint eba_cust_prod_fam_fk
        foreign key ( product_family_id )
            references eba_cust_product_families ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"ea589083eac9d0fde53c15aacfbb04e6c3a5d888","type":"REF_CONSTRAINT","name":"EBA_CUST_PROD_FAM_FK","schemaName":"PRLNU","sxml":""}