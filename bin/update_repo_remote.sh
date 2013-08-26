#!/bin/bash

if [ $# -ne "2" ]
then
  echo "Usage: ./update_repo_remote.sh [testing|stable] user@hostname"
  exit 1
fi

SUBREPO=$1
SSH_STRING=$2
INCOMING=${SSH_STRING}:/opt/repo/incoming_${SUBREPO}

echo "# Package deploying info:"
echo "  - Incoming folder: ${INCOMING}"
echo "  - Build atrifacts list -"
ls -la ../


scp ../geo2tag-* ${INCOMING}/


exit 0

