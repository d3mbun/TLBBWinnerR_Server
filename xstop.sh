#!/usr/bin/env bash
killall -9 Server
killall -9 World
killall -9 Login
killall -9 ShareMemory

sleep 3

./run.sh