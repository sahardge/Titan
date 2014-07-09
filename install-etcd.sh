#!/bin/bash

mkdir /tmp/etcd
wget -q https://github.com/coreos/etcd/releases/download/v0.4.4/etcd-v0.4.4-linux-amd64.tar.gz && tar -xvf etcd-v0.4.4-linux-amd64.tar.gz -C /tmp/etcd
mv /tmp/etcd/etcd-v0.4.4-linux-amd64/etcd /usr/bin && mv /tmp/etcd/etcd-v0.4.4-linux-amd64/etcdctl /usr/bin
