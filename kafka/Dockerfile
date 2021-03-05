# Dockerfile
FROM ubuntu:16.04

RUN apt-get update && apt-get install openjdk-8-jre -y curl

ENV KAFKA_VERSION=2.11-1.1.0 

RUN curl -s https://archive.apache.org/dist/kafka/1.1.0/kafka_${KAFKA_VERSION}.tgz | tar -xz -C kafka_${KAFKA_VERSION}.tgz

RUN mkdir /kafka

ADD ./kafka_${KAFKA_VERSION}.tgz ./ 
RUN mv kafka_${KAFKA_VERSION} kafka