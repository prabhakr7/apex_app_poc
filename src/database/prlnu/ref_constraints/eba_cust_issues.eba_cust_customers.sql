alter table eba_cust_issues
    add
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"ab9f77e467f3e3081bac8565223dbc08cbb07bdd","type":"REF_CONSTRAINT","name":"EBA_CUST_ISSUES.EBA_CUST_CUSTOMERS","schemaName":"PRLNU","sxml":""}