#!/bin/bash
read -p 'Image Name(wellsemon/centos7:base):' imageName
if [ -z "${imageName}" ]; then
  imageName=wellsemon/centos7:base
fi

read -p 'HOST SSH Port(22):' sshPort
if [ -z "${sshPort}" ]; then
  sshPort=22
fi
   
docker run --rm \
  -dit \
  --privileged \
  -p $sshPort:22 \
  $imageName \
  /usr/sbin/init
