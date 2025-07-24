-- liquibase formatted sql
-- changeset PRLNU:1753338759284 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_notes_contact_idx.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_notes_contact_idx.sql:null:9a7b6a8ecdd715863d68360e6d232b1c1b6834b7:create

create index eba_cust_notes_contact_idx on
    eba_cust_notes (
        contact_id
    );

