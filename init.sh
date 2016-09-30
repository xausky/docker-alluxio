#!/bin/bash

curl -fSL http://alluxio.org/downloads/files/${ALLUXIO_VERSION}/alluxio-${ALLUXIO_VERSION}-bin.tar.gz -o alluxio.tar.gz

tar -xzC /usr/local -f alluxio.tar.gz

rm -rf alluxio.tar.gz

cd /usr/local/alluxio-${ALLUXIO_VERSION}

sed  -i 's/sudo//g' bin/alluxio-mount.sh

bin/alluxio bootstrapConf localhost local

bin/alluxio format
