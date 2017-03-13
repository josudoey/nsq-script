#!/bin/bash -e
version=0.3.8
go_version=1.6.2
cd /tmp
wget https://s3.amazonaws.com/bitly-downloads/nsq/nsq-${version}.linux-amd64.go${go_version}.tar.gz -O nsq-${version}.linux-amd64.go${go_version}.tar.gz
tar -zxvf nsq-${version}.linux-amd64.go${go_version}.tar.gz
install nsq-${version}.linux-amd64.go${go_version}/bin/nsqd /usr/local/bin/
