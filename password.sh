#!/bin/bash
RED=`tput setaf 1`
GREEN = `tput setaf 2`  
reset=`tput sgr0`
password = $1
count =`echo ${#password}`

if [[ $count -ne 10 ]];then
  echo "${RED}Password length should be 10 characters${reset}"
  exit 1;
  fi
echo $password | grep "[A-Z]" | grep "[a-z]" | grep "[0-9]"
if [[ $? -ne 0 ]];then
echo "${RED}Password must contains upparcase ,lowecase and number${reset}"
exit 1;
fi
echo "${GREEN}Strong Password${reset}"
      

