#!/bin/sh

DIR="/opt/files"

rm -rf ${DIR}/*.deb



if [ ! -e ${DIR}/build ]
then 
	echo "0" >/opt/files/build
fi

OLD_BUILD=`cat ${DIR}/build`
BUILD=`echo ${OLD_BUILD} +1 | bc`
echo "New build is ${BUILD}"
echo ${BUILD} >${DIR}/build





