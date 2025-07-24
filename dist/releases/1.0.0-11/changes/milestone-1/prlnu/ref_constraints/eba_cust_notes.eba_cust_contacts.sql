-- liquibase formatted sql
-- changeset PRLNU:1753338765480 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_notes.eba_cust_contacts.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_notes.eba_cust_contacts.sql:null:ce0d193bf0112c8d9b890fac985075addb06b41a:create

alter table eba_cust_notes
    add
        foreign key ( contact_id )
            references eba_cust_contacts ( id )
                on delete cascade
        enable;

