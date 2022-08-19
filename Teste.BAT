@echo off
cls

:menu
cls  
echo              PROGRAMA
echo  ==================================
echo \ 1. Calculadora                   \
echo \ 2. Propriedades do PC            \
echo \ 3. Abrir Programas               \
echo \ 4. Opcoes                        \ 
echo \ 5. Fechar                        \ 
echo  ==================================
set /p pagina= Escolha um numero: 
if %pagina% equ 1 goto calculadora
if %pagina% equ 2 goto pc
if %pagina% equ 3 goto abrir
if %pagina% equ 4 goto opcoes
if %pagina% equ 5 goto fechar
if %pagina% geq 6 goto erro

:calculadora
cls
echo         Calculadora
echo ==================================
echo / +. Somar                       /
echo / -. Diminuir                    /
echo / *. Multiplicar                 /
echo / /. Dividir                     /
echo / 1. Voltar                      /
echo ==================================
set /p escolha= Selecione a operacao:
if %escolha% equ + goto adicao
if %escolha% equ - goto subtracao
if %escolha% equ * goto multiplicacao
if %escolha% equ / goto divisao
if %escolha% equ 1 goto menu
if %escolha% geq 2 goto erro

:adicao
echo Digite o primeiro numero:
set /p x=
echo Digite o segundo numero:
set /p y=
echo ----------------------------
set /a t=%x%+%y%
echo %x%+%y%=%t%
echo ----------------------------
echo 1 = SIM, 2 = NAO
set /p opcao= Deseja continuar?
if %opcao% equ 1 goto calculadora
if %opcao% equ 2 goto menu

:subtracao
echo Digite um n£mero:
set /p x=
echo Digite outro n£mero:
set /p y=
echo ----------------------------
set /a t=%x%-%y%
echo %x%-%y%=%t%
echo ----------------------------
echo 1 = SIM, 2 = NAO
set /p opcao= Deseja continuar?
if %opcao% equ 1 goto calculadora
if %opcao% equ2 goto menu

:multiplicacao
echo Digite um n£mero:
set /p x=
echo Digite outro n£mero:
set /p y=
echo ----------------------------
set /a t=%x%*%y%
echo %x%*%y%=%t%
echo ----------------------------
echo 1 = SIM, 2 = NAO
set /p opcao= Deseja continuar?
if %opcao% euq 1 goto calculadora
if %opcao% equ 2 goto menu

:divisao
echo Digite um n£mero:
set /p x=
echo Digite outro n£mero:
set /p y=
echo ----------------------------
set /a t=%x%/%y%
echo %x%/%y%=%t%
echo ----------------------------
echo 1 = SIM, 2 = NAO
set /p opcao= Deseja continuar?
if %opcao% equ 1 goto calculadora
if %opcao% equ 2 goto menu

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
echo \ 1. Bloco de Notas                \ 
echo \ 2. Excel                         \
echo \ 3. PowerPoint                    \
echo \ 4. Word                          \
echo \ 5. Voltar                        \
echo  ==================================
set /p abrir= Escolha o programa para abrir: 
if %abrir% equ 1 goto bloco
if %abrir% equ 2 goto excel
if %abrir% equ 3 goto powerpoint
if %abrir% equ 4 goto word
if %abrir% equ 5 goto menu
if %abrir% geq 6 goto erro


:bloco
start notepad.exe
cls
exit

:excel
start excel.exe
exit

:powerpoint
start powerpnt.exe
cls
exit

:word
start winword.exe
cls
exit


:opcoes
cls
echo               OPCOES
echo  ==================================
echo  \ 1. Ajuda                       \ 
echo  \ 2. Abrir README.md             \
echo  \ 3. Versão                      \ 
echo  \ 4. Desligar Computador         \
echo  \ 5. Voltar                      \
echo  ==================================
set /p pagina= Escolha um numero: 
if %pagina% equ 1 goto textoajuda
if %pagina% equ 2 goto readme
if %pagina% equ 3 goto versao
if %pagina% equ 4 goto desligarpc
if %pagina% equ 5 goto menu
if %abrir% geq 6 goto erro

:textoajuda
echo O que é o CMD do Windows?
echo . 
echo O Prompt de Comando, mais conhecido como CMD, e um aplicativo de 
echo linha de comado disponivel na maioria dos sistemas operacionais Windows, 
echo e e usado para executar os comandos inseridos. Esses comandos tem
echo como função automatizar tarefas por meio de scripts e arquivos em lotes, 
echo executando desde funcoes administrativas avançadas ate a solução de 
echo certos tipo de problemas do sistema operacional. O CMD tambem e conhecido 
echo como shell de comando, ou Prompt de Comando ou ainda CMD.exe.
echo LEIA MAIS EM: <https://barsottisolucoes.com.br/o-que-e-o-cmd-do-windows/>
echo .
echo .
echo SE DESEJAR EXPLICACAO SOBRE O PROGRAMA, ABRA O README.MD
echo ==================================
echo \ 1. Abrir README.md             \ 
echo \ 2. Voltar                      \
echo ==================================
set /p pagina= Escolha um numero: 
if %pagina% equ 1 goto readme
if %pagina% equ 2 goto opcoes
pause

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
exit

:desligarpc
shutdown -s -t
exit

:erro
echo -- OCORREU UM ERRO --
pause 
goto menu

:fechar
cls
exit
