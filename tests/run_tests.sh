#!/bin/bash

# sources
src[1]=socib-buoy.nc
src[2]=http://thredds.socib.es/thredds/dodsC/drifter/drifter_svp004-ime_svp004/L1/2011/dep0001_drifter-svp004_ime-svp004_L1_2011-09-08.nc

# variable/s (for each source)
var[1]=AIRT,AIRP
var[2]=WTEM

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
  ../ncdump-json -h -j ${src[$index]} | json_verify
  ((errors+=$?))
  echo -ne "Variable (-v): "
  ../ncdump-json -v ${var[$index]} -j ${src[$index]} | json_verify
  ((errors+=$?))
  echo "--------"
  ((index++))
done

echo ""
echo "ERRORS: " $errors

