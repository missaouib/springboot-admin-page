#!/usr/bin/env bash

source /home/tq/pbank/bin/var.sh
	
pid=`ps -ef | grep ${jar_name} | grep -v grep | awk '{print $2}'`
if [ -n "$pid" ]
then
   echo "kill $jar_name  pid: $pid"
   kill $pid
   
   sleep 3
   
   pid=`ps -ef | grep ${jar_name} | grep -v grep | awk '{print $2}'`
   if [ -n "$pid" ]
   then
	   echo "执行强制退出..."
	   echo "kill -9 $jar_name  pid: $pid"
	   kill -9 $pid
   fi
fi




