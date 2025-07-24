create index eba_cust_product_uses_02 on
    eba_cust_product_uses (
        product_id
    );


-- sqlcl_snapshot {"hash":"fa1458c3f073599c518ce3f0bf99df62666bb620","type":"INDEX","name":"EBA_CUST_PRODUCT_USES_02","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_PRODUCT_USES_02</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_PRODUCT_USES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>PRODUCT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}