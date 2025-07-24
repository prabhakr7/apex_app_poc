-- liquibase formatted sql
-- changeset PRLNU:1753338759296 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_notif_uk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_notif_uk.sql:null:6d986cb2f86035ac31c1c5531a9bf8b2445a12e4:create

create unique index eba_cust_notif_uk on
    eba_cust_notifications (
        notification_name
    );

