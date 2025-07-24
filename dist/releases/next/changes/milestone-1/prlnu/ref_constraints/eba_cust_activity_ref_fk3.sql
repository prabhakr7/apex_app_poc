-- liquibase formatted sql
-- changeset PRLNU:1753338765369 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_activity_ref_fk3.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_activity_ref_fk3.sql:null:c9b06bc6fc8828b16df1909bfbd1729daddedc51:create

alter table eba_cust_activity_ref
    add constraint eba_cust_activity_ref_fk3
        foreign key ( contact_id )
            references eba_cust_contacts ( id )
                on delete set null
        enable;

