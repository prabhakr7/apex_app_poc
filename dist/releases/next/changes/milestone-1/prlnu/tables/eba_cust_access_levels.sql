-- liquibase formatted sql
-- changeset PRLNU:1753338765583 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_access_levels.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_access_levels.sql:null:7a438fbad35f961ec951c669e1b1c59538c999e0:create

create table eba_cust_access_levels (
    id           number not null enable,
    access_level varchar2(30 byte) not null enable,
    row_version  number
);

alter table eba_cust_access_levels
    add constraint eba_cust_access_levels_pk primary key ( id )
        using index enable;

alter table eba_cust_access_levels
    add constraint eba_cust_acc_lvl_acc_lvl_ck
        check ( access_level in ( 'Administrator', 'Contributor', 'Reader' ) ) enable;

