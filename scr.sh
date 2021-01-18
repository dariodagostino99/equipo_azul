#!/bin/bash

value=0
show_menu(){
 echo "Ingrese una opcion"
 echo "1) Ver precio del Bitcoin"
 echo "2) Ver precio del Dolar"
 read value
}

menu(){
 show_menu
 while [ $value -ne 1 ] && [ $value -ne 2 ]
 do 
   echo "Esa opcion es incorrecta: $value "
   show_menu
 done

 coin=""

 if [ $value -eq 1 ]
 then
    coin='Bitcoin'
 elif [ $value -eq 2 ]
 then
    coin='Dolar'
 fi

  price=`cat precios.csv | grep $coin | awk -F, '{print $2}'`
  echo $price
  
}

menu
