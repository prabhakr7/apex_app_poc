create or replace editionable trigger biu_eba_cust_competitors before
    insert or update on eba_cust_competitors
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
end biu_eba_cust_competitors;
/

alter trigger biu_eba_cust_competitors enable;


-- sqlcl_snapshot {"hash":"0b147dabd0b0ca98d9a827de388bc12eb37b2994","type":"TRIGGER","name":"BIU_EBA_CUST_COMPETITORS","schemaName":"PRLNU","sxml":""}