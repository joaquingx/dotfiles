#! /bin/bash

error='\033[0;31m'
success='\033[0;32m'
alert='\033[1;33m'
neutral='\033[0m'

greeting() {
	echo "󰀲  Hello ${USER}, here $1!"
	echo "󰀲  This is your report: "
}

statusGit(){
	cd $1
	lastDate=$(git show origin/master | head -n 3 | tail -n 1 |\
		   	awk 'BEGIN{ FS=" " } {print $4 }')
	actDate=$(date |\
		awk 'BEGIN{ FS=" " } {print $3 }')
	diffDate=$(($actDate - $lastDate))
	color=""
	test $diffDate -lt 10  && color=$success
	test $diffDate -ge 10  && color=$alert
	test $diffDate -ge 30   && color=$error
	echo -e "  The last update of your $2 was ${diffDate} day ago"
}

storageManager(){
	df -h | grep /dev/sd | storageControl.awk
}

journalManager(){
	nAlert=$(($(journalctl -p 1 --since "24 hours ago" | wc -l)-1))
	nCritical=$(($(journalctl -p 2..2 --since "24 hours ago" | wc -l)))
	echo "  Your system has ${nAlert} alert errors"
	echo "  Your system has ${nCritical} critical errors"
}


greeting $1
#echo -en "${neutral}"
statusGit ~/dotfiles dotfiles
#echo -en "${neutral}"
storageManager
journalManager
Bienvenida.sh
echo "   "
echo "   "
