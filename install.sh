#!/bin/bash

echo "Recuerda tener en segundo plano una VPN por seguridad"

echo "1.-Linux"
echo "2.-Termux"
echo ""
read -p "Por favor ingresa una opcion: " opcion

if [[ $opcion -eq 1 ]]; then
  if [[ $EUID -ne 0 ]]; then
     echo "Este script debe ser ejecutado como root"
     exit 1
  fi

  clear
  echo ""
  echo "Herramienta creada por: DarknetGhost"
  echo ""
  echo "Estamos haciendo todo por ti..."
  sudo apt-get update -y > /dev/null 2>&1 && sudo apt-get upgrade -y > /dev/null 2>&1
  sudo apt-get install python3 > /dev/null 2>&1
  pip3 install -r requirements.txt > /dev/null 2>&1

  clear

  echo "Hemos terminado! Muchas gracias por la espera..."
  echo "Recuerda poner direccion IP y no URL.."
  sleep 2
  clear

  sudo python3 attack.py

elif [[ $opcion -eq 2 ]]; then
  clear
  echo""
  echo "Herramienta creada por DarknetGhost"
  echo ""
  echo "Estamos haciendo todo por ti..."
  pkg update -y /dev/null 2>&1 && pkg upgrade -y > /dev/null 2>&1
  pkg install python3 > /dev/null 2>&1
  pip3 install -r requirements.txt > /dev/null 2>&1

  clear

  echo "Hemos terminado!, Muchas gracias por la espera..."
  echo "Recuerda poner direccion IP y no URL.."
  sleep 3
  python3 attack.py

else
  echo ""
  echo "Por favor ingresa una opcion valida"
  sleep 2

clear


sleep 5

fi
