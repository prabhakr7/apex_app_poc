-- liquibase formatted sql
-- changeset PRLNU:1753338767115 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/bi_eba_cust_views_log.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/bi_eba_cust_views_log.sql:null:2687e9f2921fca44901b181d95a881113574fb41:create

create or replace editionable trigger bi_eba_cust_views_log before
    insert on eba_cust_views_log
    for each row
begin
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

end;
/

alter trigger bi_eba_cust_views_log enable;

