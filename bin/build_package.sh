#!/bin/bash

dch --force-bad-version --local pulse --append "Built on `uname -a` at `date`"
dpkg-buildpackage -rfakeroot -j5
