#!/bin/sh

string="unzip_"

path = "/home/osint/Documents/BDD_r_2/undefined/VolumePurcharses/"
echo "$path"


echo  ${#string}
echo ${string:${#string}-3:${#string}}

x =$1


for i in *;
do
	if [[ ${i:${#i}-3:${#i}} = "zip" ]];
	then
		x=$(( $x + 1))
		#mkdir "$string"$x
		unzip $i -d  "/home/osint/Documents/BDD_r_2/undefined/VolumePurchases/$string"$x
		rm $i
		#echo "Working on $i file $ ";
	fi
done
