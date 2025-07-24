alter table eba_cust_feedback
    add constraint eba_cust_feedback_type_fk
        foreign key ( type_id )
            references eba_cust_feedback_types ( id )
        enable;


-- sqlcl_snapshot {"hash":"35c34a4ee87c64788ed772bbbfd63c073282940c","type":"REF_CONSTRAINT","name":"EBA_CUST_FEEDBACK_TYPE_FK","schemaName":"PRLNU","sxml":""}