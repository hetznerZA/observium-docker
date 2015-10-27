FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y wget libapache2-mod-php5 php5-cli php5-mysql php5-gd php5-mcrypt php5-json php-pear snmp fping mysql-server \
                       mysql-client python-mysqldb rrdtool subversion whois mtr-tiny ipmitool graphviz imagemagick && \
    mkdir -p /opt/observium && cd /opt && \
    wget http://www.observium.org/observium-community-latest.tar.gz && \
    tar zxvf observium-community-latest.tar.gz

RUN cd /opt/observium

EXPOSE 80
