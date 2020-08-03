#!/bin/bash

/opt/hbase-$HBASE_VERSION/bin/hbase master start
tail -f /dev/null
