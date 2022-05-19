#!/bin/bash

for expo in {32..0}; do

base=16
check=$(( base ** expo ))
if [[ $check -gt 0 ]]; then
echo "$base|$expo|$check"
fi

base=10
check=$(( base ** expo ))
if [[ $check -gt 0 ]]; then
echo "$base|$expo|$check"
fi

base=8
check=$(( base ** expo ))
if [[ $check -gt 0 ]]; then
echo "$base|$expo|$check"
fi

base=2
check=$(( base ** expo ))
if [[ $check -gt 0 ]]; then
echo "$base|$expo|$check"
fi

done