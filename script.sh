#!/bin/bash


# For loop to enumerate through list of dns servers

for i in $(<$1); do

        if [[ `timeout 2s dig @$i google.com` == *"NOERROR"* ]]; then
                echo $i | tee -a resolvers.txt
                continue
        else
                echo Failed : $i
        fi
done
