create index eba_cust_customers_01 on
    eba_cust_customers (
        industry_id
    );


-- sqlcl_snapshot {"hash":"270fbf7457dce2cf1d2eaf39f0646d2aed56c9cf","type":"INDEX","name":"EBA_CUST_CUSTOMERS_01","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_CUSTOMERS_01</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_CUSTOMERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>INDUSTRY_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}