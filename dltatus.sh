#!/bin/bash

NUM=11
while [ $NUM -gt 0 ] ; do
  if [ $NUM -gt 9 ] ; then
    ping dl$NUM -c 1 > /dev/null
    if [ $? -eq 0 ] ; then
      echo "dl"$NUM" : alive"
    else
      echo "dl"$NUM" : dead"
    fi
    let NUM=$NUM-1
    continue
  fi
  ping dl0$NUM -c 1 > /dev/null
  if [ $? -eq 0 ] ; then
    echo "dl0"$NUM" : alive"
  else
    echo "dl0"$NUM" : dead"
  fi
  let NUM=$NUM-1
done
exit 0
