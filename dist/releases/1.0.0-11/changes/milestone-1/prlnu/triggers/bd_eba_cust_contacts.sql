-- liquibase formatted sql
-- changeset PRLNU:1753338767068 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/bd_eba_cust_contacts.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/bd_eba_cust_contacts.sql:null:b6a9e1248dd6db0ccae064590f5808f135d3eae3:create

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

