-- liquibase formatted sql
-- changeset PRLNU:1753338765494 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_prod_fam_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_prod_fam_fk.sql:null:ea589083eac9d0fde53c15aacfbb04e6c3a5d888:create

alter table eba_cust_products
    add constraint eba_cust_prod_fam_fk
        foreign key ( product_family_id )
            references eba_cust_product_families ( id )
                on delete cascade
        enable;

