FROM wellsemon/jdk:1.8.0_191 as jdk

FROM wellsemon/maven:3.6.0 as maven

FROM wellsemon/centos7:code
COPY --from=jdk /opt /script /opt/
COPY --from=maven /opt /script /opt/
RUN chmod +x /opt/*.sh
RUN for i in `ls /opt/*.sh`; do sh "$i"; done

ENV INTELLIJ_VERSION 2018.3

RUN curl https://download.jetbrains.8686c.com/idea/ideaIC-${INTELLIJ_VERSION}.tar.gz > /opt/ideaIC-${INTELLIJ_VERSION}.tar.gz && \
    cd /opt && \
    tar xvzf ideaIC-${INTELLIJ_VERSION}.tar.gz && \
    rm -f ideaIC-${INTELLIJ_VERSION}.tar.gz && \
    mv /opt/idea* /opt/idea
RUN yum -y install libXtst*
