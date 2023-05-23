#!/bin/sh
FOLDER=$1
EXPORT_URL='https://www.google.com/maps/d/u/0/kml?mid=180u1IkUjtjpdJWnIC0AxTKSiqK4G6Pez'
SAVE_TO=${FOLDER:-.}/$(date '+%y%m%d_%H%M').kmz
echo "Saving to ${SAVE_TO}"
wget --referer='https://www.google.com/maps/d/u/0/viewer?mid=180u1IkUjtjpdJWnIC0AxTKSiqK4G6Pez&ll=48.42522162072407%2C33.18003022257546&z=7' --retry-connrefused -O ${SAVE_TO} ${EXPORT_URL}
