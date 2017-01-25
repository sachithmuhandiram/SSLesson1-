#user notification
echo "Please enter file name : "

#get user input name for the file, save the it in 'filename' variable
read filename

#create a text document with user file name
touch $filename

#getting file extension

#no spaces in string variable initializing , if put spaces.
# shellscript.sh: 11: runpython.sh: $: not found
# shellscript.sh: 12: runpython.sh: $: not found
py="python" 
php="php"

#getting user input about file extension
echo "please enter your file type, python or php"

#read the extension
read extension

#applying appropriate extension

if [ "$extension" = "$py" ];then
	#rename file into a .py extension
	mv $filename $filename.py
	
	#
	echo "Please enter your python code , to save press CTRL+D "
	
	#opening the file
	cat > $filename.py

	#clear the window
	clear

	#user notification
	echo "Python output : "
	#run the python file
	python $filename.py

elif [ "$extension" = "$php" ];then 	#elif [] must have a space between elif and [
	mv $filename $filename.php
	
	echo "Please enter your php code , to save press CTRL+D "

	cat > $filename.php

	#clear the window
	clear

	#user notification
	echo "Php output : "
	#run the php file
	php $filename.php
	
else
	echo "wrong file type"
fi # end of if loop






