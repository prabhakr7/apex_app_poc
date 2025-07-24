-- liquibase formatted sql
-- changeset PRLNU:1753338765500 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_prod_uses_contact_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_prod_uses_contact_fk.sql:null:72ecb15f8a991b9656a608245ad81bceef364f03:create

alter table eba_cust_product_uses
    add constraint eba_cust_prod_uses_contact_fk
        foreign key ( customer_contact_id )
            references eba_cust_contacts ( id )
                on delete cascade
        enable;

