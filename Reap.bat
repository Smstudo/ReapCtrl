��
@echo off
cls
title ReapCTRL
color D
Mode 100,30
::--------------------------------------------------------------------------------------------------------------------------------------
::Run as Admin
Reg.exe add HKLM /F >nul 2>&1
if %errorlevel% neq 0 start "" /wait /I /min powershell -NoProfile -Command start -verb runas "'%~s0'" && exit /b

::Show Detailed BSoD
Reg.exe add "HKLM\System\CurrentControlSet\Control\CrashControl" /v "DisplayParameters" /t REG_DWORD /d "1" /f >nul 2>&1

::Blank/Color Character
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")

::Add ANSI escape sequences
Reg add HKCU\CONSOLE /v VirtualTerminalLevel /t REG_DWORD /d 1 /f >nul 2>&1
cls
:: MemoryCleaner
powershell invoke-webrequest -uri "https://github.com/smach-009/YFNOS-Post-Install/raw/main/MemoryCleaner.exe" -outfile "C:\Windows\MemoryCleaner.exe"
cls
start C:\Windows\MemoryCleaner.exe
cls
:: manual Tweaks
cls
If exist "C:\Users\%username%\Desktop\manualTweaks.zip" ( goto A )

If NOT exist "C:\Users\%username%\Desktop\manualTweaks.zip" ( powershell invoke-webrequest -uri "https://github.com/smach-009/ReapCtrl/raw/main/manualTweaks.zip" -outfile "C:\Users\%username%\Desktop\manualTweaks.zip"
goto A )
::----------------------------------------------------------------------------------------------------
:A
cls
color D
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                             
echo.                     :::        ::::::::   :::::::: ::::::::::: ::::    ::: 
echo.                     :+:       :+:    :+: :+:    :+:    :+:     :+:+:   :+: 
echo.                     +:+       +:+    +:+ +:+           +:+     :+:+:+  +:+ 
echo.                     +#+       +#+    +:+ :#:           +#+     +#+ +:+ +#+ 
echo.                     +#+       +#+    +#+ +#+   +#+#    +#+     +#+  +#+#+# 
echo.                     #+#       #+#    #+# #+#    #+#    #+#     #+#   #+#+# 
echo.                     ########## ########   ######## ########### ###    #### 
echo.
echo                         %COL%[97menter password to activate program
set /p choice=" Password > "
if NOT "%choice%"=="Reap3MK" goto :FAIL
if  "%choice%" =="Reap3MK" goto :login
:FAIL
cls
echo Invalid password
Timeout /T 2 /NoBreak > nul
goto A
::----------------------------------------------------------------------------------------------------------------
:login
cls
color D
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                             
echo.                     :::        ::::::::   :::::::: ::::::::::: ::::    ::: 
echo.                     :+:       :+:    :+: :+:    :+:    :+:     :+:+:   :+: 
echo.                     +:+       +:+    +:+ +:+           +:+     :+:+:+  +:+ 
echo.                     +#+       +#+    +:+ :#:           +#+     +#+ +:+ +#+ 
echo.                     +#+       +#+    +#+ +#+   +#+#    +#+     +#+  +#+#+# 
echo.                     #+#       #+#    #+# #+#    #+#    #+#     #+#   #+#+# 
echo.                     ########## ########   ######## ########### ###    #### 
echo. 
echo                                      %COL%[97mLogged in.
Timeout /T 2 /NoBreak > nul
cls
color D
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                             
echo.                     :::        ::::::::   :::::::: ::::::::::: ::::    ::: 
echo.                     :+:       :+:    :+: :+:    :+:    :+:     :+:+:   :+: 
echo.                     +:+       +:+    +:+ +:+           +:+     :+:+:+  +:+ 
echo.                     +#+       +#+    +:+ :#:           +#+     +#+ +:+ +#+ 
echo.                     +#+       +#+    +#+ +#+   +#+#    +#+     +#+  +#+#+# 
echo.                     #+#       #+#    #+# #+#    #+#    #+#     #+#   #+#+# 
echo.                     ########## ########   ######## ########### ###    #### 
echo.
echo                                      %COL%[97mLogged in..
Timeout /T 1 /NoBreak > nul
cls
color D
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                             
echo.                     :::        ::::::::   :::::::: ::::::::::: ::::    ::: 
echo.                     :+:       :+:    :+: :+:    :+:    :+:     :+:+:   :+: 
echo.                     +:+       +:+    +:+ +:+           +:+     :+:+:+  +:+ 
echo.                     +#+       +#+    +:+ :#:           +#+     +#+ +:+ +#+ 
echo.                     +#+       +#+    +#+ +#+   +#+#    +#+     +#+  +#+#+# 
echo.                     #+#       #+#    #+# #+#    #+#    #+#     #+#   #+#+# 
echo.                     ########## ########   ######## ########### ###    #### 
echo.
echo                                      %COL%[97mLogged in...
Timeout /T 0 /NoBreak > nul
cls
color D
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                             
echo.                     :::        ::::::::   :::::::: ::::::::::: ::::    ::: 
echo.                     :+:       :+:    :+: :+:    :+:    :+:     :+:+:   :+: 
echo.                     +:+       +:+    +:+ +:+           +:+     :+:+:+  +:+ 
echo.                     +#+       +#+    +:+ :#:           +#+     +#+ +:+ +#+ 
echo.                     +#+       +#+    +#+ +#+   +#+#    +#+     +#+  +#+#+# 
echo.                     #+#       #+#    #+# #+#    #+#    #+#     #+#   #+#+# 
echo.                     ########## ########   ######## ########### ###    #### 
echo.
echo                                              %COL%[97mW e l c o m e
echo                                       %COL%[97mThis File Made By @55_Smach
Timeout /T 1 /NoBreak > nul
goto tweaksmenu 
::--------------------------------------------------------------------------------------------------------------------------------------
: tweaksmenu 
cls
color D
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.  
echo.                                                             
echo.                          :::::::::  ::::::::::     :::     :::::::::  
echo.                          :+:    :+: :+:          :+: :+:   :+:    :+: 
echo.                          +:+    +:+ +:+         +:+   +:+  +:+    +:+ 
echo.                          +#++:++#:  +#++:++#   +#++:++#++: +#++:++#+  
echo.                          +#+    +#+ +#+        +#+     +#+ +#+        
echo.                          #+#    #+# #+#        #+#     #+# #+#        
echo.                          ###    ### ########## ###     ### ###        
echo.
echo                          %COL%[97m[ 1 ] Optimizations                 [ 2 ] PowerPlan              
echo.
echo                          %COL%[97m[ 3 ] SSD and HDD                   [ 4 ] Browsers Tweaks     
echo.
echo                          %COL%[97m[ 5 ] Discord                       [ A ] About ReapCtrl   
echo.
echo                                                 %COL%[97m[ x ] exit                                                   
::--------------------------------------------------------------------------------------------------------------------------------------
set input=
set /p "input=                      >:                                                 "
if /i %input% == 1 goto Optimizations
if /i %input% == 2 goto PowerPlan 
if /i %input% == 3 goto SSDHDD  
if /i %input% == 4 goto Browsers Tweaks 
if /i %input% == 5 goto Discord
if /i %input% == A goto aboutReapCTRL     
if /i %input% == x exit /b
cls
echo                                            Error
timeout /T 2 /NOBREAK >nul 2>&1
cls
goto tweaksmenu
::--------------------------------------------------------------------------------------------------------------------------------------
:Optimizations
cls
::visuals
start /wait %windir%\system32\SystemPropertiesPerformance.exe
CLS
:: CHECK FOR ADMIN PRIVILEGES
dism >nul 2>&1 || ( echo This script must be Run as Administrator. && pause && exit /b 1 )
:: DISABLE BLUETOOTH DEVICES
devcon disable BTH* >nul 2>&1
sc config BthA2dp start=disabled >nul 2>&1
sc config BthEnum start=disabled >nul 2>&1
sc config BthHFEnum start=disabled >nul 2>&1
sc config BthLEEnum start=disabled >nul 2>&1
sc config BthMini start=disabled >nul 2>&1
sc config BTHMODEM start=demand >nul 2>&1
sc config BthPan start=disabled >nul 2>&1
sc config BTHPORT start=disabled >nul 2>&1
sc config BTHUSB start=disabled >nul 2>&1
sc config HidBth start=disabled >nul 2>&1
sc config Microsoft_Bluetooth_AvrcpTransport start=disabled >nul 2>&1
sc config RFCOMM start=disabled >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
sc config BluetoothUserService start=disabled >nul 2>&1
sc config BTAGService start=disabled >nul 2>&1
sc config BthAvctpSvc start=disabled >nul 2>&1
sc config bthserv start=disabled >nul 2>&1
sc config Modem start=disabled >nul 2>&1
timeout /t 3 /nobreak >nul 2>&1
devcon disable =Bluetooth >nul 2>&1
bcdedit /timeout 7
bcdedit /deletevalue useplatformclock
bcdedit /set debug No
bcdedit /deletevalue usefirmwarepcisettings
bcdedit /set quietboot Yes
bcdedit /set x2apicpolicy disable
bcdedit /set ems No
bcdedit /set bootems No 
bcdedit /set perfmem 0 
bcdedit /set configflags 0 
bcdedit /set integrityservices disable
bcdedit /set bootux Disabled
bcdedit /set hypervisorlaunchtype Off
bcdedit /set nx AlwaysOff
bcdedit /set tpmbootentropy ForceDisable
bcdedit /set bootlog no
bcdedit /event off
bcdedit /bootdebug off
powershell set-ProcessMitigation -System -Disable  DEP, EmulateAtlThunks, SEHOP, ForceRelocateImages, RequireInfo, BottomUp, HighEntropy, StrictHandle, DisableWin32kSystemCalls, AuditSystemCall, DisableExtensionPoints, BlockDynamicCode, AllowThreadsToOptOut, AuditDynamicCode, CFG, SuppressExports, StrictCFG, MicrosoftSignedOnly, AllowStoreSignedBinaries, AuditMicrosoftSigned, AuditStoreSigned, EnforceModuleDependencySigning, DisableNonSystemFonts, AuditFont, BlockRemoteImageLoads, BlockLowLabelImageLoads, PreferSystem32, AuditRemoteImageLoads, AuditLowLabelImageLoads, AuditPreferSystem32, EnableExportAddressFilter, AuditEnableExportAddressFilter, EnableExportAddressFilterPlus, AuditEnableExportAddressFilterPlus, EnableImportAddressFilter, AuditEnableImportAddressFilter, EnableRopStackPivot, AuditEnableRopStackPivot, EnableRopCallerCheck, AuditEnableRopCallerCheck, EnableRopSimExec, AuditEnableRopSimExec, SEHOP, AuditSEHOP, SEHOPTelemetry, TerminateOnError, DisallowChildProcessCreation, AuditChildProcess
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /t REG_DWORD /d "1" /f
for /f "tokens=*" %%s in ('reg query "HKLM\System\CurrentControlSet\Enum" /S /F "StorPort" ^| findstr /e "StorPort"') do Reg add "%%s" /v "EnableIdlePowerManagement" /t REG_DWORD /d "0" /f
for %%a in (
	EnhancedPowerManagementEnabled
	AllowIdleIrpInD3
	EnableSelectiveSuspend
	DeviceSelectiveSuspended
	SelectiveSuspendEnabled
	SelectiveSuspendOn
	EnumerationRetryCount
	ExtPropDescSemaphore
	WaitWakeEnabled
	D3ColdSupported
	WdfDirectedPowerTransitionEnable
	EnableIdlePowerManagement
	IdleInWorkingState
	IoLatencyCap
) do for /f "delims=" %%b in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum" /s /f "%%a" ^| findstr "HKEY"') do reg add "%%b" /v "%%a" /t REG_DWORD /d "0" /f > NUL 2>&1
for %%a in (
	EnhancedPowerManagementEnabled
	AllowIdleIrpInD3
	EnableSelectiveSuspend
	DeviceSelectiveSuspended
	SelectiveSuspendEnabled
	SelectiveSuspendOn
	EnumerationRetryCount
	ExtPropDescSemaphore
	WaitWakeEnabled
	D3ColdSupported
	WdfDirectedPowerTransitionEnable
	EnableIdlePowerManagement
	IdleInWorkingState
) do for /f "delims=" %%b in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum" /s /f "%%a" ^| findstr "HKEY"') do reg.exe add "%%b" /v "%%a" /t REG_DWORD /d "0" /f > NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "GamePanelStartupTipIndex" /t REG_DWORD /d "3" /f 
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f 
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f 
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f 
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f 
reg add "HKCU\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f 
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "2" /f 
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d "0" /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f 
reg add "HKU\.DEFAULT\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f 
reg delete "HKCU\System\GameConfigStore\Children" /f 
reg delete "HKCU\System\GameConfigStore\Parents" /f
:: Disables Mouse, sticky & toggle keys.
reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "0" /f

:: Disable Mouse acceleration.
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_DWORD /d "0" /f

:: Lower keyboard delay, increasing keyboard response time.
reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_DWORD /d "0" /f
::----------------------------------------------
cls
color D
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.  
echo.                                                             
echo.                          :::::::::  ::::::::::     :::     :::::::::  
echo.                          :+:    :+: :+:          :+: :+:   :+:    :+: 
echo.                          +:+    +:+ +:+         +:+   +:+  +:+    +:+ 
echo.                          +#++:++#:  +#++:++#   +#++:++#++: +#++:++#+  
echo.                          +#+    +#+ +#+        +#+     +#+ +#+        
echo.                          #+#    #+# #+#        #+#     #+# #+#        
echo.                          ###    ### ########## ###     ### ###        
echo.              
echo                             %COL%[97mdo you use OBS
echo                    %COL%[97m[ 1 ] Yes          [ 2 ] NO 
set /p choice=" Choice > "
if "%choice%"=="1" goto YesOBS
if "%choice%"=="2" goto printTWK
::---------------------------------------------------------------
: YesOBS
cls
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-WebRequest "https://github.com/Matishzz/OBS-Studio/releases/download/Complements/ReplayBuffer.bat" -OutFile '%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\ReplayBuffer.bat'
cls
cd C:\Program Files\obs-studio\data\obs-studio\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini

cd C:\Program Files\obs-studio\data\obs-plugins\coreaudio-encoder\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini

cd C:\Program Files\obs-studio\data\obs-plugins\enc-amf\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini

cd C:\Program Files\obs-studio\data\obs-plugins\frontend-tools\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini

cd C:\Program Files\obs-studio\data\obs-plugins\image-source\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini

cd C:\Program Files\obs-studio\data\obs-plugins\obs-ffmpeg\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini


cd C:\Program Files\obs-studio\data\obs-plugins\obs-filters
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini


cd C:\Program Files\obs-studio\data\obs-plugins\obs-outputs\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini


cd C:\Program Files\obs-studio\data\obs-plugins\obs-qsv11\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini


cd C:\Program Files\obs-studio\data\obs-plugins\obs-text\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini


cd C:\Program Files\obs-studio\data\obs-plugins\rtmp-services\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini


cd C:\Program Files\obs-studio\data\obs-plugins\text-freetype2\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini


cd C:\Program Files\obs-studio\data\obs-plugins\vlc-video\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini


cd C:\Program Files\obs-studio\data\obs-plugins\win-capture\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini


cd C:\Program Files\obs-studio\data\obs-plugins\win-decklink\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini


cd C:\Program Files\obs-studio\data\obs-plugins\win-dshow\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini


cd C:\Program Files\obs-studio\data\obs-plugins\win-wasapi\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini

cd C:\Program Files\obs-studio\data\obs-plugins\obs-browser\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini


cd C:\Program Files\obs-studio\data\obs-plugins\obs-transitions\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini

cd C:\Program Files\obs-studio\data\obs-plugins\obs-vst\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini

cd C:\Program Files\obs-studio\data\obs-plugins\obs-x264\locale
del /s /q af-ZA.ini
del /s /q ar-SA.ini
del /s /q az-AZ.ini
del /s /q bg-BG.ini
del /s /q bn-BD.ini
del /s /q ca-ES.ini
del /s /q cs-CZ.ini
del /s /q da-dk.ini
del /s /q de-DE.ini
del /s /q el-GR.ini
del /s /q et-EE.ini
del /s /q eu-ES.ini
del /s /q fa-IR.ini
del /s /q fi-FI.ini
del /s /q fil-PH.ini
del /s /q fr-FR.ini
del /s /q gd-GB.ini
del /s /q gl-ES.ini
del /s /q he-IL.ini
del /s /q hi-IN.ini
del /s /q hr-HR.ini
del /s /q hu-HU.ini
del /s /q it-IT.ini
del /s /q ja-JP.ini
del /s /q ka-GE.ini
del /s /q ko-KR.ini
del /s /q ku-TR.ini
del /s /q It-LT.ini
del /s /q mn-MN.ini
del /s /q ms-MY.ini
del /s /q nb-NO.ini
del /s /q pa-IN.ini
del /s /q pl-PL.ini
del /s /q pt-BR.ini
del /s /q pt-PT.ini
del /s /q ro-RO.ini
del /s /q ru-RU.ini
del /s /q sk-SK.ini
del /s /q sl-SI.ini
del /s /q sq-AL.ini
del /s /q sr-CS.ini
del /s /q da-dk.ini
del /s /q lt-LT.ini
del /s /q nl-NL.ini
del /s /q nn-NO.ini
del /s /q sr-SP.ini
del /s /q sv-SE.ini
del /s /q ta-IN.ini
del /s /q th-TH.ini
del /s /q tl-PH.ini
del /s /q tr-TR.ini
del /s /q uk-UA.ini
del /s /q ur-PK.ini
del /s /q vi-vn.ini
del /s /q zh-cn.ini
del /s /q zh-tw.ini

cd "C:\Program Files\obs-studio\obs-plugins\64bit\locales"
del /s /q am.pak
del /s /q ar.pak
del /s /q bg.pak
del /s /q bn.pak
del /s /q ca.pak
del /s /q cs.pak
del /s /q da.pak
del /s /q de.pak
del /s /q el.pak
del /s /q en-GB.pak
del /s /q es.pak
del /s /q es-419.pak
del /s /q et.pak
del /s /q fa.pak
del /s /q fi.pak
del /s /q fil.pak
del /s /q fr.pak
del /s /q gu.pak
del /s /q he.pak
del /s /q hi.pak
del /s /q hr.pak
del /s /q hu.pak
del /s /q id.pak
del /s /q it.pak
del /s /q ja.pak
del /s /q kn.pak
del /s /q ko.pak
del /s /q it.pak
del /s /q lv.pak
del /s /q ml.pak
del /s /q mr.pak
del /s /q ms.pak
del /s /q ms.pak
del /s /q nb.pak
del /s /q nl.pak
del /s /q pl.pak
del /s /q pt-BR.pak
del /s /q pt-PT.pak
del /s /q ro.pak
del /s /q ru.pak
del /s /q sk.pak
del /s /q zh-TW.pak
del /s /q sl.pak
del /s /q sv.pak
del /s /q sw.pak
del /s /q ta.pak
del /s /q te.pak
del /s /q th.pak
del /s /q tr.pak
del /s /q uk.pak
del /s /q vi.pak
del /s /q zh-CN.pak
del /s /q lt.pak
del /s /q sr.pak
goto Themes

:Themes
cd C:\Program Files\obs-studio\data\obs-studio\themes
RMDIR /Q/S Acri
RMDIR /Q/S Rachni
del /s /q System.qss
del /s /q Acri.qss
del /s /q Rachni.qss
goto Others

:Others
cd C:\Users\%username%\AppData\Roaming\obs-studio
RMDIR /Q/S crashes
RMDIR /Q/S logs
RMDIR /Q/S updates
RMDIR /Q/S profiler_data
cls
RegDeleteKey "HKCR\CLSID\{860BB310-5D01-11d0-BD3B-00A0C911CE86}"
RegDeleteKey "HKCR\CLSID\{A3FCE0F5-3493-419F-958A-ABA1250EC20B}"
RegDeleteKey "HKCR\WOW6432Node\CLSID\{860BB310-5D01-11d0-BD3B-00A0C911CE86}"
RegDeleteKey "HKCR\WOW6432Node\CLSID\{A3FCE0F5-3493-419F-958A-ABA1250EC20B}"
cls
goto printTWK
::-----------------------------------------------
: printTWK
cls
:: CHECK FOR ADMIN PRIVILEGES
dism >nul 2>&1 || ( echo This script must be Run as Administrator. && pause && exit /b 1 )

:: DISABLE PRINTING DEVICES
devcon disable "=Printer" >nul 2>&1
devcon disable "=PrintQueue" >nul 2>&1

:: DISABLE PRINTING SERVICES
sc config Spooler start=disabled >nul 2>&1
sc stop Spooler >nul 2>&1

:: DISABLE PRINTING FEATURES
dism /online /Disable-Feature /FeatureName:Printing-Foundation-InternetPrinting-Client >nul 2>&1
dism /online /Disable-Feature /FeatureName:Printing-Foundation-Features >nul 2>&1

:: CHECK FOR ADMIN PRIVILEGES
dism >nul 2>&1 || ( echo This script must be Run as Administrator. && pause && exit /b 1 )

:: DISABLE WIFI DRIVERS
sc config vwififlt start=demand >nul 2>&1

:: DISABLE WIFI SERVICES
sc config WlanSvc start=disabled >nul 2>&1
cls
::--------------------------------------------------------------------------------------------------------------------------------------
::RAM optimization
cls
:RAM tweaksmenu
color D
echo.                                                                         
echo.
echo.
echo.
echo.
echo.
echo.
echo.                       
echo.                          :::::::::  ::::::::::     :::     :::::::::  
echo.                          :+:    :+: :+:          :+: :+:   :+:    :+: 
echo.                          +:+    +:+ +:+         +:+   +:+  +:+    +:+ 
echo.                          +#++:++#:  +#++:++#   +#++:++#++: +#++:++#+  
echo.                          +#+    +#+ +#+        +#+     +#+ +#+        
echo.                          #+#    #+# #+#        #+#     #+# #+#        
echo.                          ###    ### ########## ###     ### ###           
echo.                      
echo            %COL%[97mEnter your amount of RAM: 
set /p a=
if "%a%" == "4" goto :4096
if "%a%" == "8" goto :8192
if "%a%" == "12" goto :12288
if "%a%" == "16" goto :16384
if "%a%" == "20" goto :20480
if "%a%" == "24" goto :24576
if "%a%" == "32" goto :32768
cls
:misspell
cls
echo Misspell detected!
timeout 2 > nul
echo Redirecting back to tweaksmenu.
timeout 2 > nul
cls
goto Monitor

:2048
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 2097152 /f > nul
cls
echo Value set to 2048MB (or 2097152)
timeout 2 > nul
cls
goto Monitor

:3072
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 3145728 /f > nul
cls
echo Value set to 3072MB (or 3145728)
timeout 2 > nul
cls
goto Monitor

:4096
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 4194304 /f > nul
cls
echo Value set to 4096MB (or 4194304)
timeout 2 > nul
cls
goto Monitor

:6144
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 6291456 /f > nul
cls
echo Value set to 6144MB (or 6291456)
timeout 2 > nul
cls
goto Monitor

:8192
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 8388608 /f > nul
cls
echo Value set to 8192MB (or 8388608)
timeout 2 > nul
cls
goto Monitor

:10240
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 10485760 /f > nul
cls
echo Value set to 10240MB (or 10485760)
timeout 2 > nul
cls
goto Monitor

:12288
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 12582912 /f > nul
cls
echo Value set to 12288MB (or 12582912)
timeout 2 > nul
cls
goto Monitor

:16384
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 16777216 /f > nul
cls
echo Value set to 16384MB (or 16777216)
timeout 2 > nul
cls
goto Monitor

:20480
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 20971520 /f > nul
cls
echo Value set to 20480MB (or 20971520)
timeout 2 > nul
cls
goto Monitor

:24576
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 25165824 /f > nul
cls
echo Value set to 24576MB (or 25165824)
timeout 2 > nul
cls
goto Monitor

:32768
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 33554432 /f > nul
cls
echo Value set to 32768MB (or 33554432)
timeout 2 > nul
cls
goto Monitor

:default
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 380000 /f > nul
cls
echo Value set to 3500MB (or 380000)
timeout 2 > nul
cls
goto Monitor
::-------------------------------------------------------------------------------
: Monitor
cls
color D
echo.                                                                         
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                             
echo.                          :::::::::  ::::::::::     :::     :::::::::  
echo.                          :+:    :+: :+:          :+: :+:   :+:    :+: 
echo.                          +:+    +:+ +:+         +:+   +:+  +:+    +:+ 
echo.                          +#++:++#:  +#++:++#   +#++:++#++: +#++:++#+  
echo.                          +#+    +#+ +#+        +#+     +#+ +#+        
echo.                          #+#    #+# #+#        #+#     #+# #+#        
echo.                          ###    ### ########## ###     ### ###          
echo.                                           
echo                    %COL%[97m[ 60 ] 60Hz                    [ 75 ] 75Hz
echo.                      
echo                    %COL%[97m[ 120 ] 120Hz                  [ 144 ] 144Hz
echo.                            
echo                    %COL%[97m[ 165 ] 165Hz                  [ 240 ] 240Hz
echo.
echo                    %COL%[97m[ 280 ] 280Hz                  [ 360 ] 360Hz
set /p choice=" Hz > "

if /i "%choice%"=="60" RegWrite "HKLM\SOFTWARE\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 60
RegWrite "HKLM\SOFTWARE\WOW6432Node\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 60
goto reg 
if /i "%choice%"=="75" RegWrite "HKLM\SOFTWARE\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 75
RegWrite "HKLM\SOFTWARE\WOW6432Node\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 75
goto reg 
if /i "%choice%"=="120" RegWrite "HKLM\SOFTWARE\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 120
RegWrite "HKLM\SOFTWARE\WOW6432Node\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 120
goto reg 
if /i "%choice%"=="144" RegWrite "HKLM\SOFTWARE\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 144
RegWrite "HKLM\SOFTWARE\WOW6432Node\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 144
goto reg 
if /i "%choice%"=="165" RegWrite "HKLM\SOFTWARE\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 165
RegWrite "HKLM\SOFTWARE\WOW6432Node\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 165
goto reg 
if /i "%choice%"=="240" RegWrite "HKLM\SOFTWARE\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 240
RegWrite "HKLM\SOFTWARE\WOW6432Node\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 240
goto reg 
if /i "%choice%"=="280" RegWrite "HKLM\SOFTWARE\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 280
RegWrite "HKLM\SOFTWARE\WOW6432Node\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 280
goto reg 
if /i "%choice%"=="360" RegWrite "HKLM\SOFTWARE\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 360
RegWrite "HKLM\SOFTWARE\WOW6432Node\Microsoft\DirectDraw", "ForceRefreshRate", "REG_DWORD", 360
goto reg 
::--------------------------------------------------
: reg
cls
RegWrite "HKLM\SYSTEM\CurrentControlSet\services\kbdclass\Parameters", "KeyboardDataQueueSize", "REG_DWORD", 25
RegDeleteKey "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe"
RegWrite "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management", "LargeSystemCache", "REG_DWORD", 0
RegWrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions", "CpuPriorityClass", "REG_DWORD", 2
RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters", "MaximumPortsServiced", "REG_DWORD", 1
RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters", "SendOutputToAllPorts", "REG_DWORD", 0
RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters", "KeyboardDataQueueSize", "REG_DWORD", 16
RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl", "MonitorLatencyTolerance", "REG_DWORD", 0
RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl", "MonitorRefreshLatencyTolerance", "REG_DWORD", 0S
RegWrite "HKCU\Control Panel\Mouse", "MouseSensitivity", "REG_SZ", "10"
reg.exe "SmoothMouseXCurve"=hex:\
	00,00,00,00,00,00,00,00,\
	C0,CC,0C,00,00,00,00,00,\
	80,99,19,00,00,00,00,00,\
	40,66,26,00,00,00,00,00,\
	00,33,33,00,00,00,00,00
reg.exe "SmoothMouseYCurve"=hex:\
	00,00,00,00,00,00,00,00,\
	00,00,38,00,00,00,00,00,\
	00,00,70,00,00,00,00,00,\
	00,00,A8,00,00,00,00,00,\
	00,00,E0,00,00,00,00,00
RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters", "UseOnlyMice", "REG_DWORD", 1
RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters", "TreatAbsoluteAsRelative", "REG_DWORD", 0
RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters", "TreatAbsolutePointerAsAbsolute", "REG_DWORD", 1
RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters", "MouseDataQueueSize", "REG_DWORD", 16
RegWrite "HKLM\SYSTEM\CurrentControlSet\services\mouclass\Parameters", "MouseDataQueueSize", "REG_DWORD", 25
RegWrite "HKLM\SYSTEM\ControlSet001\services\TCPIP6\Parameters", "DisabledComponents", "REG_DWORD", 255
RegWrite "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl", "Win32PrioritySeparation", "REG_DWORD", 38
RegWrite "HKCU\Control Panel\Mouse", "MouseSensitivity", "REG_SZ", "10"
RegWrite "HKU\.DEFAULT\Control Panel\Mouse", "MouseSpeed", "REG_SZ", "0"
RegWrite "HKU\.DEFAULT\Control Panel\Mouse", "MouseThreshold1", "REG_SZ", "0"
::---------------------------------------------------
:: srvices 
sc stop AJRouter > nul
sc config AJRouter start= disabled > nul

sc stop AppXSvc > nul
sc config AppXSvc start= disabled > nul

sc stop ALG > nul
sc config ALG start= disabled > nul

sc stop AppMgmt > nul
sc config AppMgmt start= disabled > nul

sc stop tzautoupdate > nul
sc config tzautoupdate start= disabled > nul

sc stop AssignedAccessManagerSvc > nul 
sc config AssignedAccessManagerSvc start= disabled > nul


sc stop DoSvc > nul
sc config DoSvc start= disabled > nul

sc stop diagsvc > nul
sc config diagsvc start= disabled > nul

sc stop DPS > nul 
sc config DPS start= disabled > nul

sc stop dmwappushservice > nul
sc config dmwappushservice start= disabled > nul

sc stop MapsBroker > nul
sc config MapsBroker start= disabled > nul

sc stop lfsvc > nul
sc config lfsvc start= disabled > nul

sc stop CscService > nul
sc config CscService start= disabled > nul
 
sc stop SEMgrSvc > nul
sc config SEMgrSvc start= disabled > nul

sc stop PhoneSvc > nul
sc config PhoneSvc start= disabled > nul

sc stop RemoteRegistry > nul
sc config RemoteRegistry start= disabled > nul

sc stop RetailDemo > nul
sc config RetailDemo start= disabled > nul

sc stop SysMain > nul
sc config SysMain start= disabled > nul

sc stop WalletService > nul
sc config WalletService start= disabled > nul

sc stop WSearch > nul
sc config WSearch start= disabled > nul

sc stop W32Time > nul
sc config W32Time start= disabled > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MessagingService" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WpnUserService" /v Start /t REG_DWORD /d 00000004 /f > nul


sc stop AJRouter > nul
sc config AJRouter start= disabled > nul

sc stop tzautoupdate > nul
sc config tzautoupdate start= disabled > nul

sc stop BITS > nul
sc config BITS start= disabled > nul

sc stop DiagTrack > nul
sc config DiagTrack start= disabled > nul
 
sc stop CDPSvc > nul
sc config CDPSvc start= disabled > nul

sc stop DusmSvc > nul
sc config DusmSvc start= disabled > nul

sc stop DoSvc > nul
sc config DoSvc start= disabled > nul

sc stop diagsvc > nul
sc config diagsvc start= disabled > nul

sc stop DPS > nul
sc config DPS start= disabled > nul

sc stop WdiServiceHost > nul
sc config WdiServiceHost start= disabled > nul

sc stop WdiSystemHost > nul
sc config WdiSystemHost start= disabled > nul

sc stop dmwappushservice > nul
sc config dmwappushservice start= disabled > nul

sc stop DisplayEnhancementService > nul
sc config DisplayEnhancementService start= disabled > nul

sc stop MapsBroker > nul
sc config MapsBroker start= disabled > nul

sc stop fhsvc > nul
sc config fhsvc start= disabled > nul

sc stop lfsvc > nul
sc config lfsvc start= disabled > nul

sc stop HomeGroupListener > nul
sc config HomeGroupListener start= disabled > nul

sc stop HomeGroupProvider > nul
sc config HomeGroupProvider start= disabled > nul

sc stop SmsRouter > nul
sc config SmsRouter start= disabled > nul

sc stop CscService > nul
sc config CscService start= disabled > nul

sc stop SEMgrSvc > nul
sc config SEMgrSvc start= disabled > nul

sc stop pla > nul
sc config pla start= disabled > nul

sc stop PhoneSvc > nul
sc config PhoneSvc start= disabled > nul

sc stop WpcMonSvc > nul
sc config WpcMonSvc start= disabled > nul

sc stop RasAuto > nul
sc config RasAuto start= disabled > nul

sc stop RasMan > nul
sc config RasMan start= disabled > nul 

sc stop SessionEnv > nul
sc config SessionEnv start= disabled > nul

sc stop TermService > nul
sc config TermService start= disabled > nul

sc stop TermService > nul
sc config TermService start= disabled > nul
 
sc stop RpcLocator > nul
sc config RpcLocator start= disabled > nul

sc stop RemoteRegistry > nul
sc config RemoteRegistry start= disabled > nul
 
sc stop RetailDemo > nul
sc config RetailDemo start= disabled > nul

sc stop SysMain > nul 
sc config SysMain start= disabled > nul

sc stop WalletService > nul
sc config WalletService start= disabled > nul

sc stop WerSvc > nul
sc config WerSvc start= disabled > nul

sc stop WSearch > nul
sc config WSearch start= disabled > nul
 
sc stop W32Time > nul 
sc config W32Time start= disabled > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MessagingService" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WpnUserService" /v Start /t REG_DWORD /d 00000004 /f > nul


sc stop AJRouter > nul
sc config AJRouter start= disabled > nul

sc stop AppXSvc > nul
sc config AppXSvc start= disabled > nul

sc stop ALG > nul
sc config ALG start= disabled > nul

sc stop AppMgmt > nul
sc config AppMgmt start= disabled > nul

sc stop tzautoupdate > nul
sc config tzautoupdate start= disabled > nul

sc stop AssignedAccessManagerSvc > nul 
sc config AssignedAccessManagerSvc start= disabled > nul

sc stop BITS > nul
sc config BITS start= disabled > nul

sc stop BDESVC > nul
sc config BDESVC start= disabled > nul

sc stop wbengine > nul
sc config wbengine start= disabled > nul

sc stop BTAGService > nul
sc config BTAGService start= disabled > nul

sc stop bthserv > nul
sc config bthserv start= disabled > nul

sc stop BthHFSrv > nul
sc config BthHFSrv start= disabled > nul

sc stop PeerDistSvc > nul
sc config PeerDistSvc start= disabled > nul

sc stop CertPropSvc > nul 
sc config CertPropSvc start= disabled > nul

sc stop ClipSVC > nul
sc config ClipSVC start= disabled > nul

sc stop DiagTrack > nul
sc config DiagTrack start= disabled > nul

sc stop VaultSvc > nul
sc config VaultSvc start= disabled > nul

sc stop CDPSvc > nul 
sc config CDPSvc start= disabled > nul 

sc stop DusmSvc > nul
sc config DusmSvc start= disabled > nul
 
sc stop DoSvc > nul
sc config DoSvc start= disabled > nul

sc stop diagsvc > nul
sc config diagsvc start= disabled > nul

sc stop DPS > nul
sc config DPS start= disabled > nul

sc stop WdiServiceHost > nul
sc config WdiServiceHost start= disabled > nul

sc stop WdiSystemHost > nul
sc config WdiSystemHost start= disabled > nul

sc stop TrkWks > nul
sc config TrkWks start= disabled > nul

sc stop MSDTC > nul
sc config MSDTC start= disabled > nul

sc stop dmwappushservice > nul 
sc config dmwappushservice start= disabled > nul

sc stop DisplayEnhancementService > nul
sc config DisplayEnhancementService start= disabled > nul

sc stop MapsBroker > nul
sc config MapsBroker start= disabled > nul

sc stop fdPHost > nul
sc config fdPHost start= disabled > nul

sc stop FDResPub > nul
sc config FDResPub start= disabled > nul

sc stop EFS > nul
sc config EFS start= disabled > nul

sc stop EntAppSvc > nul
sc config EntAppSvc start= disabled > nul

sc stop fhsvc > nul
sc config fhsvc start= disabled > nul

sc stop lfsvc > nul
sc config lfsvc start= disabled > nul

sc stop HomeGroupListener > nul
sc config HomeGroupListener start= disabled > nul

sc stop HomeGroupProvider > nul
sc config HomeGroupProvider start= disabled > nul

sc stop HvHost > nul
sc config HvHost start= disabled > nul

sc stop hns > nul
sc config hns start= disabled > nul

sc stop vmickvpexchange > nul
sc config vmickvpexchange start= disabled > nul

sc stop vmicguestinterface > nul
sc config vmicguestinterface start= disabled > nul

sc stop vmicshutdown > nul
sc config vmicshutdown start= disabled > nul

sc stop vmicheartbeat > nul
sc config vmicheartbeat start= disabled > nul

sc stop vmicvmsession > nul
sc config vmicvmsession start= disabled > nul
 
sc stop vmicrdv > nul
sc config vmicrdv start= disabled > nul

sc stop vmictimesync > nul
sc config vmictimesync start= disabled > nul

sc stop vmicvss > nul
sc config vmicvss start= disabled > nul

sc stop IEEtwCollectorService > nul
sc config IEEtwCollectorService start= disabled > nul

sc stop iphlpsvc > nul
sc config iphlpsvc start= disabled > nul 

sc stop IpxlatCfgSvc > nul
sc config IpxlatCfgSvc start= disabled > nul
 
sc stop PolicyAgent > nul
sc config PolicyAgent start= disabled > nul

sc stop irmon > nul
sc config irmon start= disabled > nul

sc stop SharedAccess > nul
sc config SharedAccess start= disabled > nul

sc stop lltdsvc > nul
sc config lltdsvc start= disabled > nul

sc stop diagnosticshub.standardcollector.service > nul
sc config diagnosticshub.standardcollector.service start= disabled > nul

sc stop wlidsvc > nul
sc config wlidsvc start= disabled > nul

sc stop AppVClient > nul
sc config AppVClient start= disabled > nul

sc stop smphost > nul
sc config smphost start= disabled > nul

sc stop InstallService > nul
sc config InstallService start= disabled > nul
  
sc stop SmsRouter > nul
sc config SmsRouter start= disabled > nul

sc stop MSiSCSI > nul
sc config MSiSCSI start= disabled > nul

sc stop NaturalAuthentication > nul
sc config NaturalAuthentication start= disabled > nul

sc stop CscService > nul
sc config CscService start= disabled > nul

sc stop defragsvc > nul
sc config defragsvc start= disabled > nul

sc stop SEMgrSvc > nul
sc config SEMgrSvc start= disabled > nul

sc stop PNRPsvc > nul
sc config PNRPsvc start= disabled > nul

sc stop p2psvc > nul
sc config p2psvc start= disabled > nul

sc stop p2pimsvc > nul
sc config p2pimsvc start= disabled > nul

sc stop pla > nul
sc config pla start= disabled > nul

sc stop PhoneSvc > nul
sc config PhoneSvc start= disabled > nul

sc stop WPDBusEnum > nul
sc config WPDBusEnum start= disabled > nul

sc stop Spooler > nul
sc config Spooler start= disabled > nul

sc stop PrintNotify > nul
sc config PrintNotify start= disabled > nul

sc stop PcaSvc > nul
sc config PcaSvc start= disabled > nul

sc stop WpcMonSvc > nul
sc config WpcMonSvc start= disabled > nul

sc stop QWAVE > nul
sc config QWAVE start= disabled > nul

sc stop RasAuto > nul
sc config RasAuto start= disabled > nul
 
sc stop RasMan > nul
sc config RasMan start= disabled > nul

sc stop SessionEnv > nul
sc config SessionEnv start= disabled > nul

sc stop TermService > nul
sc config TermService start= disabled > nul

sc stop UmRdpService > nul 
sc config UmRdpService start= disabled > nul

sc stop RpcLocator > nul
sc config RpcLocator start= disabled > nul

sc stop RemoteRegistry > nul
sc config RemoteRegistry start= disabled > nul

sc stop RetailDemo > nul
sc config RetailDemo start= disabled > nul

sc stop RemoteAccess > nul
sc config RemoteAccess start= disabled > nul
 
sc stop RmSvc > nul 
sc config RmSvc start= disabled > nul

sc stop SNMPTRAP > nul
sc config SNMPTRAP start= disabled > nul

sc stop seclogon > nul
sc config seclogon start= disabled > nul

sc stop wscsvc > nul
sc config wscsvc start= disabled > nul

sc stop SamSs > nul
sc config SamSs start= disabled > nul

sc stop SensorDataService > nul
sc config SensorDataService start= disabled > nul

sc stop SensrSvc > nul
sc config SensrSvc start= disabled > nul

sc stop SensorService > nul
sc config SensorService start= disabled > nul

sc stop LanmanServer > nul
sc config LanmanServer start= disabled > nul

sc stop shpamsvc > nul
sc config shpamsvc start= disabled > nul

sc stop ShellHWDetection > nul
sc config ShellHWDetection start= disabled > nul

sc stop SCardSvr > nul
sc config SCardSvr start= disabled > nul

sc stop ScDeviceEnum > nul
sc config ScDeviceEnum start= disabled > nul

sc stop SCPolicySvc > nul
sc config SCPolicySvc start= disabled > nul

sc stop SharedRealitySvc > nul
sc config SharedRealitySvc start= disabled > nul

sc stop StorSvc > nul
sc config StorSvc start= disabled > nul

sc stop TieringEngineService > nul
sc config TieringEngineService start= disabled > nul

sc stop SysMain > nul
sc config SysMain start= disabled > nul

sc stop SgrmBroker > nul
sc config SgrmBroker start= disabled > nul

sc stop lmhosts > nul
sc config lmhosts start= disabled > nul

sc stop TapiSrv > nul
sc config TapiSrv start= disabled > nul

sc stop Themes > nul
sc config Themes start= disabled > nul

sc stop tiledatamodelsvc > nul
sc config tiledatamodelsvc start= disabled > nul

sc stop TabletInputService > nul
sc config TabletInputService start= disabled > nul

sc stop UsoSvc > nul
sc config UsoSvc start= disabled > nul

sc stop UevAgentService > nul
sc config UevAgentService start= disabled > nul

sc stop WalletService > nul
sc config WalletService start= disabled > nul

sc stop wmiApSrv > nul
sc config wmiApSrv start= disabled > nul

sc stop TokenBroker > nul
sc config TokenBroker start= disabled > nul

sc stop WebClient > nul
sc config WebClient start= disabled > nul

sc stop WFDSConMgrSvc > nul
sc config WFDSConMgrSvc start= disabled > nul

sc stop SDRSVC > nul
sc config SDRSVC start= disabled > nul
 
sc stop WbioSrvc > nul
sc config WbioSrvc start= disabled > nul

sc stop FrameServer > nul
sc config FrameServer start= disabled > nul
 
sc stop wcncsvc > nul
sc config wcncsvc start= disabled > nul

sc stop Sense > nul
sc config Sense start= disabled > nul

sc stop WdNisSvc > nul
sc config WdNisSvc start= disabled > nul

sc stop WinDefend > nul
sc config WinDefend start= disabled > nul

sc stop SecurityHealthService > nul
sc config SecurityHealthService start= disabled > nul

sc stop WEPHOSTSVC > nul
sc config WEPHOSTSVC start= disabled > nul

sc stop WerSvc > nul
sc config WerSvc start= disabled > nul

sc stop Wecsvc > nul
sc config Wecsvc start= disabled > nul

sc stop FontCache > nul
sc config FontCache start= disabled > nul

sc stop StiSvc > nul
sc config StiSvc start= disabled > nul

sc stop wisvc > nul
sc config wisvc start= disabled > nul

sc stop LicenseManager > nul
sc config LicenseManager start= disabled > nul

sc stop icssvc > nul
sc config icssvc start= disabled > nul

sc stop WMPNetworkSvc > nul
sc config WMPNetworkSvc start= disabled > nul

sc stop FontCache3.0.0.0 > nul
sc config FontCache3.0.0.0 start= disabled > nul

sc stop WpnService > nul
sc config WpnService start= disabled > nul

sc stop perceptionsimulation > nul
sc config perceptionsimulation start= disabled > nul

sc stop spectrum > nul 
sc config spectrum start= disabled > nul
 
sc stop WinRM > nul
sc config WinRM start= disabled > nul

sc stop WSearch > nul
sc config WSearch start= disabled > nul

sc stop SecurityHealthService > nul
sc config SecurityHealthService start= disabled > nul

sc stop W32Time > nul
sc config W32Time start= disabled > nul

sc stop wuauserv > nul
sc config wuauserv start= disabled > nul

sc stop WaaSMedicSvc > nul
sc config WaaSMedicSvc start= disabled > nul

sc stop LanmanWorkstation > nul
sc config LanmanWorkstation start= disabled > nul

sc stop XboxGipSvc > nul
sc config XboxGipSvc start= disabled > nul

sc stop xbgm > nul
sc config xbgm start= disabled > nul

sc stop XblAuthManager > nul
sc config XblAuthManager start= disabled > nul

sc stop XblGameSave > nul
sc config XblGameSave start= disabled > nul
  
sc stop XboxNetApiSvc > nul
sc config XboxNetApiSvc start= disabled > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CaptureService" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MessagingService" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v Start /t REG_DWORD /d 00000004 /f > nul 

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\OneSyncSvc" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v Start /t REG_DWORD /d 00000004 /f > nul

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WpnUserService" /v Start /t REG_DWORD /d 00000004 /f > nul




sc stop BITS > nul
sc config BITS start= disabled > nul

sc stop BDESVC > nul
sc config BDESVC start= disabled > nul

sc stop wbengine > nul
sc config wbengine start= disabled > nul

sc stop BTAGService > nul
sc config BTAGService start= disabled > nul

sc stop bthserv > nul
sc config bthserv start= disabled > nul

sc stop BthHFSrv > nul
sc config BthHFSrv start= disabled > nul

sc stop PeerDistSvc > nul
sc config PeerDistSvc start= disabled > nul

sc stop CertPropSvc > nul 
sc config CertPropSvc start= disabled > nul

sc stop ClipSVC > nul
sc config ClipSVC start= disabled > nul

sc stop DiagTrack > nul
sc config DiagTrack start= disabled > nul

sc stop VaultSvc > nul
sc config VaultSvc start= disabled > nul

sc stop CDPSvc > nul 
sc config CDPSvc start= disabled > nul 

sc stop DusmSvc > nul
sc config DusmSvc start= disabled > nul
 
sc stop DoSvc > nul
sc config DoSvc start= disabled > nul

sc stop diagsvc > nul
sc config diagsvc start= disabled > nul

sc stop DPS > nul
sc config DPS start= disabled > nul

sc stop WdiServiceHost > nul
sc config WdiServiceHost start= disabled > nul

sc stop WdiSystemHost > nul
sc config WdiSystemHost start= disabled > nul

sc stop TrkWks > nul
sc config TrkWks start= disabled > nul

sc stop MSDTC > nul
sc config MSDTC start= disabled > nul

sc stop dmwappushservice > nul 
sc config dmwappushservice start= disabled > nul

sc stop DisplayEnhancementService > nul
sc config DisplayEnhancementService start= disabled > nul

sc stop MapsBroker > nul
sc config MapsBroker start= disabled > nul

sc stop fdPHost > nul
sc config fdPHost start= disabled > nul

sc stop FDResPub > nul
sc config FDResPub start= disabled > nul

sc stop EFS > nul
sc config EFS start= disabled > nul

sc stop EntAppSvc > nul
sc config EntAppSvc start= disabled > nul

sc stop fhsvc > nul
sc config fhsvc start= disabled > nul

sc stop lfsvc > nul
sc config lfsvc start= disabled > nul

sc stop HomeGroupListener > nul
sc config HomeGroupListener start= disabled > nul

sc stop HomeGroupProvider > nul
sc config HomeGroupProvider start= disabled > nul

sc stop HvHost > nul
sc config HvHost start= disabled > nul

sc stop hns > nul
sc config hns start= disabled > nul

sc stop vmickvpexchange > nul
sc config vmickvpexchange start= disabled > nul

sc stop vmicguestinterface > nul
sc config vmicguestinterface start= disabled > nul

sc stop vmicshutdown > nul
sc config vmicshutdown start= disabled > nul

sc stop vmicheartbeat > nul
sc config vmicheartbeat start= disabled > nul

sc stop vmicvmsession > nul
sc config vmicvmsession start= disabled > nul
 
sc stop vmicrdv > nul
sc config vmicrdv start= disabled > nul

sc stop vmictimesync > nul
sc config vmictimesync start= disabled > nul

sc stop vmicvss > nul
sc config vmicvss start= disabled > nul

sc stop IEEtwCollectorService > nul
sc config IEEtwCollectorService start= disabled > nul

sc stop iphlpsvc > nul
sc config iphlpsvc start= disabled > nul 

sc stop IpxlatCfgSvc > nul
sc config IpxlatCfgSvc start= disabled > nul
 
sc stop PolicyAgent > nul
sc config PolicyAgent start= disabled > nul

sc stop irmon > nul
sc config irmon start= disabled > nul

sc stop SharedAccess > nul
sc config SharedAccess start= disabled > nul

sc stop lltdsvc > nul
sc config lltdsvc start= disabled > nul

sc stop diagnosticshub.standardcollector.service > nul
sc config diagnosticshub.standardcollector.service start= disabled > nul

sc stop wlidsvc > nul
sc config wlidsvc start= disabled > nul

sc stop AppVClient > nul
sc config AppVClient start= disabled > nul

sc stop smphost > nul
sc config smphost start= disabled > nul

sc stop InstallService > nul
sc config InstallService start= disabled > nul
  
sc stop SmsRouter > nul
sc config SmsRouter start= disabled > nul

sc stop MSiSCSI > nul
sc config MSiSCSI start= disabled > nul

sc stop NaturalAuthentication > nul
sc config NaturalAuthentication start= disabled > nul

sc stop CscService > nul
sc config CscService start= disabled > nul

sc stop defragsvc > nul
sc config defragsvc start= disabled > nul

sc stop SEMgrSvc > nul
sc config SEMgrSvc start= disabled > nul

sc stop PNRPsvc > nul
sc config PNRPsvc start= disabled > nul

sc stop p2psvc > nul
sc config p2psvc start= disabled > nul

sc stop p2pimsvc > nul
sc config p2pimsvc start= disabled > nul

sc stop pla > nul
sc config pla start= disabled > nul

sc stop PhoneSvc > nul
sc config PhoneSvc start= disabled > nul

sc stop WPDBusEnum > nul
sc config WPDBusEnum start= disabled > nul

sc stop Spooler > nul
sc config Spooler start= disabled > nul

sc stop PrintNotify > nul
sc config PrintNotify start= disabled > nul

sc stop PcaSvc > nul
sc config PcaSvc start= disabled > nul

sc stop WpcMonSvc > nul
sc config WpcMonSvc start= disabled > nul

sc stop QWAVE > nul
sc config QWAVE start= disabled > nul

sc stop RasAuto > nul
sc config RasAuto start= disabled > nul
 
sc stop RasMan > nul
sc config RasMan start= disabled > nul

sc stop SessionEnv > nul
sc config SessionEnv start= disabled > nul

sc stop TermService > nul
sc config TermService start= disabled > nul

sc stop UmRdpService > nul 
sc config UmRdpService start= disabled > nul

sc stop RpcLocator > nul
sc config RpcLocator start= disabled > nul

sc stop RemoteRegistry > nul
sc config RemoteRegistry start= disabled > nul

sc stop RetailDemo > nul
sc config RetailDemo start= disabled > nul

sc stop RemoteAccess > nul
sc config RemoteAccess start= disabled > nul
 
sc stop RmSvc > nul 
sc config RmSvc start= disabled > nul

sc stop SNMPTRAP > nul
sc config SNMPTRAP start= disabled > nul

sc stop seclogon > nul
sc config seclogon start= disabled > nul

sc stop wscsvc > nul
sc config wscsvc start= disabled > nul

sc stop SamSs > nul
sc config SamSs start= disabled > nul

sc stop SensorDataService > nul
sc config SensorDataService start= disabled > nul

sc stop SensrSvc > nul
sc config SensrSvc start= disabled > nul

sc stop SensorService > nul
sc config SensorService start= disabled > nul

sc stop LanmanServer > nul
sc config LanmanServer start= disabled > nul

sc stop shpamsvc > nul
sc config shpamsvc start= disabled > nul

sc stop ShellHWDetection > nul
sc config ShellHWDetection start= disabled > nul

sc stop SCardSvr > nul
sc config SCardSvr start= disabled > nul

sc stop ScDeviceEnum > nul
sc config ScDeviceEnum start= disabled > nul

sc stop SCPolicySvc > nul
sc config SCPolicySvc start= disabled > nul

sc stop SharedRealitySvc > nul
sc config SharedRealitySvc start= disabled > nul

sc stop StorSvc > nul
sc config StorSvc start= disabled > nul

sc stop TieringEngineService > nul
sc config TieringEngineService start= disabled > nul

sc stop SysMain > nul
sc config SysMain start= disabled > nul

sc stop SgrmBroker > nul
sc config SgrmBroker start= disabled > nul

sc stop lmhosts > nul
sc config lmhosts start= disabled > nul

sc stop TapiSrv > nul
sc config TapiSrv start= disabled > nul

sc stop Themes > nul
sc config Themes start= disabled > nul

sc stop tiledatamodelsvc > nul
sc config tiledatamodelsvc start= disabled > nul

sc stop TabletInputService > nul
sc config TabletInputService start= disabled > nul

sc stop UsoSvc > nul
sc config UsoSvc start= disabled > nul

sc stop UevAgentService > nul
sc config UevAgentService start= disabled > nul

sc stop WalletService > nul
sc config WalletService start= disabled > nul

sc stop wmiApSrv > nul
sc config wmiApSrv start= disabled > nul

sc stop TokenBroker > nul
sc config TokenBroker start= disabled > nul

sc stop WebClient > nul
sc config WebClient start= disabled > nul

sc stop WFDSConMgrSvc > nul
sc config WFDSConMgrSvc start= disabled > nul

sc stop SDRSVC > nul
sc config SDRSVC start= disabled > nul
 
sc stop WbioSrvc > nul
sc config WbioSrvc start= disabled > nul

sc stop FrameServer > nul
sc config FrameServer start= disabled > nul
 
sc stop wcncsvc > nul
sc config wcncsvc start= disabled > nul

sc stop Sense > nul
sc config Sense start= disabled > nul

sc stop WdNisSvc > nul
sc config WdNisSvc start= disabled > nul

sc stop WinDefend > nul
sc config WinDefend start= disabled > nul

sc stop SecurityHealthService > nul
sc config SecurityHealthService start= disabled > nul

sc stop WEPHOSTSVC > nul
sc config WEPHOSTSVC start= disabled > nul

sc stop WerSvc > nul
sc config WerSvc start= disabled > nul

sc stop Wecsvc > nul
sc config Wecsvc start= disabled > nul

sc stop FontCache > nul
sc config FontCache start= disabled > nul

sc stop StiSvc > nul
sc config StiSvc start= disabled > nul

sc stop wisvc > nul
sc config wisvc start= disabled > nul

sc stop LicenseManager > nul
sc config LicenseManager start= disabled > nul

sc stop icssvc > nul
sc config icssvc start= disabled > nul

sc stop WMPNetworkSvc > nul
sc config WMPNetworkSvc start= disabled > nul

sc stop FontCache3.0.0.0 > nul
sc config FontCache3.0.0.0 start= disabled > nul

sc stop WpnService > nul
sc config WpnService start= disabled > nul

sc stop perceptionsimulation > nul
sc config perceptionsimulation start= disabled > nul

sc stop spectrum > nul 
sc config spectrum start= disabled > nul
 
sc stop WinRM > nul
sc config WinRM start= disabled > nul

sc stop WSearch > nul
sc config WSearch start= disabled > nul

sc stop SecurityHealthService > nul
sc config SecurityHealthService start= disabled > nul

sc stop W32Time > nul
sc config W32Time start= disabled > nul

sc stop wuauserv > nul
sc config wuauserv start= disabled > nul

sc stop WaaSMedicSvc > nul
sc config WaaSMedicSvc start= disabled > nul

sc stop LanmanWorkstation > nul
sc config LanmanWorkstation start= disabled > nul

sc stop XboxGipSvc > nul
sc config XboxGipSvc start= disabled > nul

sc stop xbgm > nul
sc config xbgm start= disabled > nul

sc stop XblAuthManager > nul
sc config XblAuthManager start= disabled > nul

sc stop XblGameSave > nul
sc config XblGameSave start= disabled > nul
  
sc stop XboxNetApiSvc > nul
sc config XboxNetApiSvc start= disabled > nul
sc stop AJRouter
sc config AJRouter start= disabled

echo Disabling AppX Deployment Service (AppXSVC)...
sc stop AppXSvc
sc config AppXSvc start= disabled

echo Disabling Application Layer Gateway Service...
sc stop ALG
sc config ALG start= disabled

echo Disabling Application Management...
sc stop AppMgmt
sc config AppMgmt start= disabled

echo Disabling App Readiness...
sc stop AppReadiness
sc config AppReadiness start= disabled

echo Disabling Auto Time Zone Updater...
sc stop tzautoupdate
sc config tzautoupdate start= disabled

echo Disabling AssignedAccessManager Service...
sc stop AssignedAccessManagerSvc
sc config AssignedAccessManagerSvc start= disabled

echo Disabling Background Intelligent Transfer Service...
sc stop BITS
sc config BITS start= disabled

echo Disabling BitLocker Drive Encryption Service...
sc stop BDESVC
sc config BDESVC start= disabled

echo Disabling Block Level Backup Engine Service...
sc stop wbengine
sc config wbengine start= disabled

echo Disabling Bluetooth Audio Gateway Service...
sc stop BTAGService
sc config BTAGService start= disabled

echo Disabling Bluetooth Support Service...
sc stop bthserv
sc config bthserv start= disabled

echo Disabling Bluetooth Handsfree Service...
sc stop BthHFSrv
sc config BthHFSrv start= disabled

echo Disabling BranchCache...
sc stop PeerDistSvc
sc config PeerDistSvc start= disabled

echo Disabling CNG Key Isolation...
sc stop KeyIso
sc config KeyIso start= disabled

echo Disabling Certificate Propagation...
sc stop CertPropSvc
sc config CertPropSvc start= disabled

echo Disabling Client License Service (ClipSVC)...
sc stop ClipSVC
sc config ClipSVC start= disabled

echo Disabling Connected User Experiences and Telemetry...
sc stop DiagTrack
sc config DiagTrack start= disabled

echo Disabling Credential Manager...
sc stop VaultSvc
sc config VaultSvc start= disabled

echo Disabling Connected Devices Platform Service...
sc stop CDPSvc
sc config CDPSvc start= disabled

echo Disabling Data Usage...
sc stop DusmSvc
sc config DusmSvc start= disabled

echo Disabling Delivery Optimization...
sc stop DoSvc
sc config DoSvc start= disabled

echo Disabling Diagnostic Execution Service...
sc stop diagsvc
sc config diagsvc start= disabled

echo Disabling Diagnostic Policy Service...
sc stop DPS
sc config DPS start= disabled

echo Disabling Diagnostic Service Host...
sc stop WdiServiceHost
sc config WdiServiceHost start= disabled

echo Disabling Diagnostic System Host...
sc stop WdiSystemHost
sc config WdiSystemHost start= disabled

echo Disabling Distributed Link Tracking Client...
sc stop TrkWks
sc config TrkWks start= disabled

echo Disabling Distributed Transaction Coordinator...
sc stop MSDTC
sc config MSDTC start= disabled

echo Disabling dmwappushsvc...
sc stop dmwappushservice
sc config dmwappushservice start= disabled

echo Disabling Display Enhancement Service...
sc stop DisplayEnhancementService
sc config DisplayEnhancementService start= disabled

echo Disabling Downloaded Maps Manager...
sc stop MapsBroker
sc config MapsBroker start= disabled

echo Disabling Function Discovery Provider Host...
sc stop fdPHost
sc config fdPHost start= disabled

echo Disabling Function Discovery Resource Publication...
sc stop FDResPub
sc config FDResPub start= disabled

echo Disabling Encrypting File System (EFS)...
sc stop EFS
sc config EFS start= disabled

echo Disabling Enterprise App Management Service...
sc stop EntAppSvc
sc config EntAppSvc start= disabled

echo Disabling File History Service...
sc stop fhsvc
sc config fhsvc start= disabled

echo Disabling Geolocation Service...
sc stop lfsvc
sc config lfsvc start= disabled

echo Disabling GraphicsPerfSvc...
sc stop GraphicsPerfSvc
sc config GraphicsPerfSvc start= disabled

echo Disabling HomeGroup Listener...
sc stop HomeGroupListener
sc config HomeGroupListener start= disabled

echo Disabling HomeGroup Provider...
sc stop HomeGroupProvider
sc config HomeGroupProvider start= disabled

echo Disabling HV Host Service...
sc stop HvHost
sc config HvHost start= disabled

echo Disabling Host Network Service...
sc stop hns
sc config hns start= disabled

echo Disabling Hyper-V Data Exchange Service...
sc stop vmickvpexchange
sc config vmickvpexchange start= disabled

echo Disabling Hyper-V Guest Service Interface...
sc stop vmicguestinterface
sc config vmicguestinterface start= disabled

echo Disabling Hyper-V Guest Shutdown Service...
sc stop vmicshutdown
sc config vmicshutdown start= disabled

echo Disabling Hyper-V Heartbeat Service...
sc stop vmicheartbeat
sc config vmicheartbeat start= disabled

echo Disabling Hyper-V PowerShell Direct Service...
sc stop vmicvmsession
sc config vmicvmsession start= disabled

echo Disabling Hyper-V Remote Desktop Virtualization Service...
sc stop vmicrdv
sc config vmicrdv start= disabled

echo Disabling Hyper-V Time Synchronization Service...
sc stop vmictimesync
sc config vmictimesync start= disabled

echo Disabling Hyper-V Volume Shadow Copy Requestor...
sc stop vmicvss
sc config vmicvss start= disabled

echo Disabling Internet Explorer ETW Collector Service...
sc stop IEEtwCollectorService
sc config IEEtwCollectorService start= disabled

echo Disabling IP Helper...
sc stop iphlpsvc
sc config iphlpsvc start= disabled

echo Disabling IP Translation Configuration Service...
sc stop IpxlatCfgSvc
sc config IpxlatCfgSvc start= disabled

echo Disabling IPsec Policy Agent...
sc stop PolicyAgent
sc config PolicyAgent start= disabled

echo Disabling Infrared monitor service...
sc stop irmon
sc config irmon start= disabled

echo Disabling Internet Connection Sharing (ICS)...
sc stop SharedAccess
sc config SharedAccess start= disabled

echo Disabling Link-Layer Topology Discovery Mapper...
sc stop lltdsvc
sc config lltdsvc start= disabled

echo Disabling Natural Authentication...
sc stop NaturalAuthentication
sc config NaturalAuthentication start= disabled

echo Disabling Net.Tcp Port Sharing Service ...
sc stop NetTcpPortSharing
sc config NetTcpPortSharing start= disabled

echo Disabling Netlogon...
sc stop Netlogon
sc config Netlogon start= disabled

echo Disabling Network Connected Devices Auto-Setup...
sc stop NcdAutoSetup
sc config NcdAutoSetup start= disabled

echo Disabling Network Connection Broker...
sc stop NcbService
sc config NcbService start= disabled

echo Disabling Network Connectivity Assistant...
sc stop NcaSvc
sc config NcaSvc start= disabled

echo Disabling Offline Files...
sc stop CscService
sc config CscService start= disabled

echo Disabling Optimize drives...
sc stop defragsvc
sc config defragsvc start= disabled

echo Disabling Payments and NFC/SE Manager...
sc stop SEMgrSvc
sc config SEMgrSvc start= disabled

echo Disabling Peer Name Resolution Protocol...
sc stop PNRPsvc
sc config PNRPsvc start= disabled

echo Disabling Peer Networking Grouping...
sc stop p2psvc
sc config p2psvc start= disabled

echo Disabling Peer Networking Identity Manager...
sc stop p2pimsvc
sc config p2pimsvc start= disabled

echo Disabling Performance Logs & Alerts...
sc stop pla
sc config pla start= disabled

echo Disabling Phone Service...
sc stop PhoneSvc
sc config PhoneSvc start= disabled

echo Disabling Portable Device Enumerator Service...
sc stop WPDBusEnum
sc config WPDBusEnum start= disabled

echo Disabling Print Spooler...
sc stop Spooler
sc config Spooler start= disabled

echo Disabling Printer Extensions and Notifications...
sc stop PrintNotify
sc config PrintNotify start= disabled

echo Disabling Program Compatibility Assistant Service...
sc stop PcaSvc
sc config PcaSvc start= disabled

echo Disabling Parental Controls...
sc stop WpcMonSvc
sc config WpcMonSvc start= disabled

echo Disabling Quality Windows Audio Video Experience...
sc stop QWAVE
sc config QWAVE start= disabled

echo Disabling Remote Access Auto Connection Manager...
sc stop RasAuto
sc config RasAuto start= disabled

echo Disabling Remote Access Connection Manager...
sc stop RasMan
sc config RasMan start= disabled

echo Disabling Remote Desktop Configuration...
sc stop SessionEnv
sc config SessionEnv start= disabled

echo Disabling Remote Desktop Services...
sc stop TermService
sc config TermService start= disabled

echo Disabling Remote Desktop Services UserMode Port Redirector...
sc stop UmRdpService
sc config UmRdpService start= disabled

echo Disabling Remote Procedure Call (RPC) Locator...
sc stop RpcLocator
sc config RpcLocator start= disabled

echo Disabling Remote Registry...
sc stop RemoteRegistry
sc config RemoteRegistry start= disabled

echo Disabling Retail Demo Service...
sc stop RetailDemo
sc config RetailDemo start= disabled

echo Disabling Routing and Remote Access...
sc stop RemoteAccess
sc config RemoteAccess start= disabled

echo Disabling Radio Management Service...
sc stop RmSvc
sc config RmSvc start= disabled

echo Disabling SNMP Trap...
sc stop SNMPTRAP
sc config SNMPTRAP start= disabled

echo Disabling Secondary Logon...
sc stop seclogon
sc config seclogon start= disabled

echo Disabling Security Center...
sc stop wscsvc
sc config wscsvc start= disabled

echo Disabling Security Accounts Manager...
sc stop SamSs
sc config SamSs start= disabled

echo Disabling Sensor Data Service...
sc stop SensorDataService
sc config SensorDataService start= disabled

echo Disabling Sensor Monitoring Service...
sc stop SensrSvc
sc config SensrSvc start= disabled

echo Disabling Sensor Service...
sc stop SensorService
sc config SensorService start= disabled

echo Disabling Server...
sc stop LanmanServer
sc config LanmanServer start= disabled

echo Disabling Shared PC Account Manager...
sc stop shpamsvc
sc config shpamsvc start= disabled

echo Disabling Shell Hardware Detection...
sc stop ShellHWDetection
sc config ShellHWDetection start= disabled

echo Disabling Smart Card...
sc stop SCardSvr
sc config SCardSvr start= disabled

echo Disabling Smart Card Device Enumeration Service...
sc stop ScDeviceEnum
sc config ScDeviceEnum start= disabled

echo Disabling Smart Card Removal Policy...
sc stop SCPolicySvc
sc config SCPolicySvc start= disabled

echo Disabling Spatial Data Service...
sc stop SharedRealitySvc
sc config SharedRealitySvc start= disabled

echo Disabling Storage Service...
sc stop StorSvc
sc config StorSvc start= disabled

echo Disabling Storage Tiers Management...
sc stop TieringEngineService
sc config TieringEngineService start= disabled

echo Disabling Superfetch (SysMain)...
sc stop SysMain
sc config SysMain start= disabled

echo Disabling System Guard Runtime Monitor Broker...
sc stop SgrmBroker
sc config SgrmBroker start= disabled

echo Disabling TCP/IP NetBIOS Helper...
sc stop lmhosts
sc config lmhosts start= disabled

echo Disabling Telephony...
sc stop TapiSrv
sc config TapiSrv start= disabled

echo Disabling Themes...
sc stop Themes
sc config Themes start= disabled

echo Disabling Tile Data model server...
sc stop tiledatamodelsvc
sc config tiledatamodelsvc start= disabled

echo Disabling Touch Keyboard and Handwriting Panel Service...
sc stop TabletInputService
sc config TabletInputService start= disabled

echo Disabling Update Orchestrator Service...
sc stop UsoSvc
sc config UsoSvc start= disabled

echo Disabling User Experience Virtualization Service...
sc stop UevAgentService
sc config UevAgentService start= disabled

echo Disabling Volume Shadow Copy...
sc stop VSS
sc config VSS start= disabled

echo Disabling WalletService...
sc stop WalletService
sc config WalletService start= disabled

echo Disabling WMI Performance Adapter...
sc stop wmiApSrv
sc config wmiApSrv start= disabled

echo Disabling WWAN AutoConfig...
sc stop WwanSvc
sc config WwanSvc start= disabled

echo Disabling Web Account Manager...
sc stop TokenBroker
sc config TokenBroker start= disabled

echo Disabling WebClient...
sc stop WebClient
sc config WebClient start= disabled

echo Disabling Wi-Fi Direct Services Connection Manager Service...
sc stop WFDSConMgrSvc
sc config WFDSConMgrSvc start= disabled

echo Disabling Windows Backup...
sc stop SDRSVC
sc config SDRSVC start= disabled

echo Disabling Windows Biometric Service...
sc stop WbioSrvc
sc config WbioSrvc start= disabled

echo Disabling Windows Camera Frame Server...
sc stop FrameServer
sc config FrameServer start= disabled

echo Disabling Windows Connect Now - Config Registrar...
sc stop wcncsvc
sc config wcncsvc start= disabled

echo Disabling Windows Defender Advanced Threat Protection Service...
sc stop Sense
sc config Sense start= disabled

echo Disabling Windows Defender Antivirus Network Inspection Service...
sc stop WdNisSvc
sc config WdNisSvc start= disabled

echo Disabling Windows Defender Antivirus Service...
sc stop WinDefend
sc config WinDefend start= disabled

echo Disabling Windows Defender Security Center Service...
sc stop SecurityHealthService
sc config SecurityHealthService start= disabled

echo Disabling Windows Encryption Provider Host Service...
sc stop WEPHOSTSVC
sc config WEPHOSTSVC start= disabled

echo Disabling Windows Error Reporting Service...
sc stop WerSvc
sc config WerSvc start= disabled

echo Disabling Windows Event Collector...
sc stop Wecsvc
sc config Wecsvc start= disabled

echo Disabling Windows Font Cache Service...
sc stop FontCache
sc config FontCache start= disabled

echo Disabling Windows Image Acquisition (WIA)...
sc stop StiSvc
sc config StiSvc start= disabled

echo Disabling Windows Insider Service...
sc stop wisvc
sc config wisvc start= disabled

echo Disabling Windows License Manager Service...
sc stop LicenseManager
sc config LicenseManager start= disabled

echo Disabling Windows Mobile Hotspot Service...
sc stop icssvc
sc config icssvc start= disabled

echo Disabling Windows Media Player Network Sharing Service...
sc stop WMPNetworkSvc
sc config WMPNetworkSvc start= disabled

echo Disabling Windows Presentation Foundation Font Cache 3.0.0.0...
sc stop FontCache3.0.0.0
sc config FontCache3.0.0.0 start= disabled

echo Disabling Windows Push Notifications System Service...
sc stop WpnService
sc config WpnService start= disabled

echo Disabling Windows Perception Simulation Service...
sc stop perceptionsimulation
sc config perceptionsimulation start= disabled

echo Disabling Windows Perception Service...
sc stop spectrum
sc config spectrum start= disabled

echo Disabling Windows Remote Management (WS-Management)...
sc stop WinRM
sc config WinRM start= disabled

echo Disabling Windows Search...
sc stop WSearch
sc config WSearch start= disabled

echo Disabling Windows Security Service...
sc stop SecurityHealthService
sc config SecurityHealthService start= disabled

echo Disabling Windows Time...
sc stop W32Time
sc config W32Time start= disabled

echo Disabling Windows Update...
sc stop wuauserv
sc config wuauserv start= disabled

echo Disabling Windows Update Medic Service...
sc stop WaaSMedicSvc
sc config WaaSMedicSvc start= disabled

echo Disabling Workstation...
sc stop LanmanWorkstation
sc config LanmanWorkstation start= disabled

echo Disabling Xbox Accessory Management Service...
sc stop XboxGipSvc
sc config XboxGipSvc start= disabled

echo Disabling Xbox Game Monitoring...
sc stop xbgm
sc config xbgm start= disabled

echo Disabling Xbox Live Auth Manager...
sc stop XblAuthManager
sc config XblAuthManager start= disabled

echo Disabling Xbox Live Game Save...
sc stop XblGameSave
sc config XblGameSave start= disabled

echo Disabling Xbox Live Networking Service...
sc stop XboxNetApiSvc
sc config XboxNetApiSvc start= disabled

echo #Disable - Bluetooth User Support Service_XXXXX
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v Start /t REG_DWORD /d 00000004 /f

echo #Disable - Connected Devices Platform User Service_XXXXX
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v Start /t REG_DWORD /d 00000004 /f

echo #Disable - CaptureService_XXXXX
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CaptureService" /v Start /t REG_DWORD /d 00000004 /f

echo #Disable - ConsentUX_XXXXX
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v Start /t REG_DWORD /d 00000004 /f

echo #Disable - Contact Data_XXXXX
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v Start /t REG_DWORD /d 00000004 /f

echo #Disable - DevicePicker_XXXXX
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc" /v Start /t REG_DWORD /d 00000004 /f

echo #Disable - DevicesFlow_XXXXX
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v Start /t REG_DWORD /d 00000004 /f

echo #Disable - GameDVR and Broadcast User Service_XXXXX
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v Start /t REG_DWORD /d 00000004 /f

echo #Disable - MessagingService_XXXXX
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MessagingService" /v Start /t REG_DWORD /d 00000004 /f

echo #Disable - PrintWorkflow_XXXXX
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v Start /t REG_DWORD /d 00000004 /f

echo #Disable - Sync Host_XXXXX
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\OneSyncSvc" /v Start /t REG_DWORD /d 00000004 /f

echo #Disable - User Data Access_XXXXX
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v Start /t REG_DWORD /d 00000004 /f

echo #Disable - User Data Storage_XXXXX
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v Start /t REG_DWORD /d 00000004 /f

echo #Disable - Windows Push Notifications User Service_XXXXX
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WpnUserService" /v Start /t REG_DWORD /d 00000004 /f

:: smouth
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\rdyboost\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\intelppm\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\pci\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdhid\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NdisWan\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\EhStorClass\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\HDAudBus\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\partmgr\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\ACPI\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\acpipagr\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\BasicDisplay\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\BasicRender\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\CompositeBus\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dc1-controller\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\intelpep\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\MEIx64\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Monitor\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\msisadrv\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NdisVirtualBus\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvModuleTracker\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\storahci\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\umbus\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\USBXHCI\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\vdrvroot\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\vwifibus\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WpdUpFItr\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WUDFWpdFs\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xinputhid\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /F /V "HwSchMode" /T REG_DWORD /d "2"
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /F /V "Win32PrioritySeparation" /T REG_DWORD /d "26"
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MMCSS" /F /V "Start" /T REG_DWORD /d 4
:: secret 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "Class" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DoNotHoldNicBuffers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "EAFModules" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions" /t REG_BINARY /d "000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d "000222000000000000000000000000000000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableAllClockGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDMACopy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVCNPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_MCLKStutterModeThreshold" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StutterMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\943c8cb6-6f93-4227-ad87-e9a3feec08d1" /v "Attributes" /t REG_DWORD /d "2" /f
for /f %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /s /f "Scaling"^| findstr "HKEY"') do reg.exe add "%%i" /v "Scaling" /t REG_DWORD /d "1" /f >nul 2>&1
cls
goto tweaksmenu
::----------------------------------------
: SSDHDD
cls
color D
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                             
echo.                          :::::::::  ::::::::::     :::     :::::::::  
echo.                          :+:    :+: :+:          :+: :+:   :+:    :+: 
echo.                          +:+    +:+ +:+         +:+   +:+  +:+    +:+ 
echo.                          +#++:++#:  +#++:++#   +#++:++#++: +#++:++#+  
echo.                          +#+    +#+ +#+        +#+     +#+ +#+        
echo.                          #+#    #+# #+#        #+#     #+# #+#        
echo.                          ###    ### ########## ###     ### ###                      
echo.                                         
echo                    %COL%[97m[ 1 ] SSD                   [ 2 ] HDD

set /p choice=" Choice > "
if "%choice%"=="1" goto SSD
if "%choice%"=="2" goto HDD
::-----------------------------------------------------------------------------------------------------------
: SSD
cls
fsutil behavior set disableLastAccess 0
fsutil behavior set disable8dot3 1 
cls
REG ADD "%%a" /F /V "EnableHIPM" /T REG_DWORD /d 0 >NUL 2>&1
REG ADD "%%a" /F /V "EnableDIPM" /T REG_DWORD /d 0 >NUL 2>&1
REG ADD "%%a" /F /V "EnableHDDParking" /T REG_DWORD /d 0 >NUL 2>&1
SET STR=!STR:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\=!
REG ADD "%%a" /F /V "IoLatencyCap" /T REG_DWORD /d 0 >NUL 2>&1
SET STR=!STR:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\=!
SET STR=!STR:\Parameters=!
fsutil behavior set disableLastAccess 1
fsutil behavior set disable8dot3 1 
fsutil behavior set disableLastAccess 0
fsutil behavior set disable8dot3 1 
cls
goto tweaksmenu
::------------------------------------------------------------------------------
: HDD
cls
fsutil behavior set disableLastAccess 1
fsutil behavior set disable8dot3 1 
cls
REG ADD "%%a" /F /V "EnableHIPM" /T REG_DWORD /d 0 >NUL 2>&1
REG ADD "%%a" /F /V "EnableDIPM" /T REG_DWORD /d 0 >NUL 2>&1
REG ADD "%%a" /F /V "EnableHDDParking" /T REG_DWORD /d 0 >NUL 2>&1
SET STR=!STR:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\=!
REG ADD "%%a" /F /V "IoLatencyCap" /T REG_DWORD /d 0 >NUL 2>&1
SET STR=!STR:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\=!
SET STR=!STR:\Parameters=!
fsutil behavior set disableLastAccess 1
fsutil behavior set disable8dot3 1 
fsutil behavior set disableLastAccess 0
fsutil behavior set disable8dot3 1 
cls
goto tweaksmenu
::-------------------------------------------------
: PowerPlan
cls
powershell invoke-webrequest -uri "https://cdn.discordapp.com/attachments/1069951186842681394/1072865588650704966/ReapPlan.pow" -outfile "C:\Windows\ReapPlan.pow"

powercfg -import "C:\Windows\ReapPlan.pow" 77777777-7777-7777-7777-777777777777

powercfg -SETACTIVE "77777777-7777-7777-7777-777777777777"

echo Delete Balanced
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e

echo Delete High performance
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

echo Delete Power saver
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a

echo Delete GGOS
powercfg -delete 33333333-3333-3333-3333-333333333333

echo Disable hibernate
powercfg -h off

echo Disable HPET
bcdedit /deletevalue useplatformclock

echo Disable dynamic tick (laptop power savings)
bcdedit /set disabledynamictick yes

echo Disable synthetic timers
bcdedit /set useplatformtick yes

echo Boot timeout 10
bcdedit /timeout 10

echo Disable nx
bcdedit /set nx optout

echo Disable boot screen animation
bcdedit /set bootux disabled

echo Speed up boot times
bcdedit /set boottweaksmenupolicy standard

echo Remove windows login logo
bcdedit /set quietboot yes

echo Disable boot logo
bcdedit /set {globalsettings} custom:16000color 47 true

echo Disable spinning animation
bcdedit /set {globalsettings} custom:16000color 49 true

echo Disable boot messages
bcdedit /set {globalsettings} custom:16000color 48 true
cls
del /s /f /q C:\Windows\ReapPlan.pow
cls
goto tweaksmenu
::-----------------
:Browsers Tweaks
cls
color D
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                             
echo.                          :::::::::  ::::::::::     :::     :::::::::  
echo.                          :+:    :+: :+:          :+: :+:   :+:    :+: 
echo.                          +:+    +:+ +:+         +:+   +:+  +:+    +:+ 
echo.                          +#++:++#:  +#++:++#   +#++:++#++: +#++:++#+  
echo.                          +#+    +#+ +#+        +#+     +#+ +#+        
echo.                          #+#    #+# #+#        #+#     #+# #+#        
echo.                          ###    ### ########## ###     ### ###       
echo.           
echo                                   %COL%[97mselect your Browser
echo                                   %COL%[97m[ 1 ] Google
echo                                   %COL%[97m[ 2 ] Brave
echo                                   %COL%[97m[ 3 ] Firefox
echo                                   %COL%[97m[ b ] back
set input=
set /p "input=%WHITE%                                 >:                                             "
if /i %input% == 1 goto Google
if /i %input% == 2 goto Brave
if /i %input% == 3 goto Firefox
if /i %input% == b goto tweaksmenu

:Google
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{E11CE028-9A2B-451A-83BB-F7427263D7DB}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{746AFDD7-EE40-4019-8E0C-F25412563F59}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{746AFDD7-EE40-4019-8E0C-F25412563F59}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{E11CE028-9A2B-451A-83BB-F7427263D7DB}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\GoogleUpdateTaskMachineCore" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\GoogleUpdateTaskMachineUA" /f
reg delete "HKLM\Software\Microsoft\Active Setup\Installed Components\{8A69D345-D564-463c-AFF1-A69D9E530F96}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{950E9395-8BFF-4D96-8731-A3BD3F3C3ABD}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8EB03C8D-6422-494A-A237-B87232D89A24}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8EB03C8D-6422-494A-A237-B87232D89A24}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{950E9395-8BFF-4D96-8731-A3BD3F3C3ABD}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\GoogleUpdateTaskMachineCore" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\GoogleUpdateTaskMachineUA" /f
rd /s /q "%localappdata%\Google\Chrome\User Data\Crashpad\reports\" >nul 2>&1
rd /s /q "%localappdata%\Google\CrashReports\" >nul 2>&1
del /f /q "%localappdata%\Google\Software Reporter Tool\*.log" >nul 2>&1
Reg.exe add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "MetricsReportingEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ChromeCleanupReportingEnabled" /t REG_DWORD /d "0" /f
cls
goto tweaksmenu

:Brave
reg delete "HKLM\Software\Microsoft\Active Setup\Installed Components\{AFE6A462-C574-4B8A-AF43-4CC60DF4563B}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{56CA197F-543C-40DC-953C-B9C6196C92A5}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{0948A341-8E1E-479F-A667-6169E4D5CB2A}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{0948A341-8E1E-479F-A667-6169E4D5CB2A}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{56CA197F-543C-40DC-953C-B9C6196C92A5}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineCore" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineUA" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{781AE031-F26B-47E5-9257-00B9378E2439}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{5B7D273A-5382-4BC9-9F25-49D34A368FAA}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{5B7D273A-5382-4BC9-9F25-49D34A368FAA}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{781AE031-F26B-47E5-9257-00B9378E2439}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineCore" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineUA" /f
cls
goto tweaksmenu

:Firefox
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{88088F95-5F8F-4603-8303-B2881ED6D9FD}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8F3A56F1-410F-41E7-B9CE-4F12A1417CF1}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{88088F95-5F8F-4603-8303-B2881ED6D9FD}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8F3A56F1-410F-41E7-B9CE-4F12A1417CF1}" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Mozilla\Firefox Background Update 308046B0AF4A39CB" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Mozilla\Firefox Default Browser Agent 308046B0AF4A39CB" /f
del "C:\Program Files\Mozilla Firefox\crashreporter.exe" /f /q
del "C:\Program Files\Mozilla Firefox\crashreporter.ini" /f /q
del "C:\Program Files\Mozilla Firefox\maintenanceservice.exe" /f /q
del "C:\Program Files\Mozilla Firefox\maintenanceservice_installer.exe" /f /q
del "C:\Program Files\Mozilla Firefox\minidump-analyzer.exe" /f /q
del "C:\Program Files\Mozilla Firefox\pingsender.exe" /f /q
del "C:\Program Files\Mozilla Firefox\updater.exe" /f /q
cd /d "C:\Program Files\Mozilla Firefox"
del /f crash*.*
del /f maintenance*.*
del /f install.log
del /f minidump*.*
cls
goto tweaksmenu
::--------------------------------------------------------------------------------------------------------------------------------------
:Discord
cls
DEL "%HOMEPATH%\Desktop\Discord.ink" /F /Q
DEL "%HOMEPATH%\Desktop\Discord.ink - Shortcut" /F /Q
DEL "%HOMEPATH%\Desktop\Update.exe" /F /Q
DEL "%HOMEPATH%\Desktop\Update.exe - Shortcut" /F /Q
DEL "%HOMEPATH%\Desktop\Discord.exe" /F /Q
DEL "%HOMEPATH%\Desktop\Discord.exe - Shortcut" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\Update.exe" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\Squirrel.exe" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\Squirrel.exe" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-app-1.0.9007\Squirrel.exe" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\Squirrel.exe" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\SquirrelSetup.log" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\SquirrelSetup.log" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\SquirrelSetup.log" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-app-1.0.9007\SquirrelSetup.log" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\SquirrelSetup.log" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9001\SquirrelSetup.log" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9001\Squirrel.exe" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\SquirrelSetup.log" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\Squirrel.exe" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\SquirrelSetup.log" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\Squirrel.exe" /F /Q
DEL "%HOMEPATH%\appdata\Local\Discord\SquirrelSetup.log" /F /Q
DEL "%HOMEPATH%\appdata\Local\Discord\Discord_updater_r00000.log" /F /Q
DEL "%HOMEPATH%\appdata\Local\Discord\Discord_updater_r00001.log" /F /Q
DEL "%HOMEPATH%\appdata\Local\Discord\Discord_updater_rCURRENT.log" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\1.0.9001\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\1.0.9001\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\1.0.9007\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\1.0.9007\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_cloudsync"
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_cloudsync"
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_cloudsync"
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_cloudsync"
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_dispatch"
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_dispatch"
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_dispatch"
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_dispatch"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_krisp"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_krisp"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_krisp"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_krisp"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_cloudsync"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_dispatch"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_erlpack"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_game_utils"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_media"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_spellcheck"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_krisp"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_cloudsync-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_dispatch-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_erlpack-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_game_utils-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_media-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_spellcheck-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_krisp-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_cloudsync-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_dispatch-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_erlpack-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_game_utils-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_media-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_spellcheck-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_spellcheck-2"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_hook-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\swiftshader"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_overlay2"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_overlay2"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_overlay2"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\app-1.0.9007\modules\discord_overlay2"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_rpc"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_overlay2"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_rpc-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_overlay2-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_rpc-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9007\modules\discord_overlay2-1"
EL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\am.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ar.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\bg.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\bn.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ca.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\cs.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\da.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\de.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\el.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\en-GB.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\es.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\es-419.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\et.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\fa.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\fi.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\fil.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\fr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\gu.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\he.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\hi.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\hr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\hu.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\id.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\it.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ja.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\kn.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ko.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\lt.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\lv.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ml.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\mr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ms.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\nb.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\nl.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\pl.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\pt-br.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\pt-pt.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ro.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ru.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sk.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sl.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sv.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sw.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ta.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\te.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\th.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\tr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\uk.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\vi.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\zh-cn.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\zh-tw.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\am.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ar.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\bg.pak" /F /Q 
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\bn.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ca.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\cs.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\da.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\de.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\el.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\en-GB.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\es.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\es-419.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\et.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\fa.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\fi.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\fil.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\fr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\gu.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\he.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\hi.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\hr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\hu.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\id.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\it.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ja.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\kn.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ko.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\lt.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\lv.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ml.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\mr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ms.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\nb.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\nl.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\pl.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\pt-br.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\pt-pt.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ro.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ru.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sk.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sl.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sv.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\sw.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\ta.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\te.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\th.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\tr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\uk.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\vi.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\zh-cn.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9007\locales\zh-tw.pak" /F /Q
cls
goto tweaksmenu
::--------------------------------------------------------------------------------------------------------------------------------------
: aboutReapCTRL
cls
color 4
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.         
echo.                     :::     :::::::::   ::::::::  :::    ::: :::::::::::       
echo.                   :+: :+:   :+:    :+: :+:    :+: :+:    :+:     :+:         
echo.                  +:+   +:+  +:+    +:+ +:+    +:+ +:+    +:+     +:+        
echo.                 +#++:++#++: +#++:++#+  +#+    +:+ +#+    +:+     +#+        
echo.                 +#+     +#+ +#+    +#+ +#+    +#+ +#+    +#+     +#+          
echo.                 #+#     #+# #+#    #+# #+#    #+# #+#    #+#     #+#          
echo.                 ###     ### #########   ########   ########      ###    
echo.
echo                            %COL%[97mThis CTRL For Reap ( Made By Smach ) 
echo                            %COL%[97mimprove and boost Fps for games      
echo                                       [ b ] back 
set input=
set /p "input=                      >:                                         "
if /i %input% == b goto tweaksmenu              
::-------------------------------------------------
