-- liquibase formatted sql
-- changeset PRLNU:1753338765389 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_cust_competitor_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_cust_competitor_fk.sql:null:7e04b8ab616e2ce188f30edaed02c0d5ca9e17f0:create

alter table eba_cust_cust_competitor_ref
    add constraint eba_cust_cust_competitor_fk
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;

