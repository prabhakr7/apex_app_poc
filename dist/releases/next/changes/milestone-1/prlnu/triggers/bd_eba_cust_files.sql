-- liquibase formatted sql
-- changeset PRLNU:1753338767078 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/bd_eba_cust_files.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/bd_eba_cust_files.sql:null:1498e6389c2592753dd2a71823af21cfb1976bbe:create

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

