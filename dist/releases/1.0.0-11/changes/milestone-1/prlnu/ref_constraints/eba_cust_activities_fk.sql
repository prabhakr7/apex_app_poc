-- liquibase formatted sql
-- changeset PRLNU:1753338765342 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_activities_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_activities_fk.sql:null:ce47ed817c2064f83ef2c8593945fc042f2874f0:create

alter table eba_cust_activities
    add constraint eba_cust_activities_fk
        foreign key ( type_id )
            references eba_cust_activity_types ( id )
        enable;

