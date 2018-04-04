#!/bin/bash
for host in didattica.polito.it google.it facebook.com ebay.co.uk instagram.com ferrari.it
do
	for DNS in 1.1.1.1 1.0.0.1 8.8.8.8 8.8.4.4
	do
			echo -n "DNS [$DNS] - $host ==> " && dig @$DNS $host | grep "Query" | grep -o -E '[0-9]+' | tr -d "\n" && echo "ms"
	done
done
