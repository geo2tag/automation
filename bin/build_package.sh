#!/bin/bash

dch --append "Built on `uname -a` at `date`"
dpkg-buildpackage -rfakeroot -j5
