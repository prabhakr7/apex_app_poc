-- liquibase formatted sql
-- changeset PRLNU:1753338765519 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_users_acc_level_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_users_acc_level_fk.sql:null:85c7afb5f2cea098dd266e7d4704edc7507611c7:create

alter table eba_cust_users
    add constraint eba_cust_users_acc_level_fk
        foreign key ( access_level_id )
            references eba_cust_access_levels ( id )
        enable;

