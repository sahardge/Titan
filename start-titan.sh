CASSANDRA=/usr/bin/etcdctl --peers 172.17.42.1:4001 get /cassandraSeed/node1
ES=/usr/bin/etcdctl --peers 172.17.42.1:4001 get /elastic/node1


mv conf/titan.properties conf/titan.properties.orig
cat conf/titan.properties.orig | sed -e "/storage.hostname/s/127.0.0.1/""$CASSANDRA""/" && "/storage.index.search.hostname/s/127.0.0.1/""$ES""/" > conf/titan.properties

./bin/gremlin.sh -e start-titan.groovy
