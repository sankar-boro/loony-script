#!/bin/bash

# 
hello_world () {
   echo 'hello, world'
}
hello_world

#
fname='sankar'
lname='boro'
fn_one() {
  local fname='arun' # we haven't updated global fname here
  lname='das' # but here we have updated global lname
  echo "Inside function: fname: $fname, lname: $lname" # therefore here global lname is set to das
}
echo "Before executing function: fname: $fname, lname: $lname"
fn_one
echo "After executing function: fname: $fname, lname: $lname" # no change in fname because global fname was not mutated

#
fn_two() {
  echo 'Hello World!'
  return 0
}
fn_two
echo $?

#
fn_three() {
    greet='Hello World! My name is SAnkar'
}
fn_three
echo ${greet}

#
fn_four() {
    echo "return value"
}
data=$(fn_four)
echo ${data}

# args fun
fn_five() {
    echo "$*"
}

fn_five "sankar" "arun"