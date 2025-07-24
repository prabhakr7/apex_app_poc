alter table eba_cust_customers
    add constraint eba_customers_category_fk
        foreign key ( category_id )
            references eba_cust_categories ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"f6ae1a3fa438026bd46181a967c13763b728fa8c","type":"REF_CONSTRAINT","name":"EBA_CUSTOMERS_CATEGORY_FK","schemaName":"PRLNU","sxml":""}