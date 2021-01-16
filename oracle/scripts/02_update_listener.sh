#!/bin/bash -e
echo 'USE_SID_AS_SERVICE_listener=on' >> /opt/oracle/product/19c/dbhome_1/network/admin/listener.ora
lsnrctl reload
