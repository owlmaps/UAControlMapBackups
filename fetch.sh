#!/bin/sh
OWLDIR=/home/fdov/owl/ukraine/map
wget -q -O $OWLDIR/$(date '+%y%m%d_%H%M').kmz https://www.google.com/maps/d/u/0/kml?mid=180u1IkUjtjpdJWnIC0AxTKSiqK4G6Pez
