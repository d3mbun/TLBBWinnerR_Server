#!/usr/bin/env bash

cd /home/tlbb/Server

###### stop Login ######
LOGINPID=$(pgrep Login)
kill -9 $LOGINPID
echo " Login is stopping ......"
until
  [ "$?" = "1" ]
do
  pgrep Login >/dev/null 2>&1
done
echo " Login stoped completely !!!!!!"

###### stop Server ######
touch quitserver.cmd
echo " stopping Server ......"
until
  [ "$?" = "1" ]
do
  pgrep Server >/dev/null 2>&1
done
echo " Server stoped completely !!!!!!"

###### stop World ######
WORLDPID=$(pgrep World)
kill -9 $WORLDPID
echo " World is stopping ......"
until
  [ "$?" = "1" ]
do
  pgrep World >/dev/null 2>&1
done
echo " World stoped completely !!!!!!"

###### stop ShareMemory ######
touch exit.cmd
echo " ShareMemroy is saving data ......"
until
  [ "$?" = "1" ]
do
  pgrep ShareMemory >/dev/null 2>&1
done
echo " ShareMemory stoped completely !!!!!!"

###### Save Var ######
# echo " Var is saving ......"
# python VarTool save

if [ -f "quitserver.cmd" ]; then
	echo "[x] Server dumped detected"
	rm quitserver.cmd
fi

if [ -f "exit.cmd" ]; then
	echo "[x] ShareMemory dumped detected"
	rm exit.cmd
fi

echo "Start Save Log/Debug"
/home/tlbb/Server/Tools/CronJobs/scripts/backup_log.sh
/home/tlbb/Server/Tools/CronJobs/scripts/backup_debug.sh
echo "Save Log/Debug Complete"
