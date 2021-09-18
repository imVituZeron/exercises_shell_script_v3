#!/bin/bash

IPS=($1 $2 $3 $4 $5)
COUNT=0

for i in ${IPS[*]}; do
    ping -c 3 $i >> $i.log
    if $? -eq 0; then
        COUNT=$((COUNT++)) #<----- problema no acumulador
    fi
    echo "finish!------------"
done

echo "Teve $COUNT ips onlines"