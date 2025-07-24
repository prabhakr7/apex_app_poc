-- liquibase formatted sql
-- changeset PRLNU:1753338765526 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_customers_category_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_customers_category_fk.sql:null:f6ae1a3fa438026bd46181a967c13763b728fa8c:create

alter table eba_cust_customers
    add constraint eba_customers_category_fk
        foreign key ( category_id )
            references eba_cust_categories ( id )
                on delete cascade
        enable;

