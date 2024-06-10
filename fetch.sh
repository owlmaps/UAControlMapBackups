#!/bin/bash
FOLDER=$1
EXPORT_URL='https://www.google.com/maps/d/kml?mid=1xPxgT8LtUjuspSOGHJc2VzA5O5jWMTE'
SAVE_TO=${FOLDER:-.}/$(date '+%y%m%d_%H%M').kmz
tries=90
retry_secs=30

fetchloop() {
rt=0
    while [ $rt -lt $tries ]; do
        if wget -O ${SAVE_TO} ${EXPORT_URL}; then
            echo "Saved to ${SAVE_TO}"
	    cp ${SAVE_TO} ${FOLDER:-.}/latest.kmz
        return 0
	  else
        echo -n "We don't give up that easily... Retrying in $retry_secs s..."
		sleep $retry_secs
        let "rt+=1"
	echo "($rt)"
    fi
    done

    echo "FAIL: $rt retries... didn't work. Shit."
    return 1
}

fetchloop
