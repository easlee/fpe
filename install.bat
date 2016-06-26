@echo off

set domain=http://7xlxpn.dl1.z0.glb.clouddn.com
set fperoot=%cd%
set start_menu_dir="%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\fpe"
IF NOT EXIST %start_menu_dir% MD %start_menu_dir%

setx FPE_ROOT %fperoot%

:menu
cd %fperoot%
cls
echo -----------------------------------------
echo ----        Fangs Portable Env       ----
echo ----         version  1.0.8          ----
echo -----------------------------------------
echo vi. Install Vim [7.4.788]
echo vc. Install VS Code [1.1]
echo ms. Install msys
echo ms2. Install msys2
echo tc. Install Totalcmd [8.51a]
echo st. Install SourceTree [1.8.3]
echo ss. Install Shadowsocks
echo nc. Install Navicat [9.1.11]
echo pg. Install PngGauntlet
echo tp. Install TexturePacker
echo xsf. Install XShell XFtp [5.0]
echo is. Install ILSpy 
echo 3c. Install 360Chrome
echo wo. Install WPS Office
echo ps. Install Photoshop [CC]
echo gv. Install GoldWave [6.21]
echo xm. Install XMind [7u1]
echo ax. Install Axure [8.0.0.3297]
echo td. Install Thunder [1.0.33.358]
echo .........................................
echo jdk. Install Java SDK [1.7.0_80]
echo adk. Install Android SDK
echo qt. Install Qt [5.7.0] (x86  msvc2015)
echo nj. Install NodeJS [4.4.3]
echo nx. Install Nginx [1.11.1]
echo cy. Install Caddy [0.8.3]
echo ut. Install Unity [5.3.5]
echo cc. Install Cocos [3.10]
echo cmk. Install CMake [3.6.0]
echo .........................................
echo update. Update the FPE
echo -----------------------------------------
set idx="0"
set /p idx=Enter the index:
if "%idx%"=="vi" goto Vim
if "%idx%"=="vc" goto VSCode
if "%idx%"=="ms" goto msys
if "%idx%"=="ms2" goto msys2
if "%idx%"=="tc" goto Totalcmd
if "%idx%"=="st" goto SourceTree
if "%idx%"=="ss" goto Shadowsocks
if "%idx%"=="is" goto ILSpy
if "%idx%"=="nc" goto Navicat
if "%idx%"=="pg" goto PngGauntlet
if "%idx%"=="tp" goto TexturePacker
if "%idx%"=="xsf" goto XshellXftp
if "%idx%"=="3c" goto 360Chrome
if "%idx%"=="wo" goto WPSOffice
if "%idx%"=="ps" goto Photoshop
if "%idx%"=="gv" goto GoldWave
if "%idx%"=="xm" goto XMind
if "%idx%"=="ax" goto Axure
if "%idx%"=="td" goto Thunder
if "%idx%"=="jdk" goto JavaSDK
if "%idx%"=="adk" goto AndroidSDK
if "%idx%"=="qt" goto Qt
if "%idx%"=="ut" goto Unity
if "%idx%"=="cc" goto Cocos
if "%idx%"=="nj" goto NodeJS
if "%idx%"=="nx" goto Nginx
if "%idx%"=="cy" goto Caddy
if "%idx%"=="cmk" goto CMake
if "%idx%"=="update" goto Update
goto menu

:Vim
set app=Vim
set exe=Vim\vim74\gvim.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:VSCode
set app=VSCode
set exe=VSCode\code.exe
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

:msys2
set app=msys2
set exe=msys2\msys2_shell.bat
set icon=msys2\msys2.ico
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
set app=sourcetree-183
set exe=sourcetree-183\SourceTree.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
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

:WPSOffice
set app=WPSOffice
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu WPSWord WPSOffice\9.1.0.5113\office6\wps.exe WPSOffice\9.1.0.5113\office6\wps.exe
call :joinstartmenu WPSPPT WPSOffice\9.1.0.5113\office6\wpp.exe WPSOffice\9.1.0.5113\office6\wpp.exe
call :joinstartmenu WPSExcel WPSOffice\9.1.0.5113\office6\et.exe WPSOffice\9.1.0.5113\office6\et.exe
goto menu

:Photoshop
set app=Photoshop
set exe=Photoshop\Photoshop\Photoshop.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:GoldWave
set app=GoldWave
set exe=GoldWave\GoldWave.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:XMind
set app=XMind
set exe=XMind\XMind.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:Axure
set app=Axure
set exe=Axure\AxureRP8.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:Thunder
set app=Thunder
set exe=Thunder\Program\Thunder.exe
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

:AndroidSDK
set app=android-sdk
call :download_app %app%
call :decompress_app %app%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
goto menu

:Qt
set app=qt-msvc2015-x86-570
call :download_app %app%
call :decompress_app %app%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
goto menu

:Cocos
set app=Cocos
call :download_app %app%
call :decompress_app %app%
goto menu

:Unity
set app=Unity-535
set exe=%app%\Editor\Unity.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
call :download_patcher %app%
call :decompress_patcher %app%
call :patch_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:NodeJS
set app=nodejs
set exe=nodejs\node.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:Nginx
set app=nginx-1111
set exe=nginx-1111\nginx.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:Caddy
set app=caddy-083
set exe=caddy-083\caddy.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:CMake
set app=cmake-360
set exe=cmake-360\bin\cmake-gui.exe
set icon=%exe%
call :download_app %app%
call :decompress_app %app%
call :joinstartmenu %app% %exe% %icon%
goto menu

:Update
set app=fpe
call :download_app %app%
call :decompress_app %app%
goto menu


:download_app
cd %fperoot%
echo ### download app ...
set _app=%1
curl -O %domain%/%_app%.7z
goto :eof

:download_installer
cd %fperoot%
echo ### download installer ...
set _app=%1
curl -O %domain%/%_app%_installer.7z
goto :eof

:download_patcher
cd %fperoot%
echo ### download patcher ...
set _app=%1
curl -O %domain%/%_app%_patcher.7z
goto :eof

:decompress_app
cd %fperoot%
echo ### decompress app ...
set _app=%1
rd /Q/S %_app%
7za -y x %_app%.7z
del %_app%.7z
goto :eof

:decompress_installer
cd %fperoot%
echo ### decompress installer ...
set _app=%1
7za -y x %_app%_installer.7z
del %_app%_installer.7z
goto :eof

:decompress_patcher
cd %fperoot%
echo ### decompress patcher ...
set _app=%1
7za -y x %_app%_patcher.7z
del %_app%_patcher.7z
goto :eof

:joinstartmenu
set _app=%1
set _exe=%2
set _icon=%3
set shortcut="%fperoot%\%_app%.url"
echo [InternetShortcut]>%shortcut%
echo URL="%fperoot%\%_exe%">>%shortcut%
echo IconFile=%fperoot%\%_icon%>>%shortcut%
echo IconIndex=0 >>%shortcut%
move /Y %shortcut% %start_menu_dir%
goto :eof

:install_app
cd %fperoot%
set _app=%1
cd %_app%
call ./install.bat
goto :eof

:patch_app
cd %fperoot%
set _app=%1
cd %_app%
call ./patch.bat
goto :eof
