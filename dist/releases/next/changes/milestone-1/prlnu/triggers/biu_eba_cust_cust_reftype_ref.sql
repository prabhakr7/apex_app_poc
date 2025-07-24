-- liquibase formatted sql
-- changeset PRLNU:1753338767324 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/biu_eba_cust_cust_reftype_ref.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/biu_eba_cust_cust_reftype_ref.sql:null:2a17bbd166a71fe1996afd9568ca072efedb0064:create

create or replace editionable trigger biu_eba_cust_cust_reftype_ref before
    insert or update on eba_cust_customer_reftype_ref
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
end;
/

alter trigger biu_eba_cust_cust_reftype_ref enable;

