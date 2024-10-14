@echo off

echo Iniciando o processo de Descarga e Carga de Bancos

echo Executando DescargaBancos.bat...
call "C:\scripts\DescargaBancos.bat"

echo Aguardando 5 segundos antes de iniciar a Carga...
timeout /t 5 /nobreak

echo Executando CargaBancos.bat...
call "C:\scripts\CargaBancos.bat"

echo Processo de Descarga e Carga de Bancos concluído.