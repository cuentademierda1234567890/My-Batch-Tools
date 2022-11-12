@echo off
for %%F in ("%CD%") do set "folder=%%~nxF"
if exist "%~dp0%folder% Copia" echo Ya existe una carpeta copia de estos archivos
if not exist "%~dp0%folder% Copia" (
md "%folder% Copia"
rem Loop para copiar todos los archivos
for %%i in (*) do (
	echo > "%%~dpi%folder% Copia\%%~nxi"
	)
echo La copia y sus archivos ya fueron creados
)
pause