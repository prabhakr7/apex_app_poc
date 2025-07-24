create index eba_cust_activity_ref_idx3 on
    eba_cust_activity_ref (
        contact_id
    );


-- sqlcl_snapshot {"hash":"62994b980195a86aaa59d1765d65b6ea987f3337","type":"INDEX","name":"EBA_CUST_ACTIVITY_REF_IDX3","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_ACTIVITY_REF_IDX3</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_ACTIVITY_REF</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CONTACT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}