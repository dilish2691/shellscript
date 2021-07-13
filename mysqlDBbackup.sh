#!/bin/bash

v_dbName=$1
v_username=$(cat cred | grep username | awk -F "=" '{print $2}')
v_password=$(cat cred | grep password | awk -F "=" '{print $2}')
v_db_host=dbhost.rds.aws.com

echo "mysqldump -h $v_db_host -u $v_username -p $v_password $v_dbName > /db-backup/$v_dbName.sql"
