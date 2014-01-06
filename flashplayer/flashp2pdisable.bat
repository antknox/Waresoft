:type flashp2pdisable.bat

@Echo Off
REM 32 bit windows
if exist "%windir%\System32\Macromed\Flash\mms.cfg" echo RTMFPP2PDisable=1 >> "%windir%\System32\Macromed\Flash\mms.cfg"
REM 64 bit windows
if exist "%windir%\SysWOW64\Macromed\Flash\mms.cfg" echo RTMFPP2PDisable=1 >> "%windir%\SysWOW64\Macromed\Flash\mms.cfg"
REM chrome on windows
if exist "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Pepper Data\Shockwave Flash\" mkdir "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Pepper Data\Shockwave Flash\System"
if exist "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Pepper Data\Shockwave Flash\System" echo RTMFPP2PDisable=1 >> "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Pepper Data\Shockwave Flash\System\mms.cfg"
REM have a see
pause