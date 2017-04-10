#!/bin/sh
if [ $# -ne 3 ]; then
echo "usage: This shell need 3 argment below";
echo "first  : pc | sp"
echo "second :how many times do you try"
echo "third  : url "
echo "example: "
exit 1;
fi

device=$1;
times=$2;
url=$3;

for i in `seq $times`
do
    if [ "$device" = "sp" ]; then
        curl -A "Mozilla/5.0 (iPhone; CPU iPhone OS 9_0 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13A344 Safari/601.1" $url -o /dev/null -w "%{time_total} \n" 2> /dev/null;
    else
        curl $url -o /dev/null -w "%{time_total} \n" 2> /dev/null;
    fi
done
