# 🗳️ Instalación
## 🖱️ Uso
**⚠️Este script está diseñado para distribuciones Linux⚠️**
<br><br>
**Desde la terminal ejecuta los siguientes comandos**
* Descarga el script
```
curl https://raw.githubusercontent.com/rxfatalslash/widecommand/main/command.sh -o $HOME/command.sh
```
* Concede permisos de ejecución
```
chmod +x $HOME/command.sh
```
* Ejecuta el script pasándole como argumento el comando que quieres ejecutar, si el comando contiene algún espacio debes escribirlo entre comillas
```
./$HOME/command.sh "comando"
```
## ⌨️ Modificación
**El script comprende un rango de IP desde la 10 hasta la 150, teniendo en cuenta que tu red es 192.168.1.0/24**
<br>
* Si tu red tiene una máscara distinta modifica la variable _devices_
* Si quieres modificar el rango de IP modifica el rango del bucle for para la variable _octeto_