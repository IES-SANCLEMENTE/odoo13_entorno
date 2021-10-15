FROM debian:buster

MAINTAINER javierfp <javierfp@iessanclemente.net>

ENV TERM xterm
ENV PASS=abc123.
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

LABEL distribucion="Debian 10"
LABEL descripcion="Imagen Odoo para prácticas"
LABEL acceso="usuario: root, password: abc123."

#Copiamos el entrypoint.sh al container
COPY entrypoint.sh /usr/bin/entrypoint.sh

#Damos permiso al entrypoint
RUN chmod +x /usr/bin/entrypoint.sh

#Establecemos la password de root
RUN echo "root:$PASS" | chpasswd

#Instalamos paquetes de utilidades
RUN apt update && apt install -y vim git curl iputils-ping net-tools nano wget openssh-server 

#Configuramos openssh-server para poder acceder con root
RUN echo "PermitRootLogin yes\nPasswordAuthentication yes" >> /etc/ssh/sshd_config

#Limpiando
RUN apt clean

#Comando para arrancar ssh y entrar en bucle de espera
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
