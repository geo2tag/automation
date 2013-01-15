#!/bin/bash

./auto/bin/update_build_number.sh

dch --force-bad-version --local .`hostname`-`cat /opt/files/build`. "Built on `uname -a` at `date`"
dpkg-buildpackage -rfakeroot -j10 -k38B1DDB7 
