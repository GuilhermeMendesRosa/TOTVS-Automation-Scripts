@echo off
setlocal

REM Verifica se o parâmetro foi passado
if "%~1"=="" (
    echo Uso: %0 [local|rede]
    exit /b 1
)

set "source_webapps=C:\totvs\Compilados\compiladosTomCat-cl"
set "source_libs=C:\totvs\Compilados\dts-libs\datasul"

REM Define os destinos com base no parâmetro
if /I "%~1"=="local" (
    set "dest_webapps=C:\totvs\Datasul\Tomcat\INSTANCE-8280\apache-tomcat-9.0.75\webapps"
    set "dest_libs=C:\totvs\Datasul\Tomcat\INSTANCE-8280\apache-tomcat-9.0.75\lib\datasul"
) else if /I "%~1"=="rede" (
    set "dest_webapps=C:\totvs\TomcatCL\apache-tomcat-9.0.67-CL-8280\webapps"
    set "dest_libs=C:\totvs\TomcatCL\apache-tomcat-9.0.67-CL-8280\lib\datasul"
) else (
    echo Parâmetro inválido. Use "local" ou "rede".
    exit /b 1
)

REM Copia os arquivos do webapps
xcopy "%source_webapps%\*" "%dest_webapps%\" /S /Y /I
if errorlevel 1 (
    echo Erro ao copiar arquivos para %dest_webapps%.
    exit /b 1
)

REM Copia os arquivos das libs
xcopy "%source_libs%\*" "%dest_libs%\" /S /Y /I
if errorlevel 1 (
    echo Erro ao copiar arquivos para %dest_libs%.
    exit /b 1
)

echo Copia concluída com sucesso.
endlocal
