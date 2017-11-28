#!/bin/bash


touch py-input.txt

bash obtain_raw_data.sh
python3 average.py

rm py-input.txt
