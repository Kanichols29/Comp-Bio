#!/bin/bash

cut -f 1 "$1" | grep -w "$2" | wc -l
