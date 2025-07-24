-- liquibase formatted sql
-- changeset PRLNU:1753338765553 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_customers_status_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_customers_status_fk.sql:null:1651e28e31a4c279b661cc9f36d6eaefce672c63:create

alter table eba_cust_customers
    add constraint eba_customers_status_fk
        foreign key ( status_id )
            references eba_cust_status ( id )
                on delete cascade
        enable;

