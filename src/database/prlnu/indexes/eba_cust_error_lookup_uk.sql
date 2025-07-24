create unique index eba_cust_error_lookup_uk on
    eba_cust_error_lookup (
        constraint_name,
        language_code
    );


-- sqlcl_snapshot {"hash":"10627d4b786c6a258e69153a38a9d90dfb7eee52","type":"INDEX","name":"EBA_CUST_ERROR_LOOKUP_UK","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_ERROR_LOOKUP_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_ERROR_LOOKUP</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CONSTRAINT_NAME</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>LANGUAGE_CODE</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}