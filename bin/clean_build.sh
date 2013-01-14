#!/bin/bash

find ./ -name test.suite | xargs rm

dpkg-buildpackage -rfakeroot --jobs=5

cat ./test_summary.log
