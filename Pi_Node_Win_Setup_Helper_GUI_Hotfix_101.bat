@echo off
net session >nul 2>&1 || (echo Bitte als Administrator ausführen! & pause & exit)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Pi Network" /t REG_SZ /d "" /f
echo Pi Network Autostart-Eintrag erfolgreich deaktiviert!
timeout /t 2 /nobreak >nul