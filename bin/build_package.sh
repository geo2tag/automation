#!/bin/bash

./auto/bin/update_build_number.sh


echo `git rev-parse HEAD` >./HEAD


dch --local .`cat /opt/files/build`.`hostname` "Auto build at `date` `time` on `hostname` "
dpkg-buildpackage -rfakeroot -j10 -us -uc 
