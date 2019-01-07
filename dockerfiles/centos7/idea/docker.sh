#!/bin/bash
basepath=$(cd `dirname $0`; pwd)
image=wellsemon/centos7:idea2018.3

read -p 'build image(y/n):' build
if [ "${build}" == "n" ]; then
  exit
fi
docker build -t $image $basepath

read -p 'push image(y/n):' push
if [ "${push}" == "n" ]; then
  exit
fi
docker push $image
