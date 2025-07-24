create or replace editionable trigger bd_eba_cust_contacts before
    delete on eba_cust_contacts
    for each row
begin
    eba_cust_fw.tag_sync(
        p_new_tags     => null,
        p_old_tags     => :old.tags,
        p_content_type => 'CONTACT',
        p_content_id   => :old.id
    );
end;
/

alter trigger bd_eba_cust_contacts enable;


-- sqlcl_snapshot {"hash":"f4baf2d1af2bbb2b9ab99fdf5c3e8441bd8e48fa","type":"TRIGGER","name":"BD_EBA_CUST_CONTACTS","schemaName":"PRLNU","sxml":""}