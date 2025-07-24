create unique index eba_cust_cust_partner_ref_u1 on
    eba_cust_cust_partner_ref (
        customer_id,
        partner_id
    );


-- sqlcl_snapshot {"hash":"05735ba2812fc4638c9932fb8d0b77c63f1f3234","type":"INDEX","name":"EBA_CUST_CUST_PARTNER_REF_U1","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_CUST_PARTNER_REF_U1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_CUST_PARTNER_REF</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CUSTOMER_ID</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>PARTNER_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}