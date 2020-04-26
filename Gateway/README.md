# TDServer Gateway

Gateway: Es un equipo corriendo linux, que permite hacer de gateway, locación del TDServer para asi hacer lo accesible desde Internet.

Pasos:

 1- Instalar Linux, Se recomienda utilizar Ubuntu Server o Debian, de ser posible sin entorno grafico, de esta forma se pueden aprovechar equipos en desuso.

 2- Instalar el paquete "tdroutes_0.20.04.26--1646_all.deb", con el siguiente comando: dpkg -i tdroutes_0.20.04.26--1646_all.deb

 3- El paquete DEB, configura reglas para hacer de Gateway, por lo que si el servidor TDServer tiene un ip diferente al 172.16.0.2, se debe editar el archivo "/etc/init.d/tdroutes" con el siguiente comando: nanao /etc/init.d/tdroutes.


Nota: No se utilizaran los nombres de los productos que forman parte del sistema TD, para evitar problemas legales, dado que son propiedad de sus respectivos dueños.
