#!/bin/bash
for i in $(seq -w 4 110); do
	touch "plsql${i}.sql"
done
echo "creados"
