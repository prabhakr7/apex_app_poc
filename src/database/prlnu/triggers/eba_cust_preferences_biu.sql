create or replace editionable trigger eba_cust_preferences_biu before
    insert or update on eba_cust_preferences
    for each row
begin
    if
        inserting
        and :new.id is null
    then
        :new.id := eba_cust.gen_id();
    end if;

    if inserting then
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.created_on := current_timestamp;
    end if;

    if updating then
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated_on := current_timestamp;
    end if;

    :new.preference_name := upper(:new.preference_name);
end;
/

alter trigger eba_cust_preferences_biu enable;


-- sqlcl_snapshot {"hash":"59745093a7c1092cdecb037d5454aec8de048e24","type":"TRIGGER","name":"EBA_CUST_PREFERENCES_BIU","schemaName":"PRLNU","sxml":""}