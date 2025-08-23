@echo off
setlocal

:: =======================================================================
:: ==     Hotfix Installer for Pi Node Win Setup Helper GUI (v1.02)     ==
:: =======================================================================

echo IMPORTANT: Only run with Wireguard connection deactivated!
echo WICHTIG: Nur mit deaktivierter Wireguard-Verbindung ausfuehren!


:getIp
set "SERVER_IP="
set /p "SERVER_IP=Linux Server IP: "
if not defined SERVER_IP (
    echo Invalid input. Please try again.
    goto getIp
)

set SSH_OPTIONS=-o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=NUL"

scp %SSH_OPTIONS% install-iptables.sh install-rules.sh root@%SERVER_IP%:/tmp/

if %errorlevel% neq 0 (
    echo
    echo ERROR: Uploading the scripts failed.
    echo Please check the IP address, your network connection
    echo and make sure that SSH access is allowed for 'root'.
    pause
    exit /b 1
)

echo Upload successful!

ssh %SSH_OPTIONS% root@%SERVER_IP% "sed -i 's/\r$//' /tmp/install-iptables.sh /tmp/install-rules.sh && bash /tmp/install-iptables.sh && bash /tmp/install-rules.sh && rm /tmp/install-iptables.sh /tmp/install-rules.sh"

if %errorlevel% neq 0 (
    echo
    echo ERROR: The execution of the scripts on the server failed.
    echo Please check the SSH connection and the server logs.
    pause
    exit /b 1
)

echo =======================================================================
echo ==             HOTFIX V1.02 Installation successful!                ==
echo =======================================================================
echo ENGLISH
echo The firewall rules have been updated and WireGuard has been restarted.
echo You can now close this window and activate the Wireguard Client connection.
echo DEUTSCH
echo Die Firewall-Regeln wurden aktualisiert und WireGuard wurde neu gestartet.
echo Sie koennen dieses Fenster nun schliessen und die Wireguard Client Verbindung aktivieren.
