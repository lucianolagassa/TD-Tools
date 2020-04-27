# TDClient Config Fix - Metodo3

Client Config Fix: Es un programa para corregir la configuración del TDClient en las Netbooks, de esta forma se puede reconfigurar cada terminal con solo ejecutar el ejecutable.

Metodo 3: Script NSIS que Genera un Ejecutable, Es el tercer método en probar se y tiene los mejores resultados, por lo que se recomienda su uso.
 Para que este método funcione se necesita descargar el archivo del siguiente link: https://sourceforge.net/projects/nsis/files/NSIS%203/3.05/nsis-3.05.zip/download, Luego descomprimir y Renombrar la Carpeta a NSIS, esta debe estar junto a los demás archivos de este método.

  1- Editar el archivo "Config.txt", modificando la primera linea del mismo por el IP o Dominio del TDServer, Guardar los Cambios.
 
  2- Ejecutar el archivo "Generar.cmd", este crea un archivo ejecutable de nombre "TDClient-Setup.exe".

  3- Enviar el archivo ejecutable a los usuarios de la Netbooks, estos deben ejecutar el mismo y así se actualiza la configuración del servidor.


Nota: No se utilizaran los nombres de los productos que forman parte del sistema TD, para evitar problemas legales, dado que son propiedad de sus respectivos dueños.

Software: Se utilizan herramientas de terceros:

 -NSIS (Nullsoft Scriptable Install System) -> https://nsis.sourceforge.io/
