#! /bin/csh -f
clear

# Data that is being formatted below script.
# File selection to make, selected file the $input for the rest of the data formatting lines in the script.
echo " "
echo -n "Input your file here: " 
set input = $<
clear
echo "You entered the file name:" $input

# Find data starting with @, removes @ and puts the data that followed in lines.
grep -oE '[^@]+' $input > export.txt

# Keeps the first 6 lines of text file.
cat export.txt | awk 'NR < 7' > export.txt

# Following strings delete field letters for use in seperate script, to plot data.
cat export.txt | tr -d 'a' > export.txt
cat export.txt | tr -d 'b' > export.txt
cat export.txt | tr -d 'c' > export.txt
cat export.txt | tr -d 'd' > export.txt
cat export.txt | tr -d 'e' > export.txt
cat export.txt | tr -d 'f' > export.txt

# !!! Missing a fail safe for when an incorrect file is entered. Any file inputted will create an export.txt but rest of script will not process any data.
##find `pwd` -empty -type f -delete

##if ( -z export.txt) then
	##clear
##if ( -z export.txt)
	##echo "Empty File, run script again."
##endif

# Export.txt was created, and is located in the pwd
echo " "
if ( -e export.txt) then
	echo "export.txt was created with formatted data."
endif


# if then command to point out to user about any variants 
# have a save promt, that asks the user if they want to save the completed data in the a directory.

# Data being formatted.
@a654321@b654321@c654321@d654321@e654321@f654321
@a654321@b654321@c654321@d654321@e654321@f654321
@a654321@b654321@c654321@d654321@e654321@f654321
@a654321@b654321@c654321@d654321@e654321@f654321
@a654321@b654321@c654321@d654321@e654321@f654321
