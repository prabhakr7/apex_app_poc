-- liquibase formatted sql
-- changeset PRLNU:1753338766418 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_use_case.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_use_case.sql:null:4abac065796318741a0adde16236a66591581e47:create

create table eba_cust_use_case (
    id                 number not null enable,
    row_version_number number,
    use_case           varchar2(60 byte) not null enable,
    description        varchar2(4000 byte),
    is_active          varchar2(1 byte) default 'Y',
    created            timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

create unique index eba_cust_use_case_uk on
    eba_cust_use_case (
        use_case
    );

alter table eba_cust_use_case
    add constraint eba_cust_use_case_pk primary key ( id )
        using index enable;

alter table eba_cust_use_case
    add constraint eba_cust_use_case_uk unique ( use_case )
        using index eba_cust_use_case_uk enable;

