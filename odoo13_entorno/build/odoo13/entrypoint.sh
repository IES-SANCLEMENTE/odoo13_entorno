#!/bin/bash

#Sale si un comando termina con un valor de retorno diferente a 0
set -e

#Arrancamos servicio ssh
service ssh start

#Uso exec para lanzar un proceso independiente de bucle infinito
exec bash -c "while true;do sleep 10;done"

