create or replace editionable trigger bi_eba_cust_errors before
    insert or update on eba_cust_errors
    for each row
begin
    if :new.id is null then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;
end;
/

alter trigger bi_eba_cust_errors enable;


-- sqlcl_snapshot {"hash":"b5a70f414e967e5b7f41d686084ed27a59aa5b9b","type":"TRIGGER","name":"BI_EBA_CUST_ERRORS","schemaName":"PRLNU","sxml":""}