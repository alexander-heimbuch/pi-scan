#!/bin/sh

mkdir -p /home/pi/raw
mkdir -p /home/pi/scans

while true
do
  /home/pi/scripts/ocr.sh >/dev/null 2>&1
  sleep 500
done