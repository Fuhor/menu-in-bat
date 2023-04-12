@echo off
:admin
title menu by: fuhor:!:@
cls



:menu
color a
echo Bem vindo ao menuFuhor.v1, %USERNAME%! 
echo.
echo Dia atual: %date%
echo Hora atual: %time%
echo.
echo ********************************************************
echo *                                                      *
echo *       	      [Menu]                           *
echo *                                                      *	
echo *		(1) Github Fuhor		       *	
echo *		(2) Calculadora			       *
echo *		(3) Limpar Lixeira		       *
echo *		(4) Limpar pastas "temp"               *		
echo *		(5) Sair		               *
echo *                   		                       *
echo *		[Mais opcoes em breve!]                *
echo *                                                      *
echo *                                                      *
echo ********************************************************
echo.

set /p op= Digite sua opcao:  

if %op% equ 1 goto 1
if %op% equ 2 goto 2
if %op% equ 3 goto 3
if %op% equ 4 goto 4
if %op% equ 5 goto 5

:1
start https://github.com/Fuhor
cls
goto menu

:2
start calc
cls
goto menu

:3
rd /s /q C:\$Recycle.bin
cls
color 7
echo Lixeira limpa com sucesso!
echo.
pause
cls
goto menu

:4
cls
echo ***Obs: Antes de continuar,***
echo alertamos que aparecera muitas mensagens na sua tela,
echo e o processo normal de limpagem da pasta "temp",
echo nao se preocupe!
echo.
pause 
del /q %temp%\*.*
rd /s /q %temp%
cls
echo Pasta de arquivos temporarios limpa com sucesso!
echo.
pause
cls
goto menu

:5
set /p choice= Voce realmente deseja sair? (y/n) 

if /i "%choice%"=="y" (
	echo OK! Saindo... bye.
	exit
) else (
cls
echo Continuando o programa!
echo.
timeout 3
cls
goto :menu

)