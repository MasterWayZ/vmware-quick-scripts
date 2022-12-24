#!/bin/bash

esxcfg-volume -l > /tmp/dump.log
cat /tmp/dump.log  | grep UUID | awk -F ':' '{print $2}' | awk -F '/' '{print $1}' > /tmp/dump2.log

while read line; do esxcfg-volume -M $line; done</tmp/dump2.log

rm /tmp/dump.log
rm /tmp/dump2.log