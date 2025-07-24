create or replace editionable trigger biu_eba_cust_email_log before
    insert or update on eba_cust_email_log
    for each row
begin
    if :new.id is null then
        :new.id := to_number ( sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' );
    end if;

    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user, user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := nvl(:old.row_version_number,
                                       1) + 1;
    end if;

    :new.updated := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user, user);
    :new.email_first_to := lower(:new.email_first_to);
    :new.email_from := lower(:new.email_from);
end;
/

alter trigger biu_eba_cust_email_log enable;


-- sqlcl_snapshot {"hash":"c8ea663030304d0f270447b014ff203d8f12cff1","type":"TRIGGER","name":"BIU_EBA_CUST_EMAIL_LOG","schemaName":"PRLNU","sxml":""}