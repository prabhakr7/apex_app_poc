-- liquibase formatted sql
-- changeset PRLNU:1753338765487 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_notes.eba_cust_customers.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_notes.eba_cust_customers.sql:null:0fe6a2343465601bb5889965477070f41875639a:create

alter table eba_cust_notes
    add
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;

