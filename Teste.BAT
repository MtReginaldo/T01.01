@echo off
cls
:menu
cls
      
echo              PROGRAMA
echo  ==================================
echo \ 1. ???                           \ 
echo \ 2. ???                           \
echo \ 3. Propriedades do PC            \
echo \ 4. Mudar Cor                     \
echo \ 5. Abrir Programas               \
echo \ 6. Fechar                        \ 
echo  ==================================

set /p pagina= Escolha seu destino: 
if %pagina% equ 3 goto pc
if %pagina% equ 6 goto fechar
if %pagina% equ --help goto ajuda
if %pagina% equ --version goto versao

:pc
echo %computername%
systeminfo
pause

:ajuda
echo  ==================================
echo \ 1. Mostrar                       \ 
echo \ 2. Abrir README.md               \
echo \ 3. Voltar                        \
echo  ==================================
set /p pagina= Escolha seu destino: 
if %pagina% equ 1 goto textoajuda
if %pagina% equ 2 start README.md
if %pagina% equ 3 goto menu
 
:versao
echo ------------------------------ 
echo Versao 1.0
echo ------------------------------ 
echo SISTEMAS OPERACIONAIS [SOP_1]
echo MATEUS REGINALDO SARMENTO RODRIGUES
echo ------------------------------     
pause
goto menu

:fechar
cls
exit
