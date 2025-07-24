create index eba_cust_feedback_type_idx on
    eba_cust_feedback (
        type_id
    );


-- sqlcl_snapshot {"hash":"5be94e83bc261ac9c1a33d5b803e17be2c010f65","type":"INDEX","name":"EBA_CUST_FEEDBACK_TYPE_IDX","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_FEEDBACK_TYPE_IDX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_FEEDBACK</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>TYPE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}