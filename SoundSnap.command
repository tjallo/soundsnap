#!/bin/bash
cd "`dirname "$0"`"

sudo chmod +x soundsnaprun
sudo chmod +x remove
mkdir .temp
cd .temp
clear
echo "Typ \"stop\" om het programma af te sluiten."
echo "Typ \"remove\" om alle Sounds te verwijderen en af te sluiten."
echo "Ik ben opzoek naar: "
read word
echo $word > woord.txt
cd ..

while :
do	
	if [ $word = "stop" ]
	then
		rm -r .temp
		break
	elif [ $word = "remove" ]
	then
			rm -r Sounds/*
			rm -r .temp/

		break
	fi

	./soundsnaprun
	cd .temp
	echo
        echo
	echo "Ik ben opzoek naar: "
	read word
	echo $word > woord.txt
	cd ..
done
