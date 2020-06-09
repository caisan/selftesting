#!/usr/bin/env bash
fio -filename=/dev/vdb -direct=1 -iodepth 1 -thread -rw=write -ioengine=psync -bs=16k -size=200G -numjobs=30 -runtime=2400 -group_reporting -name=mytest
sleep 10
fio -filename=/dev/vdb -direct=1 -iodepth 1 -thread -rw=write -ioengine=psync -bs=1M -size=200G -numjobs=30 -runtime=2400 -group_reporting -name=mytest
