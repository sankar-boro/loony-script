#!/bin/bash

echo -n "Enter the name of a country: "
read COUNTRY

echo -n "The official language of $COUNTRY is ";

case $COUNTRY in
  Nepal) echo -n "Nepali";;
  Maldives | "Andaman") echo -n "Tamil";;
  Bangladesh | "Pakistan" | WestBengal) echo -n "Bengali";;
  *) echo -n "tribal";;
esac