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

echo.
echo =======================================================================
echo ==    Verbinde zum Server und fuehre Hotfix-Skripte aus...           ==
echo =======================================================================
echo.

(
    echo DEBIAN_FRONTEND=noninteractive apt-get update
    echo DEBIAN_FRONTEND=noninteractive apt-get install -y iptables-persistent
    echo.
    echo echo "Make sure iptables-legacy is used..."
    echo update-alternatives --set iptables /usr/sbin/iptables-legacy
    echo update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy
    echo.
    echo DEFAULT_INTERFACE=$(ip route ^| grep '^default' ^| awk '{print $5}' ^| head -n1)
    echo if [ -z "$DEFAULT_INTERFACE" ]; then
    echo     echo "FEHLER: Could not find default network interface!"
    echo     exit 1
    echo fi
    echo echo "Recognized standard interface: $DEFAULT_INTERFACE"
    echo.
    echo iptables -P INPUT ACCEPT
    echo iptables -P FORWARD ACCEPT
    echo iptables -P OUTPUT ACCEPT
    echo.
    echo iptables -F
    echo iptables -t nat -F
    echo.
    echo echo "Setting up firewall rules..."
    echo.
    echo iptables -A INPUT -i "$DEFAULT_INTERFACE" -p udp --dport 51820 -j ACCEPT
    echo iptables -A INPUT -p icmp -j ACCEPT
    echo iptables -A INPUT -i "$DEFAULT_INTERFACE" -p tcp --dport 22 -j ACCEPT
    echo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
    echo iptables -P INPUT DROP
    echo iptables -A FORWARD -i wg0 -o "$DEFAULT_INTERFACE" -j ACCEPT
    echo iptables -A FORWARD -i "$DEFAULT_INTERFACE" -o wg0 -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
    echo iptables -t nat -A PREROUTING -i "$DEFAULT_INTERFACE" -p tcp -m multiport --dport 31400:31409 -j DNAT --to-destination 192.168.200.2
    echo iptables -P FORWARD ACCEPT
    echo.
    echo echo '1' ^> /proc/sys/net/ipv4/ip_forward
    echo sysctl -w net.ipv4/ip_forward=1 ^> /dev/null
    echo.
    echo echo "Save rules persistently..."
    echo netfilter-persistent save
    echo.
    echo echo "Restart WireGuard..."
    echo wg-quick down wg0
    echo wg-quick up wg0
) | ssh %SSH_OPTIONS% root@%SERVER_IP% "bash"

if %errorlevel% neq 0 (
    echo.
    echo ERROR: The execution of the scripts on the server failed.
    echo Please check the IP address, your network connection,
    echo the SSH connection and the server logs.
    pause
    exit /b 1
)

echo.
echo =======================================================================
echo ==             HOTFIX V1.02 Installation successful!                 ==
echo =======================================================================
echo ENGLISH
echo The firewall rules have been updated and WireGuard has been restarted.
echo You can now close this window and activate the Wireguard Client connection.
echo.
echo DEUTSCH
echo Die Firewall-Regeln wurden aktualisiert und WireGuard wurde neu gestartet.
echo Sie koennen dieses Fenster nun schliessen und die Wireguard Client Verbindung aktivieren.
echo.
pause
exit /b 0