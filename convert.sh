#!/usr/bin/env bash

# stream stdin to a local dump file then run rdb --command protocol /tmp/dump.rdb
cat > /tmp/dump.rdb
rdb --command protocol /tmp/dump.rdb