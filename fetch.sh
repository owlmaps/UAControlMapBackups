#!/bin/bash
FOLDER=$1
EXPORT_URL='https://www.google.com/maps/d/u/0/kml?mid=180u1IkUjtjpdJWnIC0AxTKSiqK4G6Pez'
SAVE_TO=${FOLDER:-.}/$(date '+%y%m%d_%H%M').kmz
tries=30
retry_secs=30

fetchloop() {
rt=0
    while [ $rt -lt $tries ]; do
        if wget -O ${SAVE_TO} ${EXPORT_URL}; then
            echo "Saved to ${SAVE_TO}"
        return 0
	  else
        echo "We don't give up that easily... Retrying in $retry_secs s..."
		sleep $retry_secs
        let "rt+=1"
    fi
    done

    echo "FAIL: $rt retries... didn't work. Shit."
    return 1
}

fetchloop
