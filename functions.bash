#!/bin/bash

reverse() {
    # first argument is the array to reverse
    # second is the output array
    declare -n arr="$1" rev="$2"
    for i in "${arr[@]}"
    do
        rev=("$i" "${rev[@]}")
    done
}


hexconver () {

for hex in ${!number[@]}; do

if [[ ${number[$hex]} = "A" ]]; then
	number[$hex]=10
fi
if [[ ${number[$hex]} = "B" ]]; then
	number[$hex]=11
fi
if [[ ${number[$hex]} = "C" ]]; then
	number[$hex]=12
fi
if [[ ${number[$hex]} = "D" ]]; then
	number[$hex]=13
fi
if [[ ${number[$hex]} = "E" ]]; then
	number[$hex]=14
fi
if [[ ${number[$hex]} = "F" ]]; then
	number[$hex]=15
fi

if [[ ${number[$hex]} = "a" ]]; then
	number[$hex]=10
fi
if [[ ${number[$hex]} = "b" ]]; then
	number[$hex]=11
fi
if [[ ${number[$hex]} = "c" ]]; then
	number[$hex]=12
fi
if [[ ${number[$hex]} = "d" ]]; then
	number[$hex]=13
fi
if [[ ${number[$hex]} = "e" ]]; then
	number[$hex]=14
fi
if [[ ${number[$hex]} = "f" ]]; then
	number[$hex]=15
fi

done

}

todecimal () {

decimal=0

for ((i = 0; i < ${#num}; i++)); do
	export number+=("${num:i:1}")
done


hexconver
reverse number value

length=${#value[@]}

for (( i = 0; i < $length; i++ ))
do
	decimal=$(( decimal + ((value[$i] * ($start ** $i))) ))	
done


}


converhex () {

for hex in ${!arrayindex[@]}; do


if [[ ${arrayindex[$hex]} -eq 15 ]]; then
	arrayindex[$hex]=F
fi
if [[ ${arrayindex[$hex]} -eq 14 ]]; then
	arrayindex[$hex]=E
fi
if [[ ${arrayindex[$hex]} -eq 13 ]]; then
	arrayindex[$hex]=D
fi
if [[ ${arrayindex[$hex]} -eq 12 ]]; then
	arrayindex[$hex]=C
fi
if [[ ${arrayindex[$hex]} -eq 11 ]]; then
	arrayindex[$hex]=B
fi
if [[ ${arrayindex[$hex]} -eq 10 ]]; then
	arrayindex[$hex]=A
fi

done

for hex in ${!hexadecimal[@]}; do


if [[ ${hexadecimal[$hex]} -eq 15 ]]; then
	hexadecimal[$hex]=F
fi
if [[ ${hexadecimal[$hex]} -eq 14 ]]; then
	hexadecimal[$hex]=E
fi
if [[ ${hexadecimal[$hex]} -eq 13 ]]; then
	hexadecimal[$hex]=D
fi
if [[ ${hexadecimal[$hex]} -eq 12 ]]; then
	hexadecimal[$hex]=C
fi
if [[ ${hexadecimal[$hex]} -eq 11 ]]; then
	hexadecimal[$hex]=B
fi
if [[ ${hexadecimal[$hex]} -eq 10 ]]; then
	hexadecimal[$hex]=A
fi

done

}

tohexadecimal () {

num=$decimal

base=16	

for expo in {15..0}; do

check=$(( (num / (base ** $expo)) ))
if [[ $check -le 0 ]];then
	hexadecimal+=( 0 )
fi

if [[ $check -gt 0 ]]; then
if [[ $check -lt $base ]]; then
hexadecimal+=( $check )
num=$(( num - (check * (base ** $expo)) ))
fi
fi

done

converhex

}

tooctal () {

num=$decimal

base=8	

for expo in {20..0}; do

check=$(( (num / (base ** $expo)) ))
if [[ $check -le 0 ]];then
	octal+=( 0 )
fi

if [[ $check -gt 0 ]]; then
if [[ $check -lt $base ]]; then
octal+=( $check )
num=$(( num - (check * (base ** $expo)) ))
fi
fi

done


}

tobinary () {

num=$decimal

base=2

for expo in {32..0}; do

check=$(( (num / (base ** $expo)) ))
if [[ $check -le 0 ]];then
	binary+=( 0 )
fi

if [[ $check -gt 0 ]]; then
if [[ $check -lt $base ]]; then
binary+=( $check )
num=$(( num - (check * (base ** $expo)) ))
fi
fi

done


}