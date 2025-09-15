#!/usr/bin/env bash

cd /home/tlbb/Server/

LOGINPID=$(pgrep Login)
kill -9 $LOGINPID
echo " Login is stopping ......"

until
[ "$?" = "1" ]
do
  pgrep Login >/dev/null 2>&1
done
echo " Login stoped completely !!!!!!"

###### start Login ######
sleep 1
./Login >/dev/null 2>&1 &
echo " start Login ......"
echo " Login started completely !!!!!!"

