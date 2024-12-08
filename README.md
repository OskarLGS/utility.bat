# 📟 utility.bat
utility.bat is a Batch script that contains commands to fix common issues on Windows.

## 🖥️ How to run it

You have two options for running the script, both of which work the same way.

1. Download the utility.bat file to your Windows computer, right click on it, and click on “Run as Admin”.

2. Open cmd from the start menu or using the shortcut Win+R, copy and paste the following command.

`powershell -Command Invoke-WebRequest -Uri https://github.com/OskarLGS/utility.bat/raw/refs/heads/main/utility.bat -OutFile %TEMP%\utility.bat && %TEMP%\utility.bat`

This command downloads the script to the temporary folder and executes it.

## ❓ What does each option do?

1. Check system files integrity

Checks the integrity of the Windows file system and repairs it if necessary.

2. Check system image status

Checks if a problem has been detected in the system image

3. Scan system image status

Scan if there is a problem in the system image

4. Restore system image status

Restore the system image

5. Repair main drive filesystem

Checks the file system of the main drive and repairs it if needed

6. 🖨️ Repair printer issues

Stops the print queue service, deletes all active jobs and restarts the service.
Useful in cases where the print queue shows many pending jobs and is stuck.

7. 🖥️ System Info

Displays system information

8. 🔋 Battery Report

Creates a system battery report showing the original capacity and the current capacity to check for degradation.

9. 🧹 Run 1+2+3+4+5 (Recommended for maintenance or fix issues)

Execute commands 1 through 5, appropriate if you are performing maintenance on your system or trying to troubleshoot a problem.

## 🔒 Is this script secure?

Nothing is certain, and if you are trying to fix a problem I can't guarantee that it will be fixed or that it won't get worse.

The only thing I can tell you is that the script uses simple Windows cmd commands and is open source, you can see it all yourself.
