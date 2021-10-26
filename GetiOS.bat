@echo off
pushd "iPhone Software Updates"
for /f "delims=" %%i in (models.txt) do (
	cscript /nologo "..\wget.js" http://api.ios.icj.me/v2/%%i/latest/url >url.txt
	setlocal EnableDelayedExpansion
	for /f "delims=" %%a in (url.txt) do set linkurl=%%a
	wget --no-check-certificate -nc !linkurl!
	endlocal
)
popd
pushd "iPad Software Updates"
for /f "delims=" %%i in (models.txt) do (
	cscript /nologo "..\wget.js" http://api.ios.icj.me/v2/%%i/latest/url >url.txt
	setlocal EnableDelayedExpansion
	for /f "delims=" %%a in (url.txt) do set linkurl=%%a
	wget --no-check-certificate -nc !linkurl!
	endlocal
)
popd
pushd "iPod Software Updates"
for /f "delims=" %%i in (models.txt) do (
	cscript /nologo "..\wget.js" http://api.ios.icj.me/v2/%%i/latest/url >url.txt
	setlocal EnableDelayedExpansion
	for /f "delims=" %%a in (url.txt) do set linkurl=%%a
	wget --no-check-certificate -nc !linkurl!
	endlocal
)
popd
pushd "%~dp0"
start "" deloldiOS.bat
popd
exit
