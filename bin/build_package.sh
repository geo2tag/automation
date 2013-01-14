#!/bin/bash

alias make="make --jobs=5"

./auto/bin/update_build_number.sh
dch --force-bad-version --local .`hostname`-`cat /opt/files/build`. "Built on `uname -a` at `date`"
dpkg-buildpackage -rfakeroot 
