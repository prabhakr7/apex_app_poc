-- liquibase formatted sql
-- changeset PRLNU:1753338765454 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_issues.eba_cust_issue_statuses.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_issues.eba_cust_issue_statuses.sql:null:25c70f36c0e38b5177c13a45c4724b61e7ee9914:create

alter table eba_cust_issues
    add
        foreign key ( status_id )
            references eba_cust_issue_statuses ( id )
                on delete cascade
        enable;

