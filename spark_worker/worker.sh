#!/bin/bash

. "/spark/sbin/spark-config.sh"

. "/spark/bin/load-spark-env.sh"

. "/spark/sbin/start-slave.sh $SPARK_MASTER"

mkdir -p $SPARK_WORKER_LOG && touch $SPARK_WORKER_LOG/spark-worker.out

tail -f /dev/null