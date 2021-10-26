@echo off
pushd "%AppData%\Apple Computer\iTunes\iPad Software Updates"
if not exist "%AppData%\Apple Computer\iTunes\iPad Software Updates\iPad_64bit_TouchID_ASTC_*.*_*_Restore.ipsw" exit
setlocal EnableDelayedExpansion
set ipstart=0
:ipbegin
if "!ipstart!"=="2" popd & exit
set files=0
for /F Tokens^=1-4^ Delims^=^ EOL^= %%T in ('dir /B /A:-D^
 "%AppData%\Apple Computer\iTunes\iPad Software Updates\iPad_64bit_TouchID_ASTC_*.*_*_Restore.ipsw"'
) do (
	if "!thevar!"=="1" goto :eof
	set /a files=!files! + 1
	set var!files!=%%T
	for %%i in (!files!) do (call :setvar !var%%i!)
)
goto :eof
:setvar
for /F Tokens^=4-5^ Delims^=_^ EOL^= %%G in ('dir /B /A:-D^
 "%AppData%\Apple Computer\iTunes\iPad Software Updates\iPad_64bit_TouchID_ASTC_*.*_*_Restore.ipsw"'
) do for /F Tokens^=1-3^ Delims^=.^ EOL^= %%K in ("%%H") do (
	set "version=%%H"
	if not "%version%"=="" (
		if "!version!" LSS "%version%" (
			for /F Tokens^=1-4^ Delims^=^ EOL^= %%P in ('dir /B /A:-D^
 "%AppData%\Apple Computer\iTunes\iPad Software Updates\iPad_64bit_TouchID_ASTC_*.*_*_Restore.ipsw"'
			) do (
				set "thevar=1"
				echo del "%%P"
				del /f "%%P"
				goto :next
			)
		)
	)
)
:next
set /a ipstart+=1
goto :ipbegin
