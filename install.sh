#!/usr/bin/env bash

yum install -y http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm
yum install -y Percona-Server-server-55
/bin/systemctl start mysql.service