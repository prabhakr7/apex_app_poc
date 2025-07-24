create unique index eba_cust_cust_compe_ref_u1 on
    eba_cust_cust_competitor_ref (
        customer_id,
        competitor_id
    );


-- sqlcl_snapshot {"hash":"efd3f454359e066e8f00a4e8eabeabe2dbcee1c3","type":"INDEX","name":"EBA_CUST_CUST_COMPE_REF_U1","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_CUST_COMPE_REF_U1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_CUST_COMPETITOR_REF</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CUSTOMER_ID</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>COMPETITOR_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}