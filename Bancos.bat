@echo off

echo Iniciando o processo de Descarga e Carga de Bancos

set "current_dir=%~dp0"

echo Executando DescargaBancos.bat...
call "%current_dir%DescargaBancos.bat"

echo Executando CargaBancos.bat...
call "%current_dir%CargaBancos.bat"

echo Processo de Descarga e Carga de Bancos concluído.
