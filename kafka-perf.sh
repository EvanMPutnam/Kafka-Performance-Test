bin/kafka-topics --create --topic stress-test-topic --partitions 1 --bootstrap-server localhost:9092

bin/kafka-producer-perf-test --topic stress-test-topic \
--num-records 10000 \
--record-size 1000000 \
--throughput -1 \
--producer-props \
acks=1 \
bootstrap.servers=localhost:9092 \
buffer.memory=67108864 \
compression.type=lz4 \
linger.ms=30 \
batch.size=100000

bin/kafka-consumer-perf-test --topic stress-test-topic \
--bootstrap-server localhost:9092 \
--messages 10000 \
--threads 1

bin/kafka-topics --delete --topic stress-test-topic --bootstrap-server localhost:9092