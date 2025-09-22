#!/bin/bash
# /home/tlbb/Server/Tools/CronJobs/scripts/HWDetect.sh

LOGS_DIR=/home/tlbb/DataBackup
mkdir -p $LOGS_DIR

TEMP_DIR=$(mktemp -d)

cd /home/tlbb/Server
mv Log $TEMP_DIR
mkdir Log

touch Log/.gitkeep

tar -zcvf $LOGS_DIR/Log.$(date +%F_%H-%M-%S).tar.gz $TEMP_DIR
rm -rf $TEMP_DIR

