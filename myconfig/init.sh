#!/bin/bash

mkdir -p /data/elda/conf.d/elda-common
ln -s /data/elda /etc/elda
cp /config/*.ttl  /etc/elda/conf.d/elda-common
chown -R tomcat7:tomcat7 /etc/elda

