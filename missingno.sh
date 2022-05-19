#!/bin/bash


source functions.bash


hexidecimal=()
decimal=()
octal=()
binary=()
number=()

##	read -r -p "What is your number? " num
##	read -r -p "What is your starting base? " start

read -r -p "Number/Base? " num start

export num
export start
export base

todecimal
tobinary
tooctal
tohexadecimal	

converhex

printf $'\n'


binval=$(IFS=; echo "${binary[*]}")
octval=$(IFS=; echo "${octal[*]}")
hexval=$(IFS=; echo "${hexadecimal[*]}")

decimal=$(echo $decimal | sed "s/^0*\([1-9a-fA-F]\)/\1/;s/^0*$/0/")
binval=$(echo $binval | sed "s/^0*\([1-9a-fA-F]\)/\1/;s/^0*$/0/")
octval=$(echo $octval | sed "s/^0*\([1-9a-fA-f]\)/\1/;s/^0*$/0/")
hexval=$(echo $hexval | sed "s/^0*\([1-9a-fA-F]\)/\1/;s/^0*$/0/")

echo $binval
echo $decimal
echo $octval
echo $hexval