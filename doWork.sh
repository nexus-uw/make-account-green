#!/usr/bin/env bash 
git clone https://github.com/nexus-uw/make-account-green
cd make-account-green

echo $[ 1 + $[ RANDOM % 10000000 ]] > random_number.txt
git add random_number.txt
git config user.email "nexus-uw@users.noreply.github.com"
git config user.name "nexus-uw"
git commit -m 'added new random number'
git push origin master --follow-tags
cd ..
rm -rf make-account-green
