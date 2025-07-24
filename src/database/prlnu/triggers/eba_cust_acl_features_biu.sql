create or replace editionable trigger eba_cust_acl_features_biu before
    insert or update on eba_cust_acl_features
    for each row
begin
  -- Always store authorization_name as upper case
    :new.authorization_name := upper(:new.authorization_name);
    if inserting then
        if :new.id is null then
            :new.id := eba_cust.gen_id();
        end if;

        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.created := current_timestamp;
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,
                                1) + 1;
    end if;

    :new.updated_by := nvl(
        v('APP_USER'),
        user
    );
    :new.updated := current_timestamp;
end;
/

alter trigger eba_cust_acl_features_biu enable;


-- sqlcl_snapshot {"hash":"a95632a9f4820bde7f9f7ccdda28382f3947bdac","type":"TRIGGER","name":"EBA_CUST_ACL_FEATURES_BIU","schemaName":"PRLNU","sxml":""}