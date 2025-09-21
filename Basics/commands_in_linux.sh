#!/bin/bash
dict_name="test"
file_name="test.md"
# ls --tree is cool

mkdir $dict_name # make a directory named what you specified
echo "directory named test is created see below if you not believe me "
ls            # Lists the files and directories
cd $dict_name # changes the crrrent directory to one that is specified
echo "now you are in that test directory"
echo "Now created a file named test.md and you could't stop me"
touch $file_name # sounds funny but it creactes the file with name u specified
echo "----------- Below added file content -------------"
echo "# Dis Nots " >$file_name # echo you know it prints stuff on the terminal
# The right arrow [ > ] command rewrites the echoed or passed value to file tht it is pointing
cat $file_name # animal that can see you from behind
# It sounds funny ,using cat command u can see the content of the file
echo "--------- Below added more file content ----------"
echo "## List of stuff" >>$file_name # the double arrow doesn't rewrites or overwrites like single arrow [>]
# It adds or appends the give input
echo "---------------- This is what file is now -----------"
cat $file_name
echo "current directory : "
pwd # famous command prints the current working directories path [ Path of Working directory /]
echo "AHAH deleted the file I created"
rm $file_name # deletes the file that u specified
cd ../        # dot dot [..] means back or back folder for cd / is to specify its a path
# To access the current directory its ./ it puts currrent directory use with ls or cat
ls
echo "Deleted the directory I created"
rmdir $dict_name # Removes the empty directory so its even safe to do
# rmdir *
# * means everything in current directory
# will give errors on files that are not empty not an issue

#  -- will add more below ---
