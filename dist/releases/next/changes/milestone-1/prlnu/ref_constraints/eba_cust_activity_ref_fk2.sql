-- liquibase formatted sql
-- changeset PRLNU:1753338765363 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_activity_ref_fk2.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_activity_ref_fk2.sql:null:fb61f68028886ee0d918374a7c12dafc02c57581:create

alter table eba_cust_activity_ref
    add constraint eba_cust_activity_ref_fk2
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;

