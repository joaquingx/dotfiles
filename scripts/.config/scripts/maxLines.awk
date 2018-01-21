#!/bin/awk -f
BEGIN{
	picante="  ";
	FS=""
	cnt=0;
	final="";
	cnt = 0;
	printf "%s", picante
}
{
	for(i=1;i<=NF;i++){
		cnt = cnt + 1;
		if(cnt > 50 && $i == " " ){
			printf "\n%s", picante;
			cnt = 0;
		}
		printf "%s", $i;
	}
}

