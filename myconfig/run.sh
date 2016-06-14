#!/bin/bash

# for some reason docker does not execute the RUN cp operation not before the entryppoint is called
cp /myconfig/* /config
cp *.war /webapps

# start the entrypoint default script.
/config/startup-tomcat.sh

