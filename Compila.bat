@echo off

echo Iniciando o processo de build para FWK e CentralLibs

echo Entrando na pasta FWK...
cd /d C:\totvs\AzureRepos\FWK

echo Executando maven build para FWK...
call mvn -f pom-cl.xml clean install -U -DskipTests=true

if %ERRORLEVEL% neq 0 (
    echo Erro ao executar o build do FWK.
    pause
    exit /b %ERRORLEVEL%
)

echo Build do FWK concluído com sucesso.

echo Entrando na pasta centrallibs-otimization...
cd centrallibs-otimization

echo Executando maven build para CentralLibs...
call mvn clean install

if %ERRORLEVEL% neq 0 (
    echo Erro ao executar o build do CentralLibs.
    pause
    exit /b %ERRORLEVEL%
)

echo Build do CentralLibs concluído com sucesso.

echo Processo de build completo.
pause