@echo off
echo Bom dia, Guilherme!
echo Iniciando a execução dos scripts...

:: Executa LimpaLogs.bat
echo Executando LimpaLogs.bat...
call "C:\Users\guilherme.rosa\scripts\LimpaLogs.bat"

:: Executa Bancos.bat
echo Executando Bancos.bat...
call "C:\Users\guilherme.rosa\scripts\Bancos.bat"

:: Executa Progress.bat
echo Executando Progress.bat...
call "C:\Users\guilherme.rosa\scripts\Progress.bat"

:: Executa Compila.bat
echo Executando Compila.bat...
call "C:\Users\guilherme.rosa\scripts\Compila.bat"

:: Executa Popula.bat com parâmetro "local"
echo Executando Popula.bat com o parâmetro "local"...
call "C:\Users\guilherme.rosa\scripts\Popula.bat" local

:: Executa LocalTomcat.bat
echo Executando LocalTomcat.bat...
call "C:\Users\guilherme.rosa\scripts\LocalTomcat.bat"

:: Executa LocalTomcat.bat
echo Executando LocalTomcat.bat...
call "C:\Users\guilherme.rosa\scripts\SmartView.bat"

echo Todos os scripts foram executados!