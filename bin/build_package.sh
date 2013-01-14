#!/bin/bash

./auto/bin/update_build_number.sh
dch --force-bad-version --local .`cat /opt/files/build`  "Built on `uname -a` at `date`"
dpkg-buildpackage -rfakeroot -j5
