FROM centos:latest
MAINTAINER filipeliu1@gmail.com
ADD VERSION .
WORKDIR /var/bios/biodb

ADD biodb.zip /opt/bios/bin/biodb.zip
ADD jdk-9.0.4_linux-x64_bin.tar.gz /opt
ENV JAVA_HOME /opt/jdk-9.0.4

RUN yum -y install epel-release
RUN yum -y install python-pip gcc.x86_64 python-devel.x86_64 wget.x86_64
RUN yum -y install git.x86_64 unzip.x86_64

RUN unzip /opt/bios/bin/biodb.zip -d /opt/bios/bin

ENV PATH=/opt/jdk-9.0.4/bin:$PATH

ADD bin/biodb-etl /usr/local/bin

#EXPOSE 22