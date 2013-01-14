#!/bin/bash

find ./ -name test.suite | xargs rm

./auto/bin/build_package.sh

cat ./test_summary.log
