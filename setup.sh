#!/bin/bash

sudo chmod 700 ./autoReaver
sudo apt-get install -y gawk konsole
airmon-ng start wlan0
wash -i mon0 -C -s | awk -F' ' '{ if($5 == "No"){print $1 " " $2 " " substr($0, index($0,$6))}}'
