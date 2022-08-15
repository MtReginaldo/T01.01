@echo off
cls
:menu
cls
      
echo              PROGRAMA
echo  ==================================
echo \ 1. ???                           \ 
echo \ 2. ???                           \
echo \ 3. Mudar Cor                     \
echo \ 4. Abrir Programas               \
echo \ 5. Fechar                        \ 
echo  ==================================

set /p pagina= Escolha seu destino: 

if %pagina% equ 2 goto ajuda
if %pagina% equ --version goto versao
if %pagina% equ 5 goto fechar
 

:ajuda
echo  ==================================
echo \ 1. Mostrar                       \ 
echo \ 2. Abrir README.md               \
echo \ 3. Voltar                        \
echo  ==================================
pause
goto menu


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