create or replace editionable trigger biu_eba_cust_contacts before
    insert or update on eba_cust_contacts
    for each row
begin
    if :new.tags is not null then
        :new.tags := eba_cust_fw.tags_cleaner(:new.tags);
    end if;

    if inserting then
        if :new.id is null then
            select
                to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
            into :new.id
            from
                dual;

        end if;

        :new.created := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.row_version_number := 1;
        eba_cust_fw.tag_sync(
            p_new_tags     => :new.tags,
            p_old_tags     => null,
            p_content_type => 'CONTACT',
            p_content_id   => :new.id
        );

    end if;

    if updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.row_version_number := nvl(:new.row_version_number,
                                       0) + 1;
        eba_cust_fw.tag_sync(
            p_new_tags     => :new.tags,
            p_old_tags     => :old.tags,
            p_content_type => 'CONTACT',
            p_content_id   => :new.id
        );

    end if;

end;
/

alter trigger biu_eba_cust_contacts enable;


-- sqlcl_snapshot {"hash":"dfb6ec4c64c8a6299bbf1c6c6a8b19d259344177","type":"TRIGGER","name":"BIU_EBA_CUST_CONTACTS","schemaName":"PRLNU","sxml":""}