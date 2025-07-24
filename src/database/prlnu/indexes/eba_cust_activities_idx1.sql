create index eba_cust_activities_idx1 on
    eba_cust_activities (
        type_id
    );


-- sqlcl_snapshot {"hash":"9452cdee76f5a1ff775bed5661539aeca88e6111","type":"INDEX","name":"EBA_CUST_ACTIVITIES_IDX1","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_ACTIVITIES_IDX1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_ACTIVITIES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>TYPE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}