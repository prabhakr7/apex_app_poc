alter table eba_cust_contacts
    add constraint eba_cust_contact_type_fk
        foreign key ( contact_type_id )
            references eba_cust_contact_types ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"d900af9a65b9729ec2f4dec34a80109555cbc740","type":"REF_CONSTRAINT","name":"EBA_CUST_CONTACT_TYPE_FK","schemaName":"PRLNU","sxml":""}