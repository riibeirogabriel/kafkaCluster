# Dockerfile
FROM ubuntu:16.04

RUN apt-get update && apt-get install openjdk-8-jre wget -y

ENV KAFKA_VERSION=2.11-1.1.0 

RUN wget https://archive.apache.org/dist/kafka/1.1.0/kafka_${KAFKA_VERSION}.tgz 

RUN tar -xzf kafka_${KAFKA_VERSION}.tgz

RUN mkdir /kafka

RUN mv kafka_${KAFKA_VERSION}/* kafka