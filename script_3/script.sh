#!/bin/bash

COUNT=0
FILE_SIZE=$(ls -lnh /home | cut -d' ' -f5)
OWN_SIZE=$(ls -lnh /home | cut -d' ' -f3)
LIMIT="500"

if [ $OWN_SIZE > $LIMIT ]; then
    for i in $FILE_SIZE; do
        WORD=$(echo $i | cut -c 4 )
        if [ $WORD == 'K' ]; then
            NUMBER=$(echo $i | cut -c 1 )
            SIZE=$[$(echo $(( NUMBER * 1000 )))]
            COUNT=$[$(echo $(( COUNT + SIZE )))]
        fi
    done
    echo $COUNT
fi



