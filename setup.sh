#!/usr/bin/bash

echo Download purpur
wget "https://api.purpurmc.org/v2/purpur/1.18.1/latest/download" -O purpur.jar -o /dev/null

#Download plugins
for i in $(cat plugins.txt)
do
	l="$(echo $i | cut -d'@' -f1)" 
	f="$(echo $i | cut -d'@' -f2)"

	echo Download $f
	wget "$l" -O "plugins/$f" -o /dev/null
done

