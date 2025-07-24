-- liquibase formatted sql
-- changeset PRLNU:1753338765566 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_customers_use_case_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_customers_use_case_fk.sql:null:56dda2e2dadd7e8dc752609fecc8d0ccdccb00d4:create

alter table eba_cust_customers
    add constraint eba_customers_use_case_fk
        foreign key ( use_case_id )
            references eba_cust_use_case ( id )
                on delete cascade
        enable;

