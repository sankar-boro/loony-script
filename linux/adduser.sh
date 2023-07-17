#!/bin/bash

read -p "username" USER_NAME
read -p "name" NAME
read -p "password" PASS

# add user
useradd -c "${NAME}" -m "${USER_NAME}"
# set password
echo ${PASS} | passwd --stdin ${USER_NAME}
# reset password on next login. -e expire
passwd -e ${USER_NAME}