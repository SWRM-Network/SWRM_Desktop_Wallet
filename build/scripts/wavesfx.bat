@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  wavesfx startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and WAVESFX_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-splash:./package/wavesfx_splash.png" "-Djdk.tls.client.protocols=TLSv1.2"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\wavesfx-1.15.8.jar;%APP_HOME%\lib\javafx-fxml-16-win.jar;%APP_HOME%\lib\javafx-controls-16-win.jar;%APP_HOME%\lib\javafx-controls-16.jar;%APP_HOME%\lib\javafx-graphics-16-win.jar;%APP_HOME%\lib\javafx-graphics-16.jar;%APP_HOME%\lib\javafx-base-16-win.jar;%APP_HOME%\lib\javafx-base-16.jar;%APP_HOME%\lib\log4j-core-2.15.0.jar;%APP_HOME%\lib\log4j-api-2.15.0.jar;%APP_HOME%\lib\toml-3.6.0.jar;%APP_HOME%\lib\ikonli-javafx-11.3.4.jar;%APP_HOME%\lib\ikonli-materialdesign-pack-11.3.4.jar;%APP_HOME%\lib\javax.servlet-api-4.0.1.jar;%APP_HOME%\lib\rxjavafx-2.2.2.jar;%APP_HOME%\lib\rxjava-2.2.19.jar;%APP_HOME%\lib\WavesJ-16ee2ea0fe.jar;%APP_HOME%\lib\jackson-databind-2.10.0.jar;%APP_HOME%\lib\jackson-core-2.10.0.jar;%APP_HOME%\lib\core-3.6.0.jar;%APP_HOME%\lib\ikonli-core-11.3.4.jar;%APP_HOME%\lib\reactive-streams-1.0.3.jar;%APP_HOME%\lib\curve25519-java-0.5.0.jar;%APP_HOME%\lib\bcprov-jdk15on-1.58.jar;%APP_HOME%\lib\httpclient-4.5.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\httpcore-4.4.1.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-codec-1.9.jar;%APP_HOME%\lib\jackson-annotations-2.10.0.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar


@rem Execute wavesfx
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %WAVESFX_OPTS%  -classpath "%CLASSPATH%" com.wavesfx.wavesfx.Launcher %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable WAVESFX_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%WAVESFX_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
