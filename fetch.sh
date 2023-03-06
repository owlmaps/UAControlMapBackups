#!/bin/sh
OWLDIR=/home/fdov/owl/ukraine/map
OWLFILE=$OWLDIR/$(date '+%y%m%d_%H%M').kmz
cd $OWLDIR
wget -q -O $OWLFILE https://www.google.com/maps/d/u/0/kml?mid=180u1IkUjtjpdJWnIC0AxTKSiqK4G6Pez
git checkout master
git add $OWLFILE
git commit -m "Daily fetch." 
git push
