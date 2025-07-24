-- liquibase formatted sql
-- changeset PRLNU:1753338767786 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/biu_eba_cust_sales_channel.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/biu_eba_cust_sales_channel.sql:null:7585ff10975febc4dcdb9dd2e9cc37cc2121e2da:create

create or replace editionable trigger biu_eba_cust_sales_channel before
    insert or update on eba_cust_sales_channel
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

alter trigger biu_eba_cust_sales_channel enable;

