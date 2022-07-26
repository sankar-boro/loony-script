#!/bin/bash

# uname=$(id -un)
uname=`id -un`

echo "UID of ${uname} is ${UID}"

if [[ "${UID}" -eq 1000 ]]
then
    echo "Root user."
elif [[ "$UID" -eq 0 ]]
then
    echo "Sudo user."
else
    echo "Not a root user."
fi


SUDO_USER=`id -un`

if [[ ${?} -ne 0 ]]
then
    echo "Not a sudo user";
    exit 1;
fi

SUDO_USER=`id -un`

if [[ ${?} -eq "sankar" ]]
then
    echo "Username is ${SUDO_USER}";
    exit 0;
fi
