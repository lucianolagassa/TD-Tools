Tools\7z.exe a data.7z TDClient-Fix.exe Config.txt
copy /b Tools\7zS.sfx + Tools\config.txt + data.7z TDClient-Setup.exe
del data.7z
rem TDClient-Setup.exe