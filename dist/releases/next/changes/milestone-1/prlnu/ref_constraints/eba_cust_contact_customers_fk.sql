-- liquibase formatted sql
-- changeset PRLNU:1753338765376 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_contact_customers_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_contact_customers_fk.sql:null:2313da43c22a20d0cba4236944a16ac584ab663e:create

alter table eba_cust_contacts
    add constraint eba_cust_contact_customers_fk
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;

