#!/bin/bash
basepath=$(cd `dirname $0`; pwd)
image=wellsemon/maven:3.6.0

read -p 'build image(y/n):' build
if [ "${build}" == "y" ]; then
  docker build -t $image $basepath
fi

read -p 'push image(y/n):' push
if [ "${push}" == "y" ]; then
  docker push wellsemon/maven:3.6.0
fi
