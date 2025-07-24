create or replace editionable trigger biu_eba_cust_notes before
    insert or update on eba_cust_notes
    for each row
begin
    if :new.id is null then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;

    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user, user);
        :new.updated := current_timestamp;
        :new.updated_by := nvl(wwv_flow.g_user, user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := nvl(:old.row_version_number,
                                       1) + 1;
    end if;

    if inserting
    or updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(wwv_flow.g_user, user);
    end if;

end;
/

alter trigger biu_eba_cust_notes enable;


-- sqlcl_snapshot {"hash":"b5cb80ac16a713d2a321db9e6d9b9370f3a526ba","type":"TRIGGER","name":"BIU_EBA_CUST_NOTES","schemaName":"PRLNU","sxml":""}