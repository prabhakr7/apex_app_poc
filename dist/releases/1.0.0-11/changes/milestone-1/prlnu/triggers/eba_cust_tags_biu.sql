-- liquibase formatted sql
-- changeset PRLNU:1753338767974 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/eba_cust_tags_biu.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/eba_cust_tags_biu.sql:null:eb057ecc8e376762191bf0ec00655fbe65e424cd:create

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

