#!/bin/bash

if [ $# -ne "1" ]
then
  echo "Usage: ./update_repo_remote.sh [testing|stable]"
  exit 1
fi

SUBREPO=$1

INCOMING=deployuser@download.geo2tag.org:/opt/repo/incoming_${SUBREPO}

echo "# Package deploying info:"
echo "  - Incoming folder: ${INCOMING}"
echo "  - Build atrifacts list -"
ls -la ../


scp ../geo2tag-* ${INCOMING}/


exit 0

