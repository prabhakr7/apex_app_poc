-- liquibase formatted sql
-- changeset PRLNU:1753338765298 stripComments:false  logicalFilePath:milestone-1/prlnu/package_specs/eba_cust_email.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/package_specs/eba_cust_email.sql:null:a1ef35ed975921bedc76f3ba7c365385b7c2cc01:create

create or replace package eba_cust_email as
    procedure send_feedback_email (
        p_app_id        in number,
        p_page_id       in number,
        p_submitter     in varchar2,
        p_feedback_type in varchar2,
        p_feedback      in varchar2
    );

end eba_cust_email;
/

