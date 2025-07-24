create or replace editionable trigger eba_cust_tags_biu before
    insert or update on eba_cust_tags
    for each row
begin
    :new.tag := upper(:new.tag);
    if inserting then
        if :new.tag_id is null then
            select
                to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
            into :new.tag_id
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
    end if;

    if updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

end;
/

alter trigger eba_cust_tags_biu enable;


-- sqlcl_snapshot {"hash":"e3fd6d3ae4acc99dc5a2d5dbc9972d6cf939e30a","type":"TRIGGER","name":"EBA_CUST_TAGS_BIU","schemaName":"PRLNU","sxml":""}