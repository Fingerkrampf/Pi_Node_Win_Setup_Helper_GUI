#!/bin/bash

echo "Make sure iptables-legacy is used..."
update-alternatives --set iptables /usr/sbin/iptables-legacy
update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy

echo "Install iptables-persistent..."
apt update
apt install -y iptables-persistent

DEFAULT_INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -n1)
if [ -z "$DEFAULT_INTERFACE" ]; then
    echo "FEHLER: Could not find default network interface!"
    exit 1
fi
echo "Recognized standard interface: $DEFAULT_INTERFACE"

iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

iptables -F
iptables -t nat -F

echo "Setting up firewall rules..."

iptables -A INPUT -i "$DEFAULT_INTERFACE" -p udp --dport 51820 -j ACCEPT
iptables -A INPUT -p icmp -j ACCEPT
iptables -A INPUT -i "$DEFAULT_INTERFACE" -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -P INPUT DROP
iptables -A FORWARD -i wg0 -o "$DEFAULT_INTERFACE" -j ACCEPT
iptables -A FORWARD -i "$DEFAULT_INTERFACE" -o wg0 -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -t nat -A PREROUTING -i "$DEFAULT_INTERFACE" -p tcp -m multiport --dport 31400:31409 -j DNAT --to-destination 192.168.200.2
iptables -P FORWARD ACCEPT

echo '1' > /proc/sys/net/ipv4/ip_forward
sysctl -w net.ipv4/ip_forward=1 > /dev/null

echo "Save rules persistently..."
netfilter-persistent save

echo "Restart WireGuard..."
wg-quick down wg0
wg-quick up wg0
