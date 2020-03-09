#!/bin/bash

# Options and Usage
# -----------------------------------
usage() {
  echo "
  [PATH DIRECTORY FITS FILES] [VALUE CTYPE1] [VALUE CTYPE2] [VALUE CTYPE3] [VALUE CTYPE4]
  -h, --help        Display this help and exit
"
}

[[ $# -eq 0 ]] && set -- "--help"

if [[ "$1" == "-h" ]]; then
  usage
  exit 0
fi

if [[ $# -ne 5 ]]; then
    echo "
    Illegal number of parameters. Usage format:
    "
    usage
    exit 2
fi

if [[ -d $1 ]]; then
    echo "$1 is a directory"
    #
    # Browse all the files in the directory of parameter 1 and add the necessary headers
    #
    for i in $(ls -C1 $1)
    do
        /home/mcabrera/MILOS/utilsFits/modhead $1/$i CTYPE1 $2
        /home/mcabrera/MILOS/utilsFits/modhead $1/$i CTYPE2 $3
        /home/mcabrera/MILOS/utilsFits/modhead $1/$i CTYPE3 $4
        /home/mcabrera/MILOS/utilsFits/modhead $1/$i CTYPE4 $5
    done    
elif [[ -f $1 ]]; then
    echo "$1 is a file"
    /home/mcabrera/MILOS/utilsFits/modhead $1 CTYPE1 $2
    /home/mcabrera/MILOS/utilsFits/modhead $1 CTYPE2 $3
    /home/mcabrera/MILOS/utilsFits/modhead $1 CTYPE3 $4
    /home/mcabrera/MILOS/utilsFits/modhead $1 CTYPE4 $5    
else
    echo "$1 is not valid"
    exit 1
fi


