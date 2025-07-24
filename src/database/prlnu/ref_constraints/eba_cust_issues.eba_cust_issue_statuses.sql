alter table eba_cust_issues
    add
        foreign key ( status_id )
            references eba_cust_issue_statuses ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"25c70f36c0e38b5177c13a45c4724b61e7ee9914","type":"REF_CONSTRAINT","name":"EBA_CUST_ISSUES.EBA_CUST_ISSUE_STATUSES","schemaName":"PRLNU","sxml":""}