#!/bin/bash

input_file=$1
output_file="${input_file%.csv}_comma.csv"

tr ';' ',' < "$input_file" > "$output_file"