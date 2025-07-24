-- liquibase formatted sql
-- changeset PRLNU:1753338765461 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_issues.eba_cust_products.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_issues.eba_cust_products.sql:null:3e53f6d27e8c78a77266fc97c1fb874830149f59:create

alter table eba_cust_issues
    add
        foreign key ( product_id )
            references eba_cust_products ( id )
                on delete cascade
        enable;

