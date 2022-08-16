@echo off
cls
:menu
cls
  
echo              PROGRAMA
echo  ==================================
echo \ 1. ???                           \ 
echo \ 2. Calculadora                   \
echo \ 3. Propriedades do PC            \
echo \ 4. Mudar Cor                     \
echo \ 5. Abrir Programas               \
echo \ 6. Fechar                        \ 
echo  ==================================
set /p pagina= Escolha um numero: 
if %pagina% equ 1 goto naosei
if %pagina% equ 2 goto calculadora
if %pagina% equ 3 goto pc
if %pagina% equ 4 goto cores
if %pagina% equ 5 goto abrir
if %pagina% equ 6 goto fechar
if %pagina% equ --help goto ajuda
if %pagina% equ --version goto versao
if %pagina% geq 7 goto erro

:naosei
echo  ==================================
echo  /           nao sei              /
echo  ==================================
pause
goto menu


:calculadora
echo         Calculadora
echo ==================================
echo / 1. (+) Somar                   /
echo / 2. (-) Diminuir                /
echo / 3. (*) Multiplicar             /
echo / 4. (/) Dividir                 /
echo / 5. Voltar                      /
echo ==================================


set /p escolha=
if %escolha%==1 goto adicao
if %escolha%==2 goto subtracao
if %escolha%==3 goto multiplicacao
if %escolha%==4 goto divisao
if %escolha% equ

:adicao
echo Digite um n£mero:
set /p x=
echo Digite outro n£mero:
set /p y=
echo ----------------------------
set /a t=%x%+%y%
echo O resultado foi %t%
echo ----------------------------
echo Deseja continuar?(1 = SIM, 2 = NÇO)
set /p a1=
if %a1%==1 goto inicio
if %a1%==2 goto fim
break

:subtracao
echo Digite um n£mero:
set /p x=
echo Digite outro n£mero:
set /p y=
echo ----------------------------
set /a t=%x%-%y%
echo O resultado foi %t%
echo ----------------------------
echo Deseja continuar?(1 = SIM, 2 = NÇO)
set /p a2=
if %a2%==1 goto inicio
if %a2%==2 goto fim
break

:multiplicacao
echo Digite um n£mero:
set /p x=
echo Digite outro n£mero:
set /p y=
echo ----------------------------
set /a t=%x%*%y%
echo O resultado foi %t%
echo ----------------------------
echo Deseja continuar?(1 = SIM, 2 = NÇO)
set /p a3=
if %a3%==1 goto inicio
if %a3%==2 goto fim
break

:divisao
echo Digite um n£mero:
set /p x=
echo Digite outro n£mero:
set /p y=
echo ----------------------------
set /a t=%x%/%y%
echo O resultado foi %t%
echo ----------------------------
echo Deseja continuar?(1 = SIM, 2 = NÇO)
set /p a4=
if %a4%==1 goto inicio
if %a4%==2 goto fim
break

:fim
pause



:pc
cls
echo  ============================================================
echo     Computador: %computername% Usuario: %username%
echo  ============================================================
systeminfo
echo  ============================================================
echo       Gerado em: echo %date% %time%
echo  ============================================================
copy systeminfo > PC.txt
pause
cls
goto menu


:abrir
cls
echo              ABRIR
echo  ==================================
echo \ 1. Google Chrome                 \ 
echo \ 2. Bloco de Notas                \
echo \ 3. AnyDesk                       \
echo \ 4. Word                          \
echo \ 5. Voltar                        \
echo  ==================================
set /p abrir= Escolha o programa para abrir: 
if %abrir% equ 1 goto google
if %abrir% equ 2 goto bloco
if %abrir% equ 3 goto firefox
if %abrir% equ 4 goto word
if %abrir% equ 5 goto menu
if %abrir% geq 6 goto erro

:google
start chrome.exe
pause
cls
goto abrir

:bloco
start notepad.exe
pause
cls
goto abrir

:firefox
start anydesk.exe
pause
cls
goto abrir

:word
start word.exe
pause
cls
goto abrir


:ajuda
cls
echo              AJUDA
echo  ==================================
echo \ 1. Mostrar                       \ 
echo \ 2. Abrir README.md               \
echo \ 3. Voltar                        \
echo  ==================================
set /p pagina= Escolha seu destino: 
if %pagina% equ 1 goto textoajuda
if %pagina% equ 2 goto readme
if %pagina% equ 3 goto menu
 
:textoajuda
echo AAAAAAAAAAAAAAA
echo aaaaaaaaaaaaaaaaaaaaaaaaaaaa
echo aaaaaaaaaaaaaaaaaaaaaaaaaaaa
echo aaaaaaaaaaaaaaaaaaaaaaaaaaaa
echo aaaaaaaaaaaaaaaaaaaaaaaaaaaa
echo aaaaaaaaaaaaaaaaaaaaaaaaaaaa
pause 
cls
goto ajuda

:readme
start README.md
pause
cls
goto ajuda

:versao
echo ------------------------------ 
echo Versao 0.1
echo ------------------------------ 
echo SISTEMAS OPERACIONAIS [SOP_1]
echo PROFESSOR: LEANDERSON ANDRE
echo ALUNO: MATEUS REGINALDO SARMENTO RODRIGUES
echo ------------------------------     
pause
goto menu

:erro
echo -- OCORREU UM ERRO --
pause 
goto menu

:fechar
cls
exit
