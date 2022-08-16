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

set /p pagina= Escolha seu destino: 
if %pagina% equ 3 goto pc
if %pagina% equ 5 goto abrir
if %pagina% equ 6 goto fechar
if %pagina% equ --help goto ajuda
if %pagina% equ --version goto versao
if %pagina% geq 7 goto erro

:pc
cls
echo Computador: %computername% Usuario: %username%
systeminfo
echo Gerado em: 
date /t
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
echo \ 3. ???                           \
echo \ 4. ???                           \
echo \ 5. Voltar                        \
echo  ==================================
set /p abrir= Escolha o programa para abrir: 
if %abrir% equ 1 goto google
if %abrir% equ 2 goto bloco
if %abrir% equ 3 goto firefox
if %abrir% equ 4 goto word
if %abrir% equ 5 goto menu

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
