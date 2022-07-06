#!/usr/bin/bash

echo Downloading Purpur ...
wget "https://api.purpurmc.org/v2/purpur/1.18.2/latest/download" -O purpur.jar -o /dev/null

#Download plugins
for i in $(cat plugins.txt)
do
	l="$(echo $i | cut -d'@' -f1)" 
	f="$(echo $i | cut -d'@' -f2)"

	echo Downloading $f ...
	wget "$l" -O "plugins/$f" -o /dev/null
done

