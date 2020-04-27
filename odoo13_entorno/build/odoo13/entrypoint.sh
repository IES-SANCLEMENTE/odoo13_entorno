#!/bin/bash

#Arrancamos servicio ssh
service ssh start

#Uso exec para lanzar un proceso independiente de bucle infinito
exec bash -c "while true;do sleep 10;done"

