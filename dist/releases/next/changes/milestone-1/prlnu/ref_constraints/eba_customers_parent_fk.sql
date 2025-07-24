-- liquibase formatted sql
-- changeset PRLNU:1753338765547 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_customers_parent_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_customers_parent_fk.sql:null:d129a5e6c2222d5274c74df8f62c97185e9a3868:create

alter table eba_cust_customers
    add constraint eba_customers_parent_fk
        foreign key ( parent_customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;

