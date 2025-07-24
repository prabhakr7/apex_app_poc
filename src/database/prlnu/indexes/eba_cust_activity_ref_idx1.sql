create index eba_cust_activity_ref_idx1 on
    eba_cust_activity_ref (
        activity_id
    );


-- sqlcl_snapshot {"hash":"1d716ba09568148b2842829dfa0dd780dad0beef","type":"INDEX","name":"EBA_CUST_ACTIVITY_REF_IDX1","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_ACTIVITY_REF_IDX1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_ACTIVITY_REF</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACTIVITY_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}