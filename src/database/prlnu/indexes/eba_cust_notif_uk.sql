create unique index eba_cust_notif_uk on
    eba_cust_notifications (
        notification_name
    );


-- sqlcl_snapshot {"hash":"6d986cb2f86035ac31c1c5531a9bf8b2445a12e4","type":"INDEX","name":"EBA_CUST_NOTIF_UK","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_NOTIF_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_NOTIFICATIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>NOTIFICATION_NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}