#!/bin/bash
   echo "Enter the package you want to remove:"
   read h
   rpm -qa | grep $h
   if [ $? != 1 ]
   then
   sleep 2
   sudo dnf remove $h
   sleep 2
   rpm -qa | grep $h
   if [ $? != 0 ]
   then
   echo "The $h package is not installed"
   else
   echo "The $h package is installed"
   fi
   fi
         
