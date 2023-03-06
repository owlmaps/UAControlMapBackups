#!/bin/sh
BRANCH=master
REMOTE=origin
git checkout ${BRANCH}
git add $SAVE_TO
git commit -m "Daily fetch: $(date '+%y%m%d_%H%M')"
git push ${REMOTE} ${BRANCH}
