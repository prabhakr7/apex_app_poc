-- liquibase formatted sql
-- changeset PRLNU:1753338765349 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_activity_files_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_activity_files_fk.sql:null:c55494068092a785e57a8a67bec980dfa2ade48d:create

alter table eba_cust_activity_files
    add constraint eba_cust_activity_files_fk
        foreign key ( activity_id )
            references eba_cust_activities ( id )
                on delete cascade
        enable;

