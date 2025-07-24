alter table eba_cust_files
    add constraint eba_cust_files_fk
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"fde228bc5955f8f83a172bdaefa62f92cf10f4fa","type":"REF_CONSTRAINT","name":"EBA_CUST_FILES_FK","schemaName":"PRLNU","sxml":""}