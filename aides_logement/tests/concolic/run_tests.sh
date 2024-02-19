#!/bin/bash

if [ $# -ne 1 ]
then
        echo "usage: $0 <id>"
        exit 1
else ID=$1
fi


OUTPUT_DIR=./output/
mkdir -p "$OUTPUT_DIR"

BASE_COMMAND="catala Concolic --disable-warnings --stats"

function make_command ()
{
    local inputfile="$1"
    local basename=$(basename -s '.catala_fr' $inputfile)
    local scopename="Test"
    local logfile="$OUTPUT_DIR$basename.$ID.log"
    echo "$BASE_COMMAND --scope=$scopename $inputfile > $logfile"
}

for f in $(ls *.catala_fr)
do
    echo $f
    eval $(make_command $f)
done

