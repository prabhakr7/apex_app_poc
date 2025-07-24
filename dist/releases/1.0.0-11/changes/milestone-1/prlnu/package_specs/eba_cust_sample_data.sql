-- liquibase formatted sql
-- changeset PRLNU:1753338765312 stripComments:false  logicalFilePath:milestone-1/prlnu/package_specs/eba_cust_sample_data.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/package_specs/eba_cust_sample_data.sql:null:81c5ac8c777448edf5d8ef2cbcab42f0f4aa9733:create

create or replace package eba_cust_sample_data as

    -------------------------------------------------------------------------
    procedure create_sample_data;
    
    -------------------------------------------------------------------------
    procedure remove_sample_data;

end eba_cust_sample_data;
/

