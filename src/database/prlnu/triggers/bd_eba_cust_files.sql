create or replace editionable trigger bd_eba_cust_files before
    delete on eba_cust_files
    for each row
begin
    eba_cust_fw.tag_sync(
        p_new_tags     => null,
        p_old_tags     => :old.tags,
        p_content_type => 'FILE',
        p_content_id   => :old.id
    );
end;
/

alter trigger bd_eba_cust_files enable;


-- sqlcl_snapshot {"hash":"583920c7f9537075d54db1a04fd787c6aa0931cc","type":"TRIGGER","name":"BD_EBA_CUST_FILES","schemaName":"PRLNU","sxml":""}