@echo off
set contrasena=12345
set intentos=3

:inicio
set /p v11=Cual es la contrasena maestra? 
echo Validando contrasena...
if "%contrasena%"=="%v11%" (
    goto correcta
) else (
    goto incorrecta
)

:correcta
echo.
echo Felicidades, has ingresado.
goto fin

:incorrecta
set /a intentos=%intentos%-1
echo.
echo Intento fallido.
echo Intentos restantes: %intentos%
if %intentos% equ 0 (
    goto fin
) else (
    pause
    cls
    goto inicio
)

:fin
pause
