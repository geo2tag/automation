#!/bin/sh

rm -rf /opt/files/*

touch /opt/files/build
BUILD="`cat /opt/files/build`+1|bc"
echo ${BUILD} >/opt/files/build





