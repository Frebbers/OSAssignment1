#!/bin/bash

# Simple test of the command interpreter

in="abbabaq"
out="0,3,5;"

[[ $(./cmd_int <<< "$in") == "$out"* ]] && echo "PASSED" || echo "FAILED, EXPECTED $out GOT $(./cmd_int <<< "$in")"

in2="abccbaabcq"
out2="5;"

[[ $(./cmd_int <<< "$in2") == "$out2"* ]] && echo "PASSED" || echo "FAILED, EXPECTED $out2 GOT $(./cmd_int <<< "$in2")"

in3="cccax"
out3="3;"

[[ $(./cmd_int <<< "$in3") == "$out3"* ]] && echo "PASSED" || echo "FAILED, EXPECTED $out3 GOT $(./cmd_int <<< "$in3")"

in4="cccbbf"
out4=";"

[[ $(./cmd_int <<< "$in4") == "$out4"* ]] && echo "PASSED" || echo "FAILED, EXPECTED $out4 GOT $(./cmd_int <<< "$in4")"
