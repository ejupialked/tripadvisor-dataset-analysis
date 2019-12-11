#!/bin/bash

folderReviews="$1"
tag="<Overall>"

for hotel in ${folderReviews}/*.dat
do
  average=$(
  grep "$tag" $hotel |
  sed "s/$tag//"     |
  awk '{sum+=$1; scores++} END { printf "%.2f", sum/scores}'
  )
  echo "$(basename $hotel .dat) $average"
done | sort -k 2 -nr
