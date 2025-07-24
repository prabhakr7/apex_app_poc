alter table eba_cust_notes
    add
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"0fe6a2343465601bb5889965477070f41875639a","type":"REF_CONSTRAINT","name":"EBA_CUST_NOTES.EBA_CUST_CUSTOMERS","schemaName":"PRLNU","sxml":""}