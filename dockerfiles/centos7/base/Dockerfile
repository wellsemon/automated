FROM scratch

MAINTAINER wellsemon@163.com

ADD centos-7-docker.tar.xz /

LABEL org.label-schema.schema-version = "1.0" \
    org.label-schema.name="CentOS Base Image" \
    org.label-schema.vendor="CentOS" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20180531"

RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup \
  && curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.163.com/.help/CentOS`cat /etc/redhat-release | awk -F '[ |.]+' '{print $4}'`-Base-163.repo \
  && yum clean all \
  && yum makecache

RUN yum install -y \
  yum-utils \
  vim-enhanced \
  net-tools \
  sudo \
  wget \
  initscripts \
  openssh-server \
  xauth

RUN echo "X11UseLocalhost no" >> /etc/ssh/sshd_config

RUN echo "root:r" | chpasswd

RUN mkdir /var/run/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]
