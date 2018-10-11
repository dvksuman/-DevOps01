#!/bin/bash

read -p "Enter one of  vol|cpu|ram|network|all : " item
echo $item

if [ $item == "vol" ]
then 
   df -h
elif [ $item == "cpu" ]
then 
   wmic cpu get NumberOfCores
elif [ $item == "ram" ]
then 
   systeminfo 
elif [ $item == "network" ]
then 
   ipconfig  
   getmac
else 
    df -h
    wmic cpu get NumberOfCores
    systeminfo
    ipconfig
    getmac
fi

