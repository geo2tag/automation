#!/bin/bash

./auto/bin/update_build_number.sh


echo `git rev-parse HEAD` >./HEAD


dch .`cat /opt/files/build`.`hostname`
dpkg-buildpackage -rfakeroot -j10 -us -uc 
