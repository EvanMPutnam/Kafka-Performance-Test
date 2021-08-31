# Kafka-Performance-Test
Simple Docker based tools for running quick Kafka performance tests on a single node instance.  This is just meant to be a simple single node test.

# Startup
You can modify the kafka-perf.sh script before building the images to try different configurations.

```
docker-compose up -d
docker build -t kafka-test:latest -f Dockerfile.kafka .
docker run --network host -it kafka-test:latest
```

