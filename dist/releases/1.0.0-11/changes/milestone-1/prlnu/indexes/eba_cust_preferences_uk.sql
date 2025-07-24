-- liquibase formatted sql
-- changeset PRLNU:1753338759302 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_preferences_uk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_preferences_uk.sql:null:e072e128d0db3a25a75b9867c016c4959346229e:create

create unique index eba_cust_preferences_uk on
    eba_cust_preferences (
        preference_name
    );

