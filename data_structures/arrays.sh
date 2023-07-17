#!/bin/bash

declare -A names

names["user1"]="Sankar boro"

names+=( ["user2"]="Arun boro" ["user3"]="Lily Boro" )

echo ${names["user1"]}
echo ${names["user2"]}
echo ${names["user3"]}
