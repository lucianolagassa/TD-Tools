# TDClient Config Fix - Metodo2

**Client Config Fix**: Es un programa para corregir la configuración del **TDClient** en las Netbooks, de esta forma se puede reconfigurar cada terminal con solo iniciar el ejecutable.

**Metodo2:** Aplicación VB Net comprimida con 7Zip y Convertido a Ejecutable, Este método fue el segundo en probarse y no tiene buenos resultados, por lo que se descarta su uso.
 Para que este método funcione se necesitan las siguientes herramientas: [7Zip](https://www.7-zip.org/a/7z1900.exe), [7Zip-Extras](https://www.7-zip.org/a/7z1900-extra.7z), estos debe estar en la Carpeta Tools junto a los demás archivos de este método.

  1- Editar el archivo **Config.txt**, modificando la segunda linea del mismo por el IP o Dominio del **TDServer**, Guardar los Cambios.
 
  2- Ejecutar el archivo **Generar.cmd**, este crea un archivo ejecutable de nombre **TDClient-Setup.exe**.

  3- Enviar el archivo ejecutable a los usuarios de la Netbooks, estos deben ejecutar el mismo y así se actualiza la configuración del servidor.


Nota: No se utilizaran los nombres de los productos que forman parte del sistema TD, para evitar problemas legales, dado que son propiedad de sus respectivos dueños.

Software: Se utilizan herramientas de terceros:

 -7Zip (Igor Pavlov) -> https://www.7-zip.org/
