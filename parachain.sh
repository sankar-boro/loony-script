#!/bin/bash

ARGS=$#

if [[ "${ARGS}" -ne 3 ]]
then
    echo "Usage: ./parachain.sh moonbeam khala para";
    exit 1;
fi

# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y