#!/bin/bash
#Script to automatically insert posts into The Undercon's index.html.
#Maybe auto insert URLs? That's for later.
month=`date +%b`
day=`date +%d`
year=`date +%y`
hour=`date +%H`
minute=`date +%M`
cd ~/Documents/CFGEmporium
echo Insert your post title:
read title
echo Please type your post:
read post
clear
echo $post
echo 'Confirm the post with "Y".'
read userinput
if [[ "$userinput" = "Y" ]]; then
    sed -i "140i  <article><div></br><b>$title - $month $day $year, $hour:$minute GMT-1</b></br></br><b>$post</b></br></br>- Cornflake </br></br><img src="stamp.jpg" width="25%" height="25%"></div></article></br>" index.html
else
    exit
fi
