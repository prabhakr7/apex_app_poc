-- liquibase formatted sql
-- changeset PRLNU:1753338765513 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_product_uses_prod_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_product_uses_prod_fk.sql:null:04108ac08c84205e062f95c87d598f4ad89713c9:create

alter table eba_cust_product_uses
    add constraint eba_cust_product_uses_prod_fk
        foreign key ( product_id )
            references eba_cust_products ( id )
                on delete cascade
        enable;

