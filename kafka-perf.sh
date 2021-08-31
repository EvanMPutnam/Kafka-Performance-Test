bin/zookeeper-server-start.sh config/zookeeper.properties
bin/kafka-server-start.sh config/server.properties

bin/kafka-topics.sh --create --topic stress-test-topic --bootstrap-server localhost:9092


bin/kafka-consumer-perf-test.sh --topic stress-test-topic \
--zookeeper localhost:2181 \
--messages 15000000 \
--threads 1

bin/kafka-producer-perf-test.sh --topic stress-test-topic \
--num-records 15000000 \
--record-size 100 \
--throughput 15000000 \
--producer-props \
acks=1 \
bootstrap.servers=localhost:9092 \
buffer.memory=67108864 \
compression.type=none \
batch.size=8196



