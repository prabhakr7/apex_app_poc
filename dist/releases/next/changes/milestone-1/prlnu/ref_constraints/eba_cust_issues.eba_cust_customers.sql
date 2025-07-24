-- liquibase formatted sql
-- changeset PRLNU:1753338765447 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_issues.eba_cust_customers.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_issues.eba_cust_customers.sql:null:ab9f77e467f3e3081bac8565223dbc08cbb07bdd:create

alter table eba_cust_issues
    add
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;

