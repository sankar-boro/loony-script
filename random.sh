#!/bin/bash

echo "${RANDOM}"
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "Password: ${PASSWORD}"