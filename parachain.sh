#!/bin/bash

Help()
{
   # Display Help
   echo "Add description of the script functions here."
   echo
   echo "Syntax: scriptTemplate [-g|h|v|V]"
   echo "options:"
   echo "g     Print the GPL license notification."
   echo "h     Print this Help."
   echo "v     Verbose mode."
   echo "V     Print software version and exit."
   echo
}

while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
     \?) # incorrect option
         echo "Error: Invalid option"
         exit;;
   esac
done

ARGS=$#

# if [[ "${ARGS}" -ne 3 ]]
# then
#     echo "Usage: ./parachain.sh moonbeam khala para";
#     exit 1;
# fi

declare -A test_var

# add key/value string literals without quote
test_var[key1]=value1

# add key/value string literals with quote
test_var['key2']='value2'

# add key/value pair using bash variables
another_key_var='key3'
another_value_var='value3'
test_var[$another_key_var]=$another_value_var

echo ${test_var[key1]}
echo ${test_var[key2]}
echo ${test_var[$another_key_var]}

# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y