create or replace editionable trigger biu_eba_cust_activity_files before
    insert or update on eba_cust_activity_files
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
end biu_eba_cust_activity_files;
/

alter trigger biu_eba_cust_activity_files enable;


-- sqlcl_snapshot {"hash":"8ec49ff910b16303fc3006c188ada10441f5820a","type":"TRIGGER","name":"BIU_EBA_CUST_ACTIVITY_FILES","schemaName":"PRLNU","sxml":""}