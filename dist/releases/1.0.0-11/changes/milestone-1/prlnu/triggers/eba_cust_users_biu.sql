-- liquibase formatted sql
-- changeset PRLNU:1753338768001 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/eba_cust_users_biu.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/eba_cust_users_biu.sql:null:6c069ee1862cbfe2a332b8314151d118b54ea876:create

create or replace editionable trigger eba_cust_users_biu before
    insert or update on eba_cust_users
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := eba_cust.gen_id();
        end if;

        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.created := current_timestamp;
        :new.row_version := 1;
        if :new.account_locked is null then
            :new.account_locked := 'N';
        end if;

    end if;

    if updating then
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated := current_timestamp;
        :new.row_version := nvl(:old.row_version,
                                1) + 1;
    end if;
    -- Always store username as upper case
    :new.username := upper(:new.username);
end;
/

alter trigger eba_cust_users_biu enable;

