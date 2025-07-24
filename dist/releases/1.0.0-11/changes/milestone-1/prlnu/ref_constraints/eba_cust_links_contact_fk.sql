-- liquibase formatted sql
-- changeset PRLNU:1753338765467 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_links_contact_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_links_contact_fk.sql:null:4c94203513a508fdc94cc7ab6fde87cca85eda06:create

alter table eba_cust_links
    add constraint eba_cust_links_contact_fk
        foreign key ( contact_id )
            references eba_cust_contacts ( id )
                on delete cascade
        enable;

