create index eba_cust_product_uses_01 on
    eba_cust_product_uses (
        customer_id
    );


-- sqlcl_snapshot {"hash":"34615999ad81ad3b13d6e00ec5bb46d19e5c0872","type":"INDEX","name":"EBA_CUST_PRODUCT_USES_01","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_PRODUCT_USES_01</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_PRODUCT_USES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CUSTOMER_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}