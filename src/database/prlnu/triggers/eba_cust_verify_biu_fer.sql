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


-- sqlcl_snapshot {"hash":"e404c696abed826fd44a226d0d14fac8d116e2fc","type":"TRIGGER","name":"EBA_CUST_VERIFY_BIU_FER","schemaName":"PRLNU","sxml":""}