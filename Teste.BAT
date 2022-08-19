@echo off
cls

:menu
cls  
echo              PROGRAMA
echo  ==================================
echo \ 1. Calculadora                   \
echo \ 2. Propriedades do PC            \
echo \ 3. Mudar Cor                     \
echo \ 4. Abrir Programas               \
echo \ 5. Opcoes                        \ 
echo \ 6. Fechar                        \ 
echo  ==================================
set /p pagina= Escolha um numero: 
if %pagina% equ 1 goto calculadora
if %pagina% equ 2 goto pc
if %pagina% equ 3 goto cores
if %pagina% equ 4 goto abrir
if %pagina% equ 5 goto opcoes
if %pagina% equ 6 goto fechar
if %pagina% geq 7 goto erro

:calculadora
cls
echo         Calculadora
echo ==================================
echo / 1. (+) Somar                   /
echo / 2. (-) Diminuir                /
echo / 3. (*) Multiplicar             /
echo / 4. (/) Dividir                 /
echo / 5. Voltar                      /
echo ==================================
set /p escolha= Selecione a operação:
if %escolha% equ 1 goto adicao
if %escolha% equ 2 goto subtracao
if %escolha% equ 3 goto multiplicacao
if %escolha% equ 4 goto divisao
if %escolha% equ 5 goto menu
if %escolha% geq 6 goto erro

:adicao
echo Digite o primeiro numero:
set /p x=
echo Digite o segundo numero:
set /p y=
echo ----------------------------
set /a t=%x%+%y%
echo %x%+%y%=%t%
echo ----------------------------
echo Deseja continuar?(1 = SIM, 2 = NAO)
set /p a1=
if %a1%==1 goto calculadora
if %a1%==2 goto fechar
pause

:subtracao
echo Digite um n£mero:
set /p x=
echo Digite outro n£mero:
set /p y=
echo ----------------------------
set /a t=%x%-%y%
echo O resultado foi %t%
echo ----------------------------
echo Deseja continuar?(1 = SIM, 2 = NAO)
set /p a2=
if %a2%==1 goto calculadora
if %a2%==2 goto fechar
pause

:multiplicacao
echo Digite um n£mero:
set /p x=
echo Digite outro n£mero:
set /p y=
echo ----------------------------
set /a t=%x%*%y%
echo O resultado foi %t%
echo ----------------------------
echo Deseja continuar?(1 = SIM, 2 = NAO)
set /p a3=
if %a3%==1 goto calculadora
if %a3%==2 goto fechar
pause

:divisao
echo Digite um n£mero:
set /p x=
echo Digite outro n£mero:
set /p y=
echo ----------------------------
set /a t=%x%/%y%
echo O resultado foi %t%
echo ----------------------------
echo Deseja continuar?(1 = SIM, 2 = NAO)
set /p a4=
if %a4%==1 goto calculadora
if %a4%==2 goto fechar
pause

:pc
cls
echo  ============================================================
echo     Computador: %computername% Usuario: %username%
echo  ============================================================
systeminfo
echo  ============================================================
echo       Gerado em: %date% %time%
echo  ============================================================
echo  .
echo  .
echo  ============================================================
echo  \ 1. Gerar novamente                                       \
echo  \ 2. Exportar para .txt                                    \
echo  \ 3. Voltar                                                \
echo  ============================================================
set /p abrir= Escolha o programa para abrir: 
if %abrir% equ 1 goto pc
if %abrir% equ 2 goto gerarpc
if %abrir% equ 3 goto menu
if %abrir% geq 4 goto erro

:gerarpc
systeminfo > Meu_Computador.txt
echo Processo finalizado com sucesso!
echo voltando ao menu princpal.
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

:opcoes
cls
echo               OPCOES
echo  ==================================
echo  \ 1. Ajuda
echo  \ 2. Abrir README.md
echo  \ 3. Versão
echo  \ 4. Desligar Computador
echo  \ 5. Voltar
echo  ==================================
set /p pagina= Escolha um numero: 
if %pagina% equ 1 goto textoajuda
if %pagina% equ 2 goto readme
if %pagina% equ 3 goto versao
if %pagina% equ 4 goto desligarpc
if %pagina% equ 5 goto menu
if %abrir% geq 6 goto erro

:textoajuda
echo AAAAAAAAAAAAAAA
echo aaaaaaaaaaaaaaaaaaaaaaaaaaaa
echo aaaaaaaaaaaaaaaaaaaaaaaaaaaa
echo aaaaaaaaaaaaaaaaaaaaaaaaaaaa
echo aaaaaaaaaaaaaaaaaaaaaaaaaaaa
echo aaaaaaaaaaaaaaaaaaaaaaaaaaaa
pause 
exit

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
exit
goto menu

:erro
echo -- OCORREU UM ERRO --
pause 
goto menu

:fechar
cls
exit
