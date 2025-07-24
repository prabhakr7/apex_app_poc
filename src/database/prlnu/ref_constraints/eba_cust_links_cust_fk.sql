alter table eba_cust_links
    add constraint eba_cust_links_cust_fk
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"57ed3c6e318454edc628719ff6696be2206fe43e","type":"REF_CONSTRAINT","name":"EBA_CUST_LINKS_CUST_FK","schemaName":"PRLNU","sxml":""}