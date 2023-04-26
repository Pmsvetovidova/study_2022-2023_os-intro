#!/bin/bash
t1=$1
t2=$2
s1=$(date +"%s")
s2=$(date +"%s")
((t=$s2-$s1))
while ((t<t1))
do
    echo "ожидание"
    sleep 1
    s2=$(date +"%s")
    ((t=$s2-$s1))
done
s1=$(date +"%s")
s2=$(date +"%s")
((t=$s2-$s1))
while ((t<t2))
do
    echo "выполнение"
    sleep 1
    s2=$(date +"%s")
    ((t=$s2-$s1))
done

