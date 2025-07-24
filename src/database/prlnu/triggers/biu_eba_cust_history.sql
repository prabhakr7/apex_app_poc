create or replace editionable trigger biu_eba_cust_history before
    insert or update on eba_cust_history
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
        :new.change_date := current_timestamp;
        :new.changed_by := nvl(wwv_flow.g_user, user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := :new.row_version_number + 1;
    end if;

end;
/

alter trigger biu_eba_cust_history enable;


-- sqlcl_snapshot {"hash":"04426f2483d2b3c6ce1da60f0b23ec9277829759","type":"TRIGGER","name":"BIU_EBA_CUST_HISTORY","schemaName":"PRLNU","sxml":""}