#!/bin/sh
FOLDER=$1
EXPORT_URL='https://www.google.com/maps/d/u/0/kml?mid=180u1IkUjtjpdJWnIC0AxTKSiqK4G6Pez'
SAVE_TO=${FOLDER:-.}/$(date '+%y%m%d_%H%M').kmz
BRANCH=master
REMOTE=origin
echo "Saving to ${SAVE_TO}"
wget -q -O ${SAVE_TO} ${EXPORT_URL}
git checkout ${BRANCH}
git add $SAVE_TO
git commit -m "Daily fetch: $(date '+%y%m%d_%H%M')"
git push ${REMOTE} ${BRANCH}
