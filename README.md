# [Título de la práctica]

## Objetivo

[Objetivos de la práctica y aspectos a trabajar]

## Pasos previos a realizar

La primera vez que realicéis una práctica será necesario configurar el entorno del sistema en el que se ejecutará. Una vez hecho se usará para todas las demás. Para desplegar el sistema para las prácticas seguid las instrucciones en:

[REQUISITOS](REQUISITOS.md)

### Archivo de variables alumno.yaml

Dentro del directorio **tests/vars** hay un archivo **alumno.yaml**, el cual contiene una lista de variables que deberéis especificar para cada práctica. El tipo y número dependerá de la misma, pero como mínimo deberéis indicar vuestro **nombre** y **el token de acceso** a gitlab de vuestro usuario.

`#Variables que debe especificar el alumno`

`nombre_alumno: Javier Fernández Peón`

`gitlab_token: 9HMCTHQDCJAfeqsPjtzY`

*NOTAD que al ser formato YAML la sintaxis es del tipo clave: valor*

## Enunciado

[Aquí irá el enunciado de la práctica o un enlace a un documento descriptivo de la misma]

## Escenario

El escenario es el conjunto de elementos necesarios para la realización de la práctica. Consistirá en un conjunto de contenedores docker, uno o más, con funciones bien establecidas y descritas en la práctica. Tendrás que realizar los pasos indicados en la práctica en ellos, es decir serán la base de trabajo.

### Creación del escenario de la práctica

Para crear el escenario de la práctica entramos en el directorio con el nombre de la práctica (practica_xxx...) y dentro del mismo ejecutamos desde la terminal el comando:

`docker-compose up -d`

El comando anterior creará todos los container docker y los elementos necesarios para la práctica

### Detener y arrancar el escenario

Después de una sesión de trabajo con el escenario debemos de detener el mismo para poder retomarlo más adelante. Para ello ejecutamos desde el mismo directorio del apartado anterior

`docker-compose stop`

Más adelante cuando retomemos el trabajo levantamos de nuevo el escenario ejecutando desde el mismo directorio:

`docker-compose start`

### Eliminar el escenario

Al terminar la práctica y entregar los resultados podéis eliminar el escenario, aunque es recomendable dejarlo durante un tiempo por si necesitáis repasar. Para eliminar los container del escenario y todos los elementos ejecutamos desde el mismo directorio:

`docker-compose down`

O si queremos eliminar también las imágenes docker

`docker-compose down --rmi`

## Realización de la práctica

Una vez creado el escenario de la práctica es el momento de tomar el enunciado y realizar las tareas que se indican en el mismo. El escenario anterior habrá creado uno o varios docker containers y todos los artefactos necesarios.

En el enunciado de la práctica se te indicará qué hacer en cada container. Es importante que sepas acceder a un docker container, lo cual es muy fácil. Supongamos que quieres iniciar una sesión de terminal en un container de nombre practica_comandos_1. Para ello ejecutamos

`docker exec -it practica_comandos_1 bash`

Para ver los docker container en ejecución del escenario ejecutamos:

`docker ps`

## Realización de los test

Los tests son un conjunto de pruebas que se lanzarán de forma automática en el escenario y que comprobarán si has realizado correctamente los pasos y ejercicios indicados en la práctica.

### Ejecución de los tests

Para ejecutar los test nos situamos dentro del directorio test y lanzamos desde la terminal el comando:

`ansible-playbook test.yaml`

Veremos en la salida del comando los mensajes de error si alguno de los test falla.

Si todo los tests se pasan con éxito al final del comando veremos un mensaje del tipo

**"ENHORABUENA!. Has superado todos los test"**

En caso contrario, si alguno falla el mensaje será:

**"LO SIENTO!. No has superado todos los test"**

por tanto deberás de revisar cual ha fallado y realizar las correcciones oportunas

### Archivos de log

Puedes ver también el resultado de la ejecución de los test, además de en la salida de la terminal, en los archivos

**log/test.log**: Toda la salida

**log/report.log**: Salida resumida

## Entrega

Una vez que finalices correctamente la práctica, es decir con todos los test superados, para realizar la entrega de los resultados de ejecución de la misma deberás ejecutar el comando:

`ansible-playbook test.yaml -e entregar=yes`

Si hay algún error en los tests lo verás como se explica en el apartado anterior, **en cuyo caso la entrega no se realizará**

### Entrega forzada

Si quieres realizar la entrega **aún cuando algún test haya fallado** ejecuta el comando:

`ansible-playbook test.yaml -e entregar=yes -e force=yes`

## Referencias

### git

[introduccion a git](https://aulasoftwarelibre.github.io/taller-de-git/introduccion/)

### docker

[breve introduccion a docker](https://guiadev.com/introduccion-a-docker/)

### docker-compose

[docker compose de un vistazo](https://docs.docker.com/compose/)
