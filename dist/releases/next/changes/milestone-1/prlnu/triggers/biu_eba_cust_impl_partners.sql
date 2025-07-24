-- liquibase formatted sql
-- changeset PRLNU:1753338767601 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/biu_eba_cust_impl_partners.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/biu_eba_cust_impl_partners.sql:null:4bb3f2f0155e8648418902c1300014cff796027f:create

create or replace editionable trigger biu_eba_cust_impl_partners before
    insert or update on eba_cust_impl_partners
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
        :new.row_version_number := 1;
    else
        :new.row_version_number := nvl(:new.row_version_number,
                                       0) + 1;
    end if;

    :new.updated := current_timestamp;
    :new.updated_by := nvl(
        v('APP_USER'),
        user
    );
end biu_eba_cust_impl_partners;
/

alter trigger biu_eba_cust_impl_partners enable;

