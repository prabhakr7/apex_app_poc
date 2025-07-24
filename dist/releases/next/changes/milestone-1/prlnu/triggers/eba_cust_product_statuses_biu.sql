-- liquibase formatted sql
-- changeset PRLNU:1753338767957 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/eba_cust_product_statuses_biu.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/eba_cust_product_statuses_biu.sql:null:1541ab30945b677e97f5136edda21b2f10cc1b73:create

create or replace editionable trigger eba_cust_product_statuses_biu before
    insert or update on eba_cust_product_statuses
    for each row
begin
    if :new.id is null then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;

    if inserting then
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

alter trigger eba_cust_product_statuses_biu enable;

