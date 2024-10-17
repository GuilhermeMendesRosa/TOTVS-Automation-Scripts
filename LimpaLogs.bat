@echo off
echo Limpando logs...

REM Apagar arquivos e subpastas da primeira pasta
echo Limpando C:\TOTVS\Datasul\PASOE\GuilhermeMRosa\datasul-GuilhermeMRosa\logs
for /d %%p in ("C:\TOTVS\Datasul\PASOE\GuilhermeMRosa\datasul-GuilhermeMRosa\logs\*") do rmdir /S /Q "%%p"
del /S /Q "C:\TOTVS\Datasul\PASOE\GuilhermeMRosa\datasul-GuilhermeMRosa\logs\*.*" 2>nul
if %errorlevel% neq 0 (
    echo "Erro ao deletar os arquivos da primeira pasta, continuando..."
)

REM Apagar arquivos e subpastas da segunda pasta
echo Limpando C:\TOTVS\Datasul\Tomcat\INSTANCE-8280\apache-tomcat-9.0.75\logs
for /d %%p in ("C:\TOTVS\Datasul\Tomcat\INSTANCE-8280\apache-tomcat-9.0.75\logs\*") do rmdir /S /Q "%%p"
del /S /Q "C:\TOTVS\Datasul\Tomcat\INSTANCE-8280\apache-tomcat-9.0.75\logs\*.*" 2>nul
if %errorlevel% neq 0 (
    echo "Erro ao deletar os arquivos da segunda pasta, continuando..."
)

REM Apagar arquivos e subpastas da terceira pasta
echo Limpando C:\TOTVS\smart-view\logs
for /d %%p in ("C:\TOTVS\smart-view\logs\*") do rmdir /S /Q "%%p"
del /S /Q "C:\TOTVS\smart-view\logs\*.*" 2>nul
if %errorlevel% neq 0 (
    echo "Erro ao deletar os arquivos da terceira pasta, continuando..."
)

echo Limpeza de logs concluída!
