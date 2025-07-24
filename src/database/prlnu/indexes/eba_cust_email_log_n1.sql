create index eba_cust_email_log_n1 on
    eba_cust_email_log (
        email_first_to
    );


-- sqlcl_snapshot {"hash":"6b0c07aab5d4bf3bde88d684e25e9213df72e959","type":"INDEX","name":"EBA_CUST_EMAIL_LOG_N1","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_EMAIL_LOG_N1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_EMAIL_LOG</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EMAIL_FIRST_TO</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}