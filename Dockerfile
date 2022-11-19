FROM ubuntu
MAINTAINER twinkle <qtsgenon@tip.edu.ph>

# skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# update packages
RUN apt-get update; apt dist-upgrade -y

# install webserver
RUN apt-get install -y apache2

# install dbserver
RUN apt-get install -y mariadb-server

# set entrypoint 
ENTRYPOINT apache2ctl -D FOREGROUND





