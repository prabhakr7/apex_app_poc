-- liquibase formatted sql
-- changeset PRLNU:1753338766464 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_verifications.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_verifications.sql:null:d1f1fe3c6418210dd99e22277738d11fe085a31d:create

create table eba_cust_verifications (
    id                   number,
    cust_id              number,
    verified_by          varchar2(255 byte) not null enable,
    verification_comment varchar2(4000 byte),
    created              timestamp(6) with time zone,
    created_by           varchar2(255 byte),
    updated              timestamp(6) with time zone,
    updated_by           varchar2(255 byte)
);

alter table eba_cust_verifications add primary key ( id )
    using index enable;

