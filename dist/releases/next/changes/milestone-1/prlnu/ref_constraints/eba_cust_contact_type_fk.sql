-- liquibase formatted sql
-- changeset PRLNU:1753338765383 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_contact_type_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_contact_type_fk.sql:null:d900af9a65b9729ec2f4dec34a80109555cbc740:create

alter table eba_cust_contacts
    add constraint eba_cust_contact_type_fk
        foreign key ( contact_type_id )
            references eba_cust_contact_types ( id )
                on delete cascade
        enable;

