#!/bin/bash
#判断进程是否存在，如果不存在就启动它
PIDS=`ps -ef |grep aria2 |grep -v grep | awk '{print $2}'`
if [ "$PIDS" != "" ]; then
echo "runing!"
else
service aria2 restart
fi
