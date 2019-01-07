#!/bin/bash
image=wellsemon/centos7:code
read -p 'Image Name(${image}):' image
if [ -z "${image}" ]; then
  image=$image
fi

read -p 'HOST SSH Port(22):' sshport
if [ -z "${sshport}" ]; then
  sshport=22
fi
   
docker run --rm \
  -dit \
  --privileged \
  -p $sshport:22 \
  $image \
  /usr/sbin/init
