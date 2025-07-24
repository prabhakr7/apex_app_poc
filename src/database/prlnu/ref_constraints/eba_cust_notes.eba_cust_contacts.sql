alter table eba_cust_notes
    add
        foreign key ( contact_id )
            references eba_cust_contacts ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"ce0d193bf0112c8d9b890fac985075addb06b41a","type":"REF_CONSTRAINT","name":"EBA_CUST_NOTES.EBA_CUST_CONTACTS","schemaName":"PRLNU","sxml":""}