create or replace editionable trigger biu_eba_cust_activity_ref before
    insert or update on eba_cust_activity_ref
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
end biu_eba_cust_activity_ref;
/

alter trigger biu_eba_cust_activity_ref enable;


-- sqlcl_snapshot {"hash":"dbfb8420c4672aad7487ddfe3ee954c041874ca1","type":"TRIGGER","name":"BIU_EBA_CUST_ACTIVITY_REF","schemaName":"PRLNU","sxml":""}