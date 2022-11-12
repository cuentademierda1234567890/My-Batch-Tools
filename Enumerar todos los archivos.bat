@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
set n=0

for %%i in (*) do (

	if not "%%~nxi" == "cambiar nombre.bat" (
		set /a n+=1
			if not "%%~nxi" == !n! (
				ren "%%~nxi" !n!.nsp
				)
	)
)
echo Archivos en total en esta carpeta: %n%
pause