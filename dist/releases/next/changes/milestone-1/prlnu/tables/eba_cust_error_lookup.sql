-- liquibase formatted sql
-- changeset PRLNU:1753338765922 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_error_lookup.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_error_lookup.sql:null:c39e72bfc0d17b42d47ca56034a941a8c44a788b:create

create table eba_cust_error_lookup (
    constraint_name varchar2(30 byte) not null enable,
    message         varchar2(4000 byte) not null enable,
    language_code   varchar2(30 byte) not null enable
);

alter table eba_cust_error_lookup
    add constraint eba_cust_error_lookup_pk primary key ( constraint_name )
        using index enable;

