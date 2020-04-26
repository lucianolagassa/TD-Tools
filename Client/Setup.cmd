echo off
:: TD Client Config Fix
:: Creado por Luciano Lagassa <info@lucianolagassa.com.ar> en Colaboración con Matias Nuccelli 
::
echo "TD Client Config Fix v2020-04-26--1540"
echo "Creado por Luciano Lagassa en Colaboración con Matias Nuccelli"
:: IP o Dominio del Servidor
set tdserver="Test3478"
::
:: Archivo de Configuración
set tdfile="%PROGRAMFILES%\Intel Learning Series\Theft Deterrent\AgentConfig.ini"
::
:: Detectar Arquitectura
if "%PROCESSOR_ARCHITECTURE%" == "x86" (
 echo "Windows de 32bits"
 set inifile="tools\inifile32.exe"
 set nircmd="tools\nircmd32.exe"
) else (
 echo "Windows de 64 bits"
 set inifile="tools\inifile64.exe"
 set nircmd="tools\nircmd64.exe"
)
::
:: Buscar y Editar el Archivo de Configuración
IF EXIST "%tdfile%" (
 %inifile% "%tdfile%" [ServerInfo] ServerAddress="%tdserver%"
 %nircmd% infobox "Parametros Actualizados" "Info"
) ELSE (
 %nircmd% infobox "Error, Archivo no disponible, Contactar al Administrador" "Alerta"
 echo "Error, Archivo no disponible, Contactar al Administrador"
)
::
