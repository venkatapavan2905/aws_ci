#!/bin/bash

set -e

containerid = 'docker ps | awk  'NR > 1 {print $1}''

docker rm -f $containerid

#delete running container