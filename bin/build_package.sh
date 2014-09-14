#!/bin/bash

./auto/bin/update_build_number.sh

package="geo2tag"
version="0.33"
build=`cat /opt/files/build`

echo "Starting build ${package} version ${version} build ${build}"

rm -rf ./.build 
mkdir -p ./.build/${package}-${version}/src/

cp -r ./*   ./.build/${package}-${version}/

echo `git rev-parse HEAD` >./HEAD

cd ./.build/${package}-${version}/

#dch --local .`cat /opt/files/build`.`hostname` "Auto build at `date` `time` on `hostname` "
dpkg-buildpackage -rfakeroot -j10 -us -uc 

cd -


