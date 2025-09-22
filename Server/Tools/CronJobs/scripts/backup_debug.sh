#!/bin/bash
/home/tlbb/Server/Tools/CronJobs/scripts/GMCommand.sh

LOGS_DIR=/home/tlbb/DataBackup
mkdir -p $LOGS_DIR

TEMP_DIR=$(mktemp -d)

cd /home/tlbb/Server
mv Debug $TEMP_DIR
mkdir Debug

touch Debug/.gitkeep

tar -zcvf $LOGS_DIR/Debug.$(date +%F_%H-%M-%S).tar.gz $TEMP_DIR
rm -rf $TEMP_DIR

