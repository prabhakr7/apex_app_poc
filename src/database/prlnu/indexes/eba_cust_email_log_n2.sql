create index eba_cust_email_log_n2 on
    eba_cust_email_log (
        email_from
    );


-- sqlcl_snapshot {"hash":"6c9ba32cebe3476dcc293f73571590b94719796b","type":"INDEX","name":"EBA_CUST_EMAIL_LOG_N2","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_EMAIL_LOG_N2</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_EMAIL_LOG</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EMAIL_FROM</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}