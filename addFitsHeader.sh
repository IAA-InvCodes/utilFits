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

#
# Recorre todo los ficheros en el directorio del parametro 1 y les añade las cabeceras necesarias
#
for i in $(ls -C1 $1)
do
    /home/mcabrera/MILOS/utilsFits/modhead $1/$i CTYPE1 $2
    /home/mcabrera/MILOS/utilsFits/modhead $1/$i CTYPE2 $3
    /home/mcabrera/MILOS/utilsFits/modhead $1/$i CTYPE3 $4
    /home/mcabrera/MILOS/utilsFits/modhead $1/$i CTYPE4 $5
done