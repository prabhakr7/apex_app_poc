-- liquibase formatted sql
-- changeset PRLNU:1753338766068 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_issue_statuses.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_issue_statuses.sql:null:279bad0aaaba72a3010dca46f6515d630b3074e5:create

create table eba_cust_issue_statuses (
    id         number,
    name       varchar2(255 byte) not null enable,
    details    varchar2(4000 byte),
    open_yn    varchar2(1 byte),
    created    timestamp(6) with time zone,
    created_by varchar2(255 byte),
    updated    timestamp(6) with time zone,
    updated_by varchar2(255 byte)
);

alter table eba_cust_issue_statuses
    add constraint check_open_yn
        check ( open_yn in ( 'Y', 'N' ) ) enable;

alter table eba_cust_issue_statuses add primary key ( id )
    using index enable;

