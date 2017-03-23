#!/bin/bash -e
version=0.3.8
go_version=1.6.2
cd /tmp
wget https://s3.amazonaws.com/bitly-downloads/nsq/nsq-${version}.linux-amd64.go${go_version}.tar.gz -O nsq-${version}.linux-amd64.go${go_version}.tar.gz
tar -zxvf nsq-${version}.linux-amd64.go${go_version}.tar.gz


for file in nsqadmin  nsqd  nsqlookupd  nsq_pubsub  nsq_stat  nsq_tail  nsq_to_file  nsq_to_http  nsq_to_nsq  to_nsq;
do
  install nsq-${version}.linux-amd64.go${go_version}/bin/${file} /usr/local/bin/
done
