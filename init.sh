#!/bin/bash

cd /usr/local/alluxio-${ALLUXIO_VERSION}

sed  -i 's/sudo//g' bin/alluxio-mount.sh

bin/alluxio bootstrapConf localhost local

bin/alluxio format
