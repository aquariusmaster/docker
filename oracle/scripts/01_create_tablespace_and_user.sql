-- noinspection SqlNoDataSourceInspectionForFile

-- **************************************************
-- configure DB
-- **************************************************

-- make sequences behave the same as on DBA provisioned DBs in CI and SA
ALTER SYSTEM SET DEFERRED_SEGMENT_CREATION=false;

-- Set system password
ALTER USER SYSTEM IDENTIFIED BY manager;

-- set password never expire
ALTER PROFILE DEFAULT LIMIT PASSWORD_REUSE_TIME UNLIMITED;
ALTER PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME  UNLIMITED;

-- **************************************************
-- create the default tablespace for all applications
-- **************************************************
ALTER SESSION SET container = orcl;
CREATE TABLESPACE ANDERB_TBS DATAFILE '/opt/oracle/product/19c/dbhome_1/anderb_tbs.dbf' SIZE 25M REUSE AUTOEXTEND ON MAXSIZE UNLIMITED;

-- *************************************************
-- create users
-- *************************************************
CREATE USER ANDERB IDENTIFIED BY password DEFAULT TABLESPACE ANDERB_TBS QUOTA UNLIMITED ON ANDERB_TBS;
GRANT DBA TO ANDERB;


