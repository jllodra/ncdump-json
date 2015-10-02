#!/bin/bash

# sources
src[1]=socib-buoy.nc
src[2]=sresa1b_ncar_ccsm3-example.nc
src[3]=testrh.nc

# variable/s (for each source)
var[1]=AIRT,AIRP
var[2]=lon
var[3]=var1

# Tests

count=${#src[@]}
index=1

errors=0

echo "Running tests:"
echo "--------------"

while [ "$index" -le "$count" ]
do
  echo ${src[$index]}
  echo "********"
  echo -ne "Headers (-h): "
  ../ncdump-json -h -j ${src[$index]} | python -m json.tool
  ((errors+=$?))
  echo -ne "Variable (-v): "
  ../ncdump-json -v ${var[$index]} -j ${src[$index]} | python -m json.tool
  ((errors+=$?))
  echo "--------"
  ((index++))
done

echo ""
echo "ERRORS: " $errors
