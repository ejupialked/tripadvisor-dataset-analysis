#!/bin/bash

folderReviews="$1"
tag="<Author>"

cd $folderReviews

grep -c "$tag" *   |
sed "s/\.dat:/ /g" |
sort -k 2 -nr

