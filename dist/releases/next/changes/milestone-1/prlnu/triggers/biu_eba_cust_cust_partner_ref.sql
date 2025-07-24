-- liquibase formatted sql
-- changeset PRLNU:1753338767311 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/biu_eba_cust_cust_partner_ref.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/biu_eba_cust_cust_partner_ref.sql:null:c38af56a82f5a99210d11adb1cfe7905713e2ecf:create

create or replace editionable trigger biu_eba_cust_cust_partner_ref before
    insert or update on eba_cust_cust_partner_ref
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number ( sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' );
        end if;

        :new.created := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

    :new.updated := current_timestamp;
    :new.updated_by := nvl(
        v('APP_USER'),
        user
    );
end biu_eba_cust_cust_partner_ref;
/

alter trigger biu_eba_cust_cust_partner_ref enable;

