-- SQLcl uses the SQLCL engine for formatted sql changelog not the JDBC engine
-- By default, a project will not use substitution variables and allows blank
-- lines in sql statements.

set define off
set sqlblanklines on

 set define on
-- define DEFAULTS_FILE = 'utils/properties/uat.properties'


-- Prechecks modifiable helper
-- Check running with SQLcl
-- Check minimum DB version
-- Check character set
-- @utils/prechecks.sql

-- SLOT
-- Custom pre Liquibase code here (perhaps creation of a schema)
-- This is MINIMAL pre setup, everything that can go through Liquibase - SHOULD

-- Kick off Liquibase
prompt "Installing/updating schemas"
lb update -log -changelog-file releases/main.changelog.xml -search-path "." -defaults-file &DEFAULTS_FILE 
--lb update -log -changelog-file releases/main.changelog.xml -search-path "." -defaults-file utils/properties/uat.properties


--@utils/recompile.sql
