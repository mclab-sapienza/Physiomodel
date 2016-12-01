#! /bin/bash

variables=$1
equations=$2
while read l; do
  fgrep $l $equations > /dev/null || echo "NOT FOUND $l" 
done <$variables
