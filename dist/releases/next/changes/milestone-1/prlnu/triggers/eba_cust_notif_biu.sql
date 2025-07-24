-- liquibase formatted sql
-- changeset PRLNU:1753338767928 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/eba_cust_notif_biu.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/eba_cust_notif_biu.sql:null:7e82a815c0675666b4e4b967cf33edbd7d01eb87:create

create or replace editionable trigger eba_cust_notif_biu before
    insert or update on eba_cust_notifications
    for each row
begin
    if
        inserting
        and :new.id is null
    then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;

    if inserting then
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.created := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated := current_timestamp;
        :new.row_version_number := 1;
    end if;

    if updating then
        :new.row_version_number := nvl(:old.row_version_number,
                                       1) + 1;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated := current_timestamp;
    end if;

    if :new.notification_type is null then
        :new.notification_type := 'MANUAL';
    end if;

end;
/

alter trigger eba_cust_notif_biu enable;

