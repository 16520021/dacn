#!/bin/bash

/opt/hbase-$HBASE_VERSION/bin/hbase regionserver start

tail -f /dev/null
