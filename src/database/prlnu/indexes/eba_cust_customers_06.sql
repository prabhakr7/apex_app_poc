create index eba_cust_customers_06 on
    eba_cust_customers (
        use_case_id
    );


-- sqlcl_snapshot {"hash":"900b437d26632d6784359eca6a94f14a61857ac5","type":"INDEX","name":"EBA_CUST_CUSTOMERS_06","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_CUSTOMERS_06</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_CUSTOMERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>USE_CASE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}