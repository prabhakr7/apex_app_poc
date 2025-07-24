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


-- sqlcl_snapshot {"hash":"c1f87fef5c5da8cec7e54995167acbef5813971a","type":"TRIGGER","name":"BIU_EBA_CUST_IMPL_PARTNERS","schemaName":"PRLNU","sxml":""}