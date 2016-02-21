#!/bin/sh
if [ $(curl -s http://169.254.169.254/latest/meta-data/hostname/) == mesos-1.* ];then
    /mesos-0.27.0/bin/mesos-master.sh --ip=$eth0_ip --work_dir=/var/lib/mesos
fi
/mesos-0.27.0/bin/mesos-slave.sh --master=mesos-master:5050
