#!/bin/bash
CASSANDRA=`/usr/bin/etcdctl --peers 172.17.42.1:4001 get /cassandraSeed/node1`
ES=`/usr/bin/etcdctl --peers 172.17.42.1:4001 get /situ/elasticsearch/host`

confd -verbose -node 'http://172.17.42.1:4001' -confdir /var/mountedvol/confd 

mv conf/titan.properties conf/titan.properties.orig
cat conf/titan.properties.orig | sed -e "/storage.hostname/s/127.0.0.1/""$CASSANDRA""/" > conf/titan.properties
mv conf/titan.properties conf/titan.properties.orig
cat conf/titan.properties.orig | sed -e "/storage.index.search.hostname/s/127.0.0.1/""$ES""/" > conf/titan.properties


./bin/gremlin.sh start-titan.groovy
                  
