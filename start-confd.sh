#!/bin/bash


confd -verbose -node 'http://172.17.42.1:4001' -confdir /var/mountedvol/confd 
