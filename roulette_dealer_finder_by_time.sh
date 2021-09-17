#!/bin/bash

grep $1':00:00 '$2 $3'_Dealer_schedule' | awk -F'\\t' '{print $1,$3}'
