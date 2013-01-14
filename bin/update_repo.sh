#!/bin/bash


INCOMING=/opt/repo/incoming

echo "# Package deploying info:"
echo "  - Incoming folder: ${INCOMING}"
echo "  - Build atrifacts list -"
ls -la ../


cp ../*     ${INCOMING}/

