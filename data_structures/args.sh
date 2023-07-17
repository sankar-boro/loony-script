#!/bin/bash

names=("sankar", "boro", "arun", "das")

# for name in ${names[*]}
# do
#     echo "Hi ${name}"
# done

# use for loop read all nameservers
# for (( i=0; i<${tLen}; i++ ));
# do
#   echo "${NAMESERVERS[$i]}"
# done

names_len="${#names[@]}"
echo "${names_len}"
COUNT=0
while [[ "${COUNT}" -le names_len ]]
do
    echo "${names[COUNT]}"
    # ((COUNT=COUNT+1))
    "COUNT+=1"
done    