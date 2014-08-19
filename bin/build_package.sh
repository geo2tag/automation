#!/bin/bash

./auto/bin/update_build_number.sh


echo `git rev-parse HEAD` >./HEAD


dch --force-bad-version --local .`cat /opt/files/build`.`hostname` "Built on `uname -a` at `date`"
dpkg-buildpackage -rfakeroot -j10 -us -uc 
