#!/bin/bash

dch --force-bad-version --local @`hostname`  "Built on `uname -a` at `date`"
dpkg-buildpackage -rfakeroot -j5
