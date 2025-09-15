#!/bin/bash
LOG_FILE_PATH=/home/tlbb/DataBackup/GMCommand/GMAccess.$(date +%F_%H-%M-%S).log

grep -Er 'GMAccess' /home/tlbb/Server/Debug/Log_*.log > "$LOG_FILE_PATH"

echo "GMCommand Save Log Complete!"