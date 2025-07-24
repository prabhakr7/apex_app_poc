-- liquibase formatted sql
-- changeset PRLNU:1753338768013 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/eba_cust_verify_biu_fer.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/eba_cust_verify_biu_fer.sql:null:d5f7845279143cd6eb9c11614e46a35f2d79d38f:create

create or replace editionable trigger eba_cust_verify_biu_fer before
    insert or update on eba_cust_verifications
    for each row
begin
    if :new.id is null then
        :new.id := eba_cust_seq.nextval;
    end if;

    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(apex_application.g_user, user);
    end if;

    if inserting
    or updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(apex_application.g_user, user);
    end if;

end;
/

alter trigger eba_cust_verify_biu_fer enable;

