#!/bin/bash

cd /usr/local/alluxio-${ALLUXIO_VERSION}

bin/alluxio-start.sh -w $@
