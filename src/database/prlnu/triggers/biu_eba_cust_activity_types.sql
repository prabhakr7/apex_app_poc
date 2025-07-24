create or replace editionable trigger biu_eba_cust_activity_types before
    insert or update on eba_cust_activity_types
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number ( sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' );
        end if;

        :new.created := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.row_version_number := 1;
    else
        :new.row_version_number := nvl(:new.row_version_number,
                                       0) + 1;
    end if;

    :new.updated := current_timestamp;
    :new.updated_by := nvl(
        v('APP_USER'),
        user
    );
end biu_eba_cust_activity_types;
/

alter trigger biu_eba_cust_activity_types enable;


-- sqlcl_snapshot {"hash":"d6a2762b78e1ea7281ed1b3749d28894c0f77aa7","type":"TRIGGER","name":"BIU_EBA_CUST_ACTIVITY_TYPES","schemaName":"PRLNU","sxml":""}