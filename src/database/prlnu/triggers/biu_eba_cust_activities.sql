create or replace editionable trigger biu_eba_cust_activities before
    insert or update on eba_cust_activities
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
end biu_eba_cust_activities;
/

alter trigger biu_eba_cust_activities enable;


-- sqlcl_snapshot {"hash":"4b4ca68cacff5da5e8e1a44f366f5bf08c2f983f","type":"TRIGGER","name":"BIU_EBA_CUST_ACTIVITIES","schemaName":"PRLNU","sxml":""}