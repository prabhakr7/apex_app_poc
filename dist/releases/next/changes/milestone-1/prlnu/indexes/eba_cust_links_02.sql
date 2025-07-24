-- liquibase formatted sql
-- changeset PRLNU:1753338759278 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_links_02.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_links_02.sql:null:05949ea2a4ecd917763299df84853ade571f0b89:create

create index eba_cust_links_02 on
    eba_cust_links (
        contact_id
    );

