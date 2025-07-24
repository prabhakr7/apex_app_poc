-- liquibase formatted sql
-- changeset PRLNU:1753338767942 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/eba_cust_preferences_biu.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/eba_cust_preferences_biu.sql:null:e58832695899d674de33cd70afc33a6fdffdf9c2:create

create or replace editionable trigger eba_cust_preferences_biu before
    insert or update on eba_cust_preferences
    for each row
begin
    if
        inserting
        and :new.id is null
    then
        :new.id := eba_cust.gen_id();
    end if;

    if inserting then
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.created_on := current_timestamp;
    end if;

    if updating then
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated_on := current_timestamp;
    end if;

    :new.preference_name := upper(:new.preference_name);
end;
/

alter trigger eba_cust_preferences_biu enable;

