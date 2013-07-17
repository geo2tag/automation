#!/bin/bash

if [ $# -ne "1" ]
then
	echo "Usage: ./apply_repo_updates.sh [testing|stable]"
	exit 1
fi

SUBREPO=$1

echo "Do: ssh zmm@build64.geo2tag.org sudo /opt/repo/import_packages.sh ${SUBREPO}"

ssh zmm@build64.geo2tag.org sudo /opt/repo/import_packages.sh ${SUBREPO}
