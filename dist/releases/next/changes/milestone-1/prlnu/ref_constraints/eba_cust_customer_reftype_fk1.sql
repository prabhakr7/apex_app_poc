-- liquibase formatted sql
-- changeset PRLNU:1753338765415 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_customer_reftype_fk1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_customer_reftype_fk1.sql:null:3163693f5595d34a1e594d518598c1d7f5a83f3e:create

alter table eba_cust_customer_reftype_ref
    add constraint eba_cust_customer_reftype_fk1
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;

