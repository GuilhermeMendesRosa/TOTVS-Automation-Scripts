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
    echo Executando com privilegios de administrador

    rem Configuração do ambiente
    SET JAVA_HOME=C:\Java\ojdk_11.0.15_10_x64
    SET CATALINA_HOME=C:\totvs\TomcatCL\apache-tomcat-9.0.67-CL-8280

    rem Mudar para o drive C:
    C:

    rem Mudar para o diretório bin do Tomcat
    cd %CATALINA_HOME%\bin

    echo Instalando o serviço Tomcat (se ainda não estiver instalado)...
    call service install TOTVS12-8280

    echo Encontrando e matando o processo que usa a porta 8280...
    for /F "tokens=5" %%a in ('netstat -ano ^| findstr :8280') do (
        echo Processo encontrado. PID: %%a
        taskkill /PID %%a /F
        if errorlevel 1 (
            echo Falha ao matar o processo.
        ) else (
            echo Processo terminado com sucesso.
        )
    )

    echo Iniciando o servidor Tomcat...
    call startup.bat

    echo Script concluido.