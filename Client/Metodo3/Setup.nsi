!define PRODUCT_NAME "TDClient-Fix"
!define PRODUCT_VERSION "0.2020-04-27--1218"
!define PRODUCT_PUBLISHER "LAGA Systems"
!define PRODUCT_WEB_SITE "http://www.lagasystems.com.ar"

!include "MUI.nsh"
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"

Name "${PRODUCT_NAME}"
OutFile "TDClient-Setup.exe"
InstallDir "$TEMP\TDClient"
ShowInstDetails hide
AutoCloseWindow true

Section "Principal" SEC01
  HideWindow
  SetOutPath "$INSTDIR"
  SetOverwrite on
  IfFileExists "$INSTDIR\Config.txt" FileOK
        ; Editar para Cambiar IP o Dirección del TDServer
        StrCpy $1 "tdserver.donweb-remoteip.net"
    FileOK:
        ; Carga el Archivo Config.txt que Contiene la IP o Dirección del TDServer
        File "Config.txt"
        FileOpen $4 "$INSTDIR\Config.txt" r
        FileRead $4 $1
        FileClose $4
		Delete "$INSTDIR\Config.txt"
		RMDir "$INSTDIR"
  ;
  ; Editar para Cambiar Ubicación del Archivo de Configuración del TDClient
  StrCpy $0 "C:\Program Files (x86)\Intel Learning Series\Theft Deterrent\AgentConfig.ini"
  ;
  IfFileExists $0 PathGood
        MessageBox MB_ICONEXCLAMATION|MB_OK "Error, Archivo de Configuracion No Disponible, Contactar al Administrador"
        Quit
    PathGood:
        WriteINIStr $0 "ServerInfo" "ServerAddress" "$\"$1$\""
	    MessageBox MB_OK "Exito, Archivo de Configuracion Actualizado, Proceso Completado"
        Quit
SectionEnd