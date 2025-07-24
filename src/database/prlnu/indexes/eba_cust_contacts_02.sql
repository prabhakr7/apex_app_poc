create index eba_cust_contacts_02 on
    eba_cust_contacts (
        contact_type_id
    );


-- sqlcl_snapshot {"hash":"5deba0da15341d7ccbbbff58483d4f2b819bc0ae","type":"INDEX","name":"EBA_CUST_CONTACTS_02","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_CONTACTS_02</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_CONTACTS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CONTACT_TYPE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}