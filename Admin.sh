###################################################################
#Title: Admin Operations
#Author: Dhaneshwari Pendiyala
#Usage: The following programm used for performing admin operations
####################################################################

#! /bin/bash


echo 	

echo -e "1. create Directory\n2. Remove Directory\n3. Move Files From Directory1 to Directory2\n4. Show Content of File\n5. Show System Usuage\n6.Compress Files\n7. Extract File\n8. Exit"

echo

for((i = 0; i < 6; i++))
do
        for((j = 0; j <= i; j++))
        do
                echo -n  '#'
        done
        echo 

done

echo "Enter Option: "
 read number

case $number in

1)
	echo "Enter Directory Name:"
	read mkName
	mkdir $mkName
	echo "Directctory Created!";;
2)
	echo "Enter Exiting Direatory Name: "
	read rmName
	rm -r $rmName
	echo "Directory Removed!";;

3)
	echo "Enter file name to be moved: "
	read fileName
	echo "Enter path of the destination directory: "
	read path
	mv $fileName $path
	echo "Files Moved to Destination.";;

4)
	echo "Enter File Name: "
	read filenm
	cat $filenm;;

5)

	echo "-------------------System Usuage----------------"
	$vmstat;;

6)

	echo "Enter tar file name(with .tar.gz): "
	read filename
	echo "Enter path of the file: "
        read path
	tar czf $filename $path;;	
7)

	echo "Enter File name(with .tar.gz): "
        read filename
	tar -xzvf $filename;;
8)

	$exit;;


?)
	echo "Invalid Option"

esac
