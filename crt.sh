#!/bin/bash
# Receiving target domain from user
echo "Please target domain (target) enter (: example.com):"
read target

# Target domain received from user, now starting the process
echo "Target domain: ${target}. DNS s are starting to be received..."


echo "               _ _       \ \ " 
echo "    .-\"\"\"\"\"-. / \_> /\    |/ "
echo "   /         \.'\`  \`',.--//"
echo " -(    ALİ    I      I  @@\ " 
echo "   \         /'.____.'\___|" 
echo "    '-.....-' __/ | \   (\`)"
echo "curl          /   /  / " 
echo "                 \  \ "

# Run the curl command with the target domain entered and write the output to the DNS.txt file
echo "Getting DNS information from crt.sh..."
curl -s "https://crt.sh/?q=%25.${target}&output=json" | jq -r '.[].name_value' | sort -u > DNS.txt

# Notify the user when the process is completed
echo "DNS s are recorded in the sub.txt file."

# Checking the result file
echo "You can find the results in the DNS.txt file."
