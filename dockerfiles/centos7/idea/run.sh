#!/bin/bash
read -p 'Image Name(wellsemon/centos7:idea2018.3):' image
if [ -z "${image}" ]; then
  image=wellsemon/centos7:idea2018.3
fi

read -p 'Display:' display

read -p 'Idea Dir:' ideaDir
if [ -z "${ideaDir}" ]; then
  ideaDir=~/idea
fi
echo $ideaDir
docker run --rm \
  -itd \
  --privileged \
  -e DISPLAY=$display \
  -v $ideaDir/.local:/root/.local \
  -v $ideaDir/project:/root/workspaces \
  -v $ideaDir/tmp:/tmp/.X11-unix \
  -v $ideaDir/.idea:/root/.IdeaIC2018.3 \
  -v $ideaDir/.java:/root/.java \
  -v ~/.ssh:/root/.ssh \
  -v ~/.m2:/root/.m2 \
  -p 9022:22 \
  -p 9080:80 \
  -p 9900:5900 \
  $image \
  /usr/sbin/init
