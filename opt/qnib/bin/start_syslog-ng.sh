#!/bin/bash

if [ "X${FORWARD_TO_LOGSTASH}" != "Xfalse" ];then
   ln -sf /etc/syslog-ng/conf.d/logstash.conf.disabled /etc/syslog-ng/conf.d/logstash.conf  
fi

/usr/sbin/syslog-ng --foreground
