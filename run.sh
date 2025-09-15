#!/usr/bin/env bash

DIR=/home/tlbb

ulimit -n 65535
cd ${DIR}/Server/
rm -f ./Log/*.log
if pgrep ShareMemory >/dev/null 2>&1; then
  echo " ShareMemory  is running !!!!!!"
else
  ###### start ShareMemory ######
  ./shm clear >/dev/null 2>&1
  rm -rf exit.cmd quitserver.cmd
  #echo -e "\n"
  ./shm start >/dev/null 2>&1
  #echo -e "\n"
  echo " start ShareMemory ......"

  #until  [ "$STATUS" ]
  #FILE=`ls -l -lt /home/tlbb/Server/Log/ShareMemory* | head -n 1 | awk '{print$9}' `
  #do
  #  STATUS=`tail -1 $FILE | grep "Loop...Start" | egrep -vi 'grep|tail' `
  #done

  sleep 5
  echo " ShareMemory started completely !!!!!!"

  ###### start World ######
  ./World > /dev/null 2>&1 &
  echo " start World ......"
  sleep 5
  echo " World started completely !!!!!!"

  ###### start Login ######
  ./Login > /dev/null 2>&1 &
  echo " start Login ......"
  sleep 1
  echo " Login started completely !!!!!!"

  ###### Start Billing ######
  # if [ -f ${DIR}/Billing/run.sh ]; then
    # echo "Starting Billing..."
    # cd ${DIR}/Billing
    # ./run.sh
    # echo "Billing is started completely !!!!!!"
    # cd ${DIR}/Server
  # fi

  ###### start Server ######
  ./Server > /dev/null 2>&1 &
  echo " start Server ......"

  #until
  #[ "$?" = "1" ]
  #do
  #  ps aux | grep -i "./Server -loadscriptonce" | grep -v grep >/dev/null 2>&1
  #done

  sleep 30
  echo " Server started completely !!!!!!"
  exit
fi

