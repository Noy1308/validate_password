#!/bin/bash
password=$1
password2=$2
RED='\e[0;31m';
GREEN='\e[32m';
reset='\e[0m';
if [[ -n "$password2" ]];then
   password=$(<$password2);
 fi
count="${#password}"
if [[ ${count} -lt 10 ]];then
  echo -e ${RED}"Password length should be 10 characters \n" ${reset}
  exit 1;
  fi
echo $password | grep "[a-z]" | grep "[A-Z]" | grep "[0-9]"
if [[ $? -ne 0 ]];then
echo -e ${RED}"Password must contains lowecase, upparcase and number \n"${reset}
exit 1;
 fi
echo -e ${GREEN}"Strong Password \n"${reset}
exit 0;
