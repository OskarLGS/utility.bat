@ECHO OFF

goto check_Permissions

:check_Permissions
    echo This script must run as admin.
    
    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Everything seems to be ok.
	GOTO MENU
    ) else (
        echo Error: Permissions inadequate.
	echo You must right click on this script and "Run as Admin"
	color 0C
    )
    
    pause >nul

CLS
:MENU                                                                                    
ECHO.
ECHO ..................................................
ECHO PRESS 1, 2 OR 3 to select your task, or 4 to EXIT.
ECHO ..................................................
ECHO.
ECHO 1 - Check system files integrity
ECHO.
ECHO 2 - Check system image status
ECHO 3 - Scan system image status
ECHO 4 - Restore system image status
ECHO.
ECHO 5 - Repair main drive filesystem
ECHO.
ECHO 6 - Repair printer issues
ECHO.
ECHO 7 - System Info
ECHO.
ECHO 8 - Battery Report
ECHO.
ECHO 9 - Run 1+2+3+4+5 (Recommended for maintenance or fix issues)
ECHO.
ECHO 0 - Exit
ECHO.

SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO SFC-SCAN
IF %M%==2 GOTO DISM-CHECK
IF %M%==3 GOTO DISM-SCAN
IF %M%==4 GOTO DISM-RESTORE
IF %M%==5 GOTO CHKDSK
IF %M%==6 GOTO PRINTERS
IF %M%==7 GOTO BATTERY
IF %M%==7 GOTO SYSINFO
IF %M%==9 GOTO ALL

:SFC-SCAN
sfc /scannow
GOTO MENU

:DISM-CHECK
DISM /Online /Cleanup-Image /CheckHealth
GOTO MENU

:DISM-SCAN
DISM /Online /Cleanup-Image /ScanHealth
GOTO MENU

:DISM-RESTORE
DISM /Online /Cleanup-Image /RestoreHealth
GOTO MENU

:CHKDSK
chkdsk c: /f /r
GOTO MENU

:PRINTERS
net stop spooler
del %systemroot%\System32\spool\printers\* /Q
net start spooler
GOTO MENU

:BATTERY
powercfg /batteryreport
GOTO MENU

:SYSINFO
systeminfo
GOTO MENU

:ALL
sfc /scannow
DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /RestoreHealth
chkdsk c: /f /r
GOTO MENU

PAUSE