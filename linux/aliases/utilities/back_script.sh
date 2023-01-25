#!/bin/bash

returning_back_times=$1

re='^[0-9]+$'
if ! [[ $returning_back_times =~ $re ]] ; then
   echo "Error: only numbers allowed as input parameter" >&2; exit 1
else
   command_string=''

   for i in $(seq 1 $returning_back_times)
   do
     command_string+='../'
   done
   cd "${command_string}"
fi
