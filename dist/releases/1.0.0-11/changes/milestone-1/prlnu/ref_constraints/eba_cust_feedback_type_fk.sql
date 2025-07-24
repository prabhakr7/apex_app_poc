-- liquibase formatted sql
-- changeset PRLNU:1753338765434 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_feedback_type_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_feedback_type_fk.sql:null:35c34a4ee87c64788ed772bbbfd63c073282940c:create

alter table eba_cust_feedback
    add constraint eba_cust_feedback_type_fk
        foreign key ( type_id )
            references eba_cust_feedback_types ( id )
        enable;

