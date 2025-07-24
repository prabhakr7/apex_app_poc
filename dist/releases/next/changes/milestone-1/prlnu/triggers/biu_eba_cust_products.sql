-- liquibase formatted sql
-- changeset PRLNU:1753338767739 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/biu_eba_cust_products.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/biu_eba_cust_products.sql:null:0e9cbfb3bee2574ba0ca37159606f1a7c75df457:create

create or replace editionable trigger biu_eba_cust_products before
    insert or update on eba_cust_products
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
            p_content_type => 'PRODUCT',
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
            p_content_type => 'PRODUCT',
            p_content_id   => :new.id
        );

    end if;

end;
/

alter trigger biu_eba_cust_products enable;

