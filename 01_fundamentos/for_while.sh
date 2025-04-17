#!/bin/bash

for f in *.csv; do
	echo "$f: $(wc -l < "$f") linhas"
done
