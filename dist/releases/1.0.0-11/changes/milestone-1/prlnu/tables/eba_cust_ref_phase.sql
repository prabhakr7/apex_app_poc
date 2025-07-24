-- liquibase formatted sql
-- changeset PRLNU:1753338766243 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_ref_phase.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_ref_phase.sql:null:e275c281381b0af4672872d62fc51bf883e4645f:create

create table eba_cust_ref_phase (
    id                     number not null enable,
    status                 varchar2(60 byte) not null enable,
    description            varchar2(4000 byte),
    is_an_active_reference varchar2(1 byte) not null enable,
    display_sequence       number,
    created                timestamp(6) with time zone not null enable,
    created_by             varchar2(255 byte) not null enable,
    updated                timestamp(6) with time zone,
    updated_by             varchar2(255 byte)
);

create unique index eba_cust_ref_phase_uk on
    eba_cust_ref_phase (
        status
    );

alter table eba_cust_ref_phase
    add constraint eba_cust_ref_phase_pk primary key ( id )
        using index enable;

alter table eba_cust_ref_phase
    add constraint eba_cust_ref_phase_uk unique ( status )
        using index eba_cust_ref_phase_uk enable;

