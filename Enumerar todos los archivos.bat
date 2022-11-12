@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
set n=0

for %%i in (*) do (

if not "%%~nxi" == "Enumerar todos los archivos.bat" (
	set /a n+=1
		if not "%%~nxi" == !n! (
			ren "%%~nxi" !n!.nsp
			)
	)
)
echo %n%
pause