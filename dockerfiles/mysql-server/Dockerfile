FROM centos:centos7
MAINTAINER welleys "welleys@163.com"

RUN yum install -y mysql-server mysql

RUN systemctl restart mysql

EXPOSE 3306

CMD ["/usr/bin/mysqld_safe"]
