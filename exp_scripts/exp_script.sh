#!/bin/bash

#python3 client.py "path" nw pf dev
#Example python3 client_mnv3_single.py "/media/dream-agx3/SSD250/rahulb" 2 2

prefetch_factor=2
no_workers=(0 1 2 4)
external_device="nvme0n1"

for no in ${no_workers[@]};
do
	echo "Config- num workers is " $no
	python3 client_mnv3_gld23k.py "/media/ssd/" $no $prefetch_factor $external_device > log_file_$no
done

