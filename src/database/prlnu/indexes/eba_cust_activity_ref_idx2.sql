create index eba_cust_activity_ref_idx2 on
    eba_cust_activity_ref (
        customer_id
    );


-- sqlcl_snapshot {"hash":"e8b9bf8bfbcc3f52e7993c3b6424a5b505866adf","type":"INDEX","name":"EBA_CUST_ACTIVITY_REF_IDX2","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_ACTIVITY_REF_IDX2</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_ACTIVITY_REF</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CUSTOMER_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}