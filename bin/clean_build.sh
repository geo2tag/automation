#!/bin/bash

find ./ -name test.suite | xargs rm

make distclean
qmake
make -j10

