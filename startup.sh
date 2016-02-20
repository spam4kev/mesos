#!/bin/sh
if [ $(curl -s http://169.254.169.254/latest/meta-data/hostname/) == mesos-1.* ];then
    /root/mesos-*/bin/mesos-master.sh --ip=$eth0_ip --work_dir=/var/lib/mesos
fi
