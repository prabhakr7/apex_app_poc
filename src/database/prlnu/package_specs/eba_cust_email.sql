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


-- sqlcl_snapshot {"hash":"a1ef35ed975921bedc76f3ba7c365385b7c2cc01","type":"PACKAGE_SPEC","name":"EBA_CUST_EMAIL","schemaName":"PRLNU","sxml":""}