alter table eba_cust_links
    add constraint eba_cust_links_contact_fk
        foreign key ( contact_id )
            references eba_cust_contacts ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"4c94203513a508fdc94cc7ab6fde87cca85eda06","type":"REF_CONSTRAINT","name":"EBA_CUST_LINKS_CONTACT_FK","schemaName":"PRLNU","sxml":""}