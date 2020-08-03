#!/bin/bash

export SPARK_MASTER_HOST=`hostname`


. "/spark/sbin/spark-config.sh"

. "/spark/bin/load-spark-env.sh"

. "/spark/sbin/start-master.sh"

mkdir /jupyter-data

echo "c.NotebookApp.notebook_dir = '/jupyter-data'" >> ~/.jupyter/jupyter_notebook_config.py

jupyter notebook --ip=0.0.0.0 --allow-root

# airflow initdb

# airflow webserver -p $AIRFLOW_PORT

mkdir -p $SPARK_MASTER_LOG && touch $SPARK_MASTER_LOG/spark-master.out

tail -f /dev/null
