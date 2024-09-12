@ECHO OFF&SETLOCAL EnableDelayedExpansion
::
::Set retail WoW(CN) CVar OverrideArchive to 0
::
CD /D %~dp0
BREAK>config_backup.wtf
FOR /F "tokens=*" %%i IN (config.wtf) DO (
	SET line=%%i
	ECHO !line!>>config_backup.wtf)
ECHO SET overrideArchive "0">>config.wtf
