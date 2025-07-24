create or replace editionable trigger biu_eba_cust_issues before
    insert or update on eba_cust_issues
    for each row
begin
    if :new.id is null then
        :new.id := to_number ( sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' );
    end if;

    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

    if inserting
    or updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

end;
/

alter trigger biu_eba_cust_issues enable;


-- sqlcl_snapshot {"hash":"1144a74f871f8308028e91f498bf8188afbeab03","type":"TRIGGER","name":"BIU_EBA_CUST_ISSUES","schemaName":"PRLNU","sxml":""}