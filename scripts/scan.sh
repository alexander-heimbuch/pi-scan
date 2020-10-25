#!/bin/sh
timestamp=`date +"%Y-%m-%d-%H%M"`
/home/pi/sane-scan-pdf/scan --duplex --size A4 --output /home/pi/raw/$timestamp.pdf