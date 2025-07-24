create index eba_cust_customers_07 on
    eba_cust_customers (
        parent_customer_id
    );


-- sqlcl_snapshot {"hash":"983296a89a46c4a142f853ef0ececd7ea4c6e5f7","type":"INDEX","name":"EBA_CUST_CUSTOMERS_07","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_CUSTOMERS_07</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_CUSTOMERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>PARENT_CUSTOMER_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}