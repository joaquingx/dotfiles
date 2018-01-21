#! /bin/awk -f
BEGIN{
	happy="  ";
	flat="  ";
	sad="  ";
}
{
	gsub("%","",$5);
	if(int($5) < 50){
		printf "%s", happy;
	}
	if(int($5) >= 50 && int($5) < 80){
		printf "%s", flat;
	}
	if(int($5) >= 80){
		printf "%s", sad;
	}
	print $6, "has used",$5"% of his storage";
}
