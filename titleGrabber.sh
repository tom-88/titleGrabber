#!/bin/bash

PDFNAME=${1?Error : no pdf used}

echo "$PDFNAME"

pdftotext -f 1 -l 1 "$PDFNAME"

read -r firstline < "${PDFNAME/.pdf/.txt}"

if [ ${#firstline} -gt 254 ]; then
length < ${#firsline} - 254

echo "${firstline%%*()}"
fi 

echo "${firstline/\//}" 

echo "${firstline/:/}" 
echo "${firstline/./}"

# illegal (sofar) / : . 
# max 255 chars

mv "$PDFNAME" "$firstline.pdf"

rm "${PDFNAME/.pdf/.txt}"                           
