-- liquibase formatted sql
-- changeset PRLNU:1753338765422 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_customer_reftype_fk2.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_customer_reftype_fk2.sql:null:6eafd9cde13178d6322ccd0dd6e97d58ee117b33:create

alter table eba_cust_customer_reftype_ref
    add constraint eba_cust_customer_reftype_fk2
        foreign key ( reference_type_id )
            references eba_cust_reference_types ( id )
                on delete cascade
        enable;

