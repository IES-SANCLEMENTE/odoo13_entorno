FROM debian:buster

MAINTAINER javierfp <javierfp@iessanclemente.net>

ENV TERM xterm
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

LABEL distribucion="Debian10"
LABEL descripcion="Imagen base para prácticas"
LABEL paquetes="vi, curl, ping, nano, wget, openssh-server"
LABEL acceso="usuario: root, password: abc123."

#Instalamos paquetes necesarios
RUN set -x; \
	apt update && apt install -y vi curl iputils-ping nano wget openssh-server

#Configuramos openssh-server para poder acceder con root
RUN set -x; \
	echo "PermitRootLogin yes\nPasswordAuthentication yes" >> /etc/ssh/sshd_config

#Establecemos la password de root abc123.
RUN set -x; \
	echo "root:abc123." | chpasswd

#Comando para arrancar ssh y entrar en bucle de espera
ENTRYPOINT ["bash","-c","service ssh start && while true;do sleep 10;done"]
