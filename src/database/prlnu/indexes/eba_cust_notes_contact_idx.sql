create index eba_cust_notes_contact_idx on
    eba_cust_notes (
        contact_id
    );


-- sqlcl_snapshot {"hash":"9a7b6a8ecdd715863d68360e6d232b1c1b6834b7","type":"INDEX","name":"EBA_CUST_NOTES_CONTACT_IDX","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_NOTES_CONTACT_IDX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_NOTES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CONTACT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}