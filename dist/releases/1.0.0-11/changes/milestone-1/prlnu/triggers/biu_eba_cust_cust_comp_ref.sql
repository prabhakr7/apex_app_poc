-- liquibase formatted sql
-- changeset PRLNU:1753338767298 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/biu_eba_cust_cust_comp_ref.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/biu_eba_cust_cust_comp_ref.sql:null:33905a5acdfebe988b9b49f87ffe7ef8d8bd64cb:create

create or replace editionable trigger biu_eba_cust_cust_comp_ref before
    insert or update on eba_cust_cust_competitor_ref
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
end biu_eba_cust_cust_comp_ref;
/

alter trigger biu_eba_cust_cust_comp_ref enable;

