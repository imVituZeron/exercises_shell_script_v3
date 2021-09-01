#!/bin/bash

PASSW=$(cat $1 | cut -d"," -f2)
NAME=$(cat $1 | cut -d"," -f1)

for n in $NAME; do
    USERS=$(cat /etc/passwd|cut -d":" -f1| grep $n)
    if [ $? -eq 0 ]; then
        echo "the $n already exist"
    else
        echo "the $n dont exist"
    fi
done
# dar continuação em 07/09/2021