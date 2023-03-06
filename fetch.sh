#!/bin/sh
FOLDER=$1
EXPORT_URL='https://www.google.com/maps/d/u/0/kml?mid=180u1IkUjtjpdJWnIC0AxTKSiqK4G6Pez'
SAVE_TO=${FOLDER:-.}/$(date '+%y%m%d_%H%M').kmz
echo "Saving to ${SAVE_TO}"
wget -q -O ${SAVE_TO} ${EXPORT_URL}
