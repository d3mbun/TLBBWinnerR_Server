#!/bin/bash

FILE_DIR=/home/tlbb/DataBackup
FILE_NAME_DATA=tlbbdb_$(date +%F_%H-%I-%S)_bak.sql.gz
FILE_NAME_ACCOUNT=web_$(date +%F_%H-%I-%S)_bak.sql.gz

Backup
mysqldump -u root -p123456 tlbbdb | gzip -c > ${FILE_DIR}/${FILE_NAME_DATA}
mysqldump -u root -p123456 web | gzip -c > ${FILE_DIR}/${FILE_NAME_ACCOUNT}

