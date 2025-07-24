-- liquibase formatted sql
-- changeset PRLNU:1753338765356 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_activity_ref_fk1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_activity_ref_fk1.sql:null:1965d77a174c03eef3b80bacd472ed0f786f33a5:create

alter table eba_cust_activity_ref
    add constraint eba_cust_activity_ref_fk1
        foreign key ( activity_id )
            references eba_cust_activities ( id )
                on delete cascade
        enable;

