:: Windows Notification Killer
:: Written by Joshua Alto

@echo off

::SETTINGS
set DisableSecurityAndMaintenance=0
set DisableOneDrive=0
set DisablePhotos=0
set DisableStore=0
set DisableSuggested=0
set DisableCalendar=0
set DisableCortana=0
set DisableMail=0
set DisableEdge=0
set DisableAudio=0
set DisableAutoplay=0
set DisableBatterySaver=0
set DisableBitlocker=0
set DisableNews=0
set DisableSettings=0
set DisableTablet=0
set DisableVPN=0
set DisableWindowsHello=0
set DisableWireless=0

:: Conditional statements to enable or disable commands
if %DisableSecurityAndMaintenance%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.SecurityAndMaintenance /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.SecurityAndMaintenance /T REG_DWORD /D 1 /F
)

if %DisableOneDrive%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Microsoft.SkyDrive.Desktop /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Microsoft.SkyDrive.Desktop /T REG_DWORD /D 1 /F
)

if %DisablePhotos%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Microsoft.Windows.Photos_8wekyb3d8bbwe!App /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Microsoft.Windows.Photos_8wekyb3d8bbwe!App /T REG_DWORD /D 1 /F
)

if %DisableStore%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V WindowsStore_8wekyb3d8bbwe!App /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V WindowsStore_8wekyb3d8bbwe!App /T REG_DWORD /D 1 /F
)

if %DisableSuggested%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.Suggested /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.Suggested /T REG_DWORD /D 1 /F
)

if %DisableCalendar%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.calendar /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.calendar /T REG_DWORD /D 1 /F
)

if %DisableCortana%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Microsoft.Windows.Cortana_cw5n1h2txyewy!CortanaUI /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Microsoft.Windows.Cortana_cw5n1h2txyewy!CortanaUI /T REG_DWORD /D 1 /F
)

if %DisableMail%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.mail /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.mail /T REG_DWORD /D 1 /F
)

if %DisableEdge%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge /T REG_DWORD /D 1 /F
)

if %DisableAudio%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.AudioTroubleshooter /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.AudioTroubleshooter /T REG_DWORD /D 1 /F
)

if %DisableAutoplay%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.AutoPlay /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.AutoPlay /T REG_DWORD /D 1 /F
)

if %DisableBatterySaver%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.BackgroundAccess /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.BackgroundAccess /T REG_DWORD /D 1 /F
)

if %DisableBitlocker%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.BdeUnlock /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.BdeUnlock /T REG_DWORD /D 1 /F
)

if %DisableNews%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Microsoft.BingNews_8wekyb3d8bbwe!AppexNews /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Microsoft.BingNews_8wekyb3d8bbwe!AppexNews /T REG_DWORD /D 1 /F
)

if %DisableSettings%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel /T REG_DWORD /D 1 /F
)

if %DisableTablet%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.System.Continuum /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.System.Continuum /T REG_DWORD /D 1 /F
)

if %DisableVPN%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.RasToastNotifier /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.RasToastNotifier /T REG_DWORD /D 1 /F
)

if %DisableWindowsHello%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.HelloFace /T REG_DWORD /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.HelloFace /T REG_DWORD /D 1 /F
)

if %DisableWireless%==1 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.WiFiNetworkManager /T REG_Dword /D 0 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V Windows.SystemToast.WiFiNetworkManager /T REG_Dword /D 1 /F
)
