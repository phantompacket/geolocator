#!/bin/bash
figlet Geolocator
echo "By TEMPLAR"
if [ "$1" == "" ]
then
public_ip=`wget -qO- http://ipecho.net/plain | xargs echo`
curl -s http://ipwhois.app/json/$public_ip | jq .
else
curl -s http://ipwhois.app/json/$1 | jq .
fi

