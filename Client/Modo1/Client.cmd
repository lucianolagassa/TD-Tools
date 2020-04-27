echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
:: TD Client Config Fix
:: Creado por Luciano Lagassa <info@lucianolagassa.com.ar> en Colaboración con Matias Nuccelli 
::
echo TD Client Config Fix v2020-04-26--1540
echo Creado por Luciano Lagassa en Colaboracion con Matias Nuccelli
:: IP o Dominio del Servidor
set TDServer="172.16.0.2"
::
:: Archivo de Configuración
set TDFile="%PROGRAMFILES%\Intel Learning Series\Theft Deterrent\AgentConfig.ini"
::
taskkill /IM Agent.exe /F
:: Editar el Archivo de Configuración Si Existe
%~dp0\Tools\inifile.exe %TDFile% [ServerInfo] ServerAddress=%TDServer%
%~dp0\Tools\nircmd.exe infobox "Actualizando Parametros, Por consultas Contactar al Administrador" "Info"
::
