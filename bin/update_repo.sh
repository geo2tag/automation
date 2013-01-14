#!/bin/bash


INCOMING=/opt/repo/incoming

echo "# Package deploying info:"
echo "  - Incoming folder: ${INCOMING}"
echo "  - Build atrifacts list -"
ls -la ../


cp ../*.dsc     ${INCOMING}/
cp ../*.tar.gz  ${INCOMING}/
cp ../*.deb gz  ${INCOMING}/

