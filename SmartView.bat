@echo off

:: Verifica se o script está sendo executado como administrador
NET SESSION >nul 2>&1
if %errorLevel% == 0 (
    goto :run
) else (
    echo Solicitando privilegios de administrador...
    goto :UACPrompt
)

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B

:run
    :: Seu código original começa aqui
    echo Executando com privilegios de administrador

    echo Parando o servico TReports.Agent...
    net stop "TReports.Agent"

    echo Iniciando o servico TReports.Agent...
    net start "TReports.Agent"

    echo Script concluido.