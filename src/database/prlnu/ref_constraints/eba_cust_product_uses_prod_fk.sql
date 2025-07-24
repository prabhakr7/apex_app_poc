alter table eba_cust_product_uses
    add constraint eba_cust_product_uses_prod_fk
        foreign key ( product_id )
            references eba_cust_products ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"04108ac08c84205e062f95c87d598f4ad89713c9","type":"REF_CONSTRAINT","name":"EBA_CUST_PRODUCT_USES_PROD_FK","schemaName":"PRLNU","sxml":""}