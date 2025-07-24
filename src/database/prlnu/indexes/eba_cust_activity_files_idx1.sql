create index eba_cust_activity_files_idx1 on
    eba_cust_activity_files (
        activity_id
    );


-- sqlcl_snapshot {"hash":"07c48f6ec8301de6a20a64ca08eee185f2dd059d","type":"INDEX","name":"EBA_CUST_ACTIVITY_FILES_IDX1","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_ACTIVITY_FILES_IDX1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_ACTIVITY_FILES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACTIVITY_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}