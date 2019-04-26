#!/bin/bash
#By Michael Hill 24/04/2019 to target a PID and kill it.

SERVICE="$4" #PID you wish to targets name name
PIDnumber=$(pgrep "${SERVICE}")
number=$(ps aux | grep "${SERVICE}" | wc -l)
if [ $number -gt 1 ]
    then
        echo "$SERVICE" - is currently Running;
        kill $PIDnumber;
        sleep 2;
        echo "$SERVICE" - has been Closed;
    else
        echo "$SERVICE" - Is Not Running;
fi

exit 0
