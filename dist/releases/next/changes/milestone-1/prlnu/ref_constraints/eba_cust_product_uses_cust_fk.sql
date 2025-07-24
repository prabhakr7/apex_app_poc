-- liquibase formatted sql
-- changeset PRLNU:1753338765507 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_product_uses_cust_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_product_uses_cust_fk.sql:null:5799a8906ced5b2afa0a6ec3f2085156faecfe7d:create

alter table eba_cust_product_uses
    add constraint eba_cust_product_uses_cust_fk
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;

