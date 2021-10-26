@echo off
pushd "iPhone Software Updates"
for /f "delims=" %%i in (models.txt) do (
	wget --no-check-certificate -O url.txt http://api.ios.icj.me/v2/%%i/latest/url >nul
	setlocal EnableDelayedExpansion
	for /f "delims=" %%a in (url.txt) do set linkurl=%%a
	wget --no-check-certificate -nc !linkurl!
	endlocal
)
popd
pushd "iPad Software Updates"
for /f "delims=" %%i in (models.txt) do (
	wget --no-check-certificate -O url.txt http://api.ios.icj.me/v2/%%i/latest/url >nul
	setlocal EnableDelayedExpansion
	for /f "delims=" %%a in (url.txt) do set linkurl=%%a
	wget --no-check-certificate -nc !linkurl!
	endlocal
)
popd
pushd "iPod Software Updates"
for /f "delims=" %%i in (models.txt) do (
	wget --no-check-certificate -O url.txt http://api.ios.icj.me/v2/%%i/latest/url >nul
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
