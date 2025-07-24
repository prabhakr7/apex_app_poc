create or replace editionable trigger biu_eba_cust_files before
    insert or update on eba_cust_files
    for each row
begin
    if
        ( inserting
        or updating )
        and nvl(
            dbms_lob.getlength(:new.file_blob),
            0
        ) > 15728640
    then
        raise_application_error(-20000, 'The size of the uploaded file was over 15MB. Please upload a smaller file.');
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
    end if;

    if updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.row_version_number := nvl(:new.row_version_number,
                                       0) + 1;
    end if;

    eba_cust_fw.tag_sync(
        p_new_tags     => :new.tags,
        p_old_tags     => :old.tags,
        p_content_type => 'FILE',
        p_content_id   => :new.id
    );

end;
/

alter trigger biu_eba_cust_files enable;


-- sqlcl_snapshot {"hash":"e862e0d1caae2d3be87aea695860593d80d190c3","type":"TRIGGER","name":"BIU_EBA_CUST_FILES","schemaName":"PRLNU","sxml":""}