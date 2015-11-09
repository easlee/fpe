@echo off

set domain=http://7xlxpn.dl1.z0.glb.clouddn.com

set start_menu_dir="%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\local\"
IF NOT EXIST %start_menu_dir% MD %start_menu_dir%

:menu
cls
echo -----------------------------------------
echo ----        Fangs Portable Env       ----
echo -----------------------------------------
echo vi. Install Vim
echo ms. Install msys
echo tc. Install Totalcmd
echo st. Install SourceTree
echo ss. Install Shadowsocks
echo nc. Install Navicat
echo pg. Install PngGauntlet
echo tp. Install TexturePacker
echo xsf. Install XShell XFtp
echo is. Install ILSpy
echo 3c. Install 360Chrome
echo .........................................
echo jdk. Install Java SDK
echo qt. Install Qt
echo -----------------------------------------
set idx="0"
set /p idx=Enter the index:
if "%idx%"=="vi" goto Vim
if "%idx%"=="ms" goto msys
if "%idx%"=="tc" goto Totalcmd
if "%idx%"=="st" goto SourceTree
if "%idx%"=="ss" goto Shadowsocks
if "%idx%"=="is" goto ILSpy
if "%idx%"=="nc" goto Navicat
if "%idx%"=="pg" goto PngGauntlet
if "%idx%"=="tp" goto TexturePacker
if "%idx%"=="xsf" goto XshellXftp
if "%idx%"=="3c" goto 360Chrome
if "%idx%"=="jdk" goto JavaSDK
if "%idx%"=="qt" goto Qt
goto menu

:Vim
set app=Vim
set exe=Vim\vim74\gvim.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:msys
set app=msys
set exe=msys\msys.bat
set icon=msys\msys.ico
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:Totalcmd
set app=totalcmd
set exe=totalcmd\TOTALCMD64.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:SourceTree
set app=SourceTree
set exe=SourceTree\SourceTree.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:Shadowsocks
set app=Shadowsocks
set exe=Shadowsocks\Shadowsocks.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:ILSpy
set app=ILSpy
set exe=ILSpy\ILSpy.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:Navicat
set app=Navicat
set exe=Navicat\navicat.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:PngGauntlet
set app=PngGauntlet
set exe=PngGauntlet\PngGauntlet.exe
set icon=PngGauntlet\PngGauntlet.ico
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:TexturePacker
set app=TexturePacker
set exe=TexturePacker\bin\TexturePackerGUI.exe
set icon=TexturePacker\resources\icons\Icon.ico
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:XshellXftp
set app=XshellXftp
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu XShell XshellXftp\XshellPortable.exe XshellXftp\XshellPortable.exe
call :joinstartmenu XFtp XshellXftp\XftpPortable.exe XshellXftp\XftpPortable.exe
goto menu

:360Chrome
set app=360Chrome
set exe=360Chrome\Chrome\Application\360chrome.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:JavaSDK
set app=jdk
call :download_app %app%
call :decompress_app %app%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
goto menu

:Qt
set app=Qt
call :download_app %app%
call :decompress_app %app%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
goto menu

:download_app
echo ### download app ...
set _app=%1
curl -O %domain%/%_app%.7z
goto :eof

:download_installer
echo ### download installer ...
set _app=%1
curl -O %domain%/%_app%_installer.7z
goto :eof

:decompress_app
echo ### decompress app ...
set _app=%1
rd /Q/S %_app%
7za x %_app%.7z
del %_app%.7z
goto :eof

:decompress_installer
echo ### decompress installer ...
set _app=%1
7za x %_app%_installer.7z
del %_app%_installer.7z
goto :eof

:joinstartmenu
set _app=%1
set _exe=%2
set _icon=%3
set shortcut="%cd%\%_app%.url"
echo [InternetShortcut]>%shortcut%
echo URL="%cd%\%_exe%">>%shortcut%
echo IconFile=%cd%\%_icon%>>%shortcut%
echo IconIndex=0 >>%shortcut%
move /Y %shortcut% %start_menu_dir%
goto :eof

:install_app
set _app=%1
set curpath=%cd%
cd %_app%
call ./install.bat
cd %curpath%
goto :eof
