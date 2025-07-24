-- liquibase formatted sql
-- changeset PRLNU:1753338765428 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_customers_industry_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_customers_industry_fk.sql:null:d6e1e790513c59b9279236251875f10924db3b45:create

alter table eba_cust_customers
    add constraint eba_cust_customers_industry_fk
        foreign key ( industry_id )
            references eba_cust_industries ( id )
                on delete cascade
        enable;

