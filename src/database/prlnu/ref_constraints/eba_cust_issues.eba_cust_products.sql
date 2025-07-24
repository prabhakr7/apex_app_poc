alter table eba_cust_issues
    add
        foreign key ( product_id )
            references eba_cust_products ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"3e53f6d27e8c78a77266fc97c1fb874830149f59","type":"REF_CONSTRAINT","name":"EBA_CUST_ISSUES.EBA_CUST_PRODUCTS","schemaName":"PRLNU","sxml":""}