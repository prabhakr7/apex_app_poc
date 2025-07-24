alter table eba_cust_cust_competitor_ref
    add constraint eba_cust_cust_competitor_fk2
        foreign key ( competitor_id )
            references eba_cust_competitors ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"6a5146da1cb2c2d790d45d2d898a6207ffbdb63d","type":"REF_CONSTRAINT","name":"EBA_CUST_CUST_COMPETITOR_FK2","schemaName":"PRLNU","sxml":""}