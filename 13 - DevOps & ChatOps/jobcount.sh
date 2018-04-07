#!/bin/bash

YEAR=$(date +%Y)
if [[ -n "$1" ]]; then
    YEAR=$1
fi

[[ -e jobruns.txt ]] && rm jobruns.txt;
i=0;
resultcount=1
while [[ $resultcount -gt 0  ]]; do

    result=$(jobs-search -o $i -l 300 -v --orderBy=created --order=desc --filter=appId,owner,created  "appId.like=dnasubway*u*"  "created.between=$YEAR-01-01,$YEAR-12-30");

    resultcount=$(echo $result | jq -r '.[].created' | wc -l)

    if [[ $resultcount -gt 0 ]]; then

        echo $result | jq -r '.[].appId' >> jobruns-$YEAR.txt;
    fi

    i=$[i+300]
done

cat jobruns-$YEAR.txt | sort | uniq -c | sort -n -k 1,1 ;


