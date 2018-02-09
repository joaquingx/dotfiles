#! /bin/bash

cites=${HOME}/.config/scripts/charlyQuotes.txt
nlines=$(awk 'END{print NR}' ${cites})
randvar=$(( ( RANDOM % ${nlines} )  + 1 ))
echo -e "  El más grande dice: "
sed -n ${randvar}p ${cites} | maxLines.awk
