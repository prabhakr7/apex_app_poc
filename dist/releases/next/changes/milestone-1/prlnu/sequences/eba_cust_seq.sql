-- liquibase formatted sql
-- changeset PRLNU:1753338765574 stripComments:false  logicalFilePath:milestone-1/prlnu/sequences/eba_cust_seq.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/sequences/eba_cust_seq.sql:null:ff27324643fd4e786780b805efab01503addedf2:create

create sequence eba_cust_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache 20 noorder nocycle
nokeep noscale global;

