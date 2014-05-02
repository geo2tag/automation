#!/bin/bash

find ./ -name test.suite | xargs rm

cd src/
ln -s ..//3rdparty/libriak/ ./ || true
cd ../
make distclean
qmake
make -j10

