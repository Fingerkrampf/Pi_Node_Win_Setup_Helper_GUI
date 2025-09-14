# Pi Node Win Setup Helper GUI

![Screenshot](screenshot/Screenshot_PiNodeWindowsSetupHelperGUI.png)

<details>
<summary><strong>English Version</strong> (Click to expand)</summary>
<br>

A GUI tool to simplify the setup of a Pi Network Node on Windows. This tool automates the installation and configuration of the necessary components.

---

### ✨ Features

The tool provides a simple user interface to perform the following tasks:

* **WSL2 Features:** Activates the necessary Windows Features for the Windows Subsystem for Linux (WSL2).
* **Hibernate Mode:** Checks if hibernate mode is active, which can interfere with the continuous operation of the node.
* **Docker Desktop:** Installs the latest version of Docker Desktop and sets it to start automatically.
* **Pi Node Software:** Installs the Pi Node Windows application and configures it to start automatically.
* **Firewall Rules:** Automatically creates the required inbound and outbound firewall rules for ports `31400` to `31409`.
* **WireGuard Client:** Installs the WireGuard VPN client.
* **WireGuard Keys:** Generates local key pairs for a secure VPN connection.
* **WireGuard Server Setup:** Automatically configures a WireGuard peer on a Linux server via SSH for a seamless VPN connection.
    * ⚠️ **Note:** The UDP port 51820 must be opened in the firewall of the server provider, which is usually done via their web interface.
    * ⚠️ **Note:** The TCP ports 31400-31409 must be opened in the firewall of the server provider, which is usually done via their web interface.

---

### 💻 System Requirements

* **Operating System:** Windows 11
    * ⚠️ **Note:** This script has been **tested exclusively on Windows 11**. It may work on Windows 10, but this has not been verified and is not guaranteed.
* **Installation Type:** For the script to function correctly, a **fresh, full, and genuine Windows installation** is required. The script may not work properly on modified or "Lite" versions of Windows, as essential system components could be missing.
* **Server:** An Ubuntu server with a public IPv4 address and root access must be available.
---

### 🚀 Usage

1.  Download the entire ZIP archive, unzip it and start the file 'Pi_Node_Win_Setup_Helper_GUI.exe'.
2.  Run the file as an administrator. The tool will attempt to request these permissions itself if they are missing.
3.  The user interface displays the status of each component:
    * ✅ **Green Checkmark:** The component is already correctly installed or configured.
    * ❌ **Red Cross:** The component is missing or needs to be configured.
4.  Click the corresponding buttons to start each action.
5.  Optionally, check the changelog for any hotfix .bat files and run them as an administrator after using the tool.

---

### ⚠️ Disclaimer

Use of this tool is at your **own risk**. It performs system-level changes (e.g., software installation, activation of Windows features, firewall rules). The author assumes no liability for any potential problems or damage to your system.

---

### ✍️ Author & Contact

* **Author:** Fingerkrampf
* **Contact:** via Telegram at [PiNetzwerkDeutschland](https://t.me/PiNetzwerkDeutschland)

---

### 📜 License

This project is licensed under the **MIT License**.

Copyright (c) 2025 Fingerkrampf

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

</details>

<br>

<details>
<summary><strong>Deutsche Version</strong> (Klicken zum Ausklappen)</summary>
<br>

Ein GUI-Tool zur Vereinfachung der Einrichtung eines Pi Network Nodes unter Windows. Dieses Tool automatisiert die Installation und Konfiguration der notwendigen Komponenten.

---

### ✨ Features

Das Tool bietet eine einfache Benutzeroberfläche, um die folgenden Aufgaben auszuführen:

* **WSL2-Features:** Aktiviert die notwendigen Windows-Features für das Windows Subsystem for Linux (WSL2).
* **Ruhezustand:** Überprüft, ob der Ruhezustand aktiv ist, was für den Dauerbetrieb des Nodes hinderlich sein kann.
* **Docker Desktop:** Installiert die neueste Version von Docker Desktop und richtet den Autostart ein.
* **Pi Node Software:** Installiert die Pi Node Windows-Anwendung und konfiguriert den Autostart.
* **Firewall-Regeln:** Erstellt automatisch die benötigten eingehenden und ausgehenden Firewall-Regeln für die Ports `31400` bis `31409`.
* **WireGuard Client:** Installiert den WireGuard VPN-Client.
* **WireGuard Schlüssel:** Generiert lokale Schlüsselpaare für eine sichere VPN-Verbindung.
* **WireGuard Server-Setup:** Konfiguriert automatisch einen WireGuard-Peer auf einem Linux-Server via SSH für eine nahtlose VPN-Verbindung.
* **Server:** Es muss ein Ubuntu Server mit einer öffentlichen IPv4-Adresse zur Verfügung stehen.
    * ⚠️ **Hinweis:** Der UDP-Port 51820 muss in der Firewall des Serveranbieters (meist über deren Webinterface) freigegeben werden.
    * ⚠️ **Hinweis:** Die TCP-Ports 31400-31409 müssen in der Firewall des Serveranbieters (meist über deren Webinterface) freigegeben werden.
---

### 💻 Systemanforderungen

* **Betriebssystem:** Windows 11
    * ⚠️ **Hinweis:** Das Skript wurde **ausschließlich unter Windows 11 getestet**. Es ist möglich, dass es auch unter Windows 10 funktioniert, dies wurde jedoch nicht überprüft und wird nicht garantiert.
* **Installationsart:** Für eine einwandfreie Funktion wird eine **frische, vollwertige und originale Windows-Installation** vorausgesetzt. Das Skript funktioniert möglicherweise nicht ordnungsgemäß auf modifizierten oder "Lite"-Versionen von Windows, da wichtige Systemkomponenten fehlen könnten.
* **Server:** Ein Ubuntu-Server mit einer öffentlichen IPv4-Adresse und Root-Zugriff muss verfügbar sein.

---

### 🚀 Benutzung

1.  Downloade das gesamte ZIP Archive, entpacke es und starte die Datei `Pi_Node_Win_Setup_Helper_GUI.exe`.
2.  Führe die Datei als Administrator aus. Das Tool wird versuchen, die Berechtigungen selbst anzufordern, falls sie fehlen.
3.  Die Benutzeroberfläche zeigt den Status der einzelnen Komponenten an:
    * ✅ **Grüner Haken:** Die Komponente ist bereits korrekt installiert oder konfiguriert.
    * ❌ **Rotes Kreuz:** Die Komponente fehlt oder muss konfiguriert werden.
4.  Klicke auf die entsprechenden Schaltflächen, um die jeweilige Aktion zu starten.
5.  Prüfe optional in den Changelog auf eventuelle Hotfix-.bat-Dateien und führe diese am Ende der Nutzung des Tools als Administrator aus.

---

### ⚠️ Haftungsausschluss

Die Nutzung dieses Tools erfolgt auf **eigene Gefahr**. Es werden systemnahe Änderungen vorgenommen (z.B. Installation von Software, Aktivierung von Windows-Features, Firewall-Regeln). Der Autor übernimmt keine Haftung für eventuell auftretende Probleme oder Schäden am System.

---

### ✍️ Autor & Kontakt

* **Autor:** Fingerkrampf
* **Kontakt:** via Telegram bei [PiNetzwerkDeutschland](https://t.me/PiNetzwerkDeutschland)

---

### 📜 Lizenz

Dieses Projekt steht unter der **MIT License**.

Copyright (c) 2025 Fingerkrampf

Hiermit wird allen Personen, die eine Kopie dieser Software und der zugehörigen Dokumentationsdateien (die „Software“) erhalten, unentgeltlich die Erlaubnis erteilt, die Software uneingeschränkt zu nutzen, insbesondere das Recht, sie zu verwenden, zu kopieren, zu ändern, zusammenzufügen, zu veröffentlichen, zu verteilen, unterzulizenzieren und/oder Kopien der Software zu verkaufen, und diese Rechte unter den folgenden Bedingungen anderen Personen zu übertragen:

Der obige Urheberrechtsvermerk und dieser Genehmigungsvermerk müssen in allen Kopien oder wesentlichen Teilen der Software enthalten sein.

Die Software wird „so wie sie ist“ und ohne jegliche ausdrückliche oder stillschweigende Gewährleistung bereitgestellt, insbesondere für die Gewährleistung der Marktgängigkeit, der Eignung für einen bestimmten Zweck und der Nichtverletzung von Rechten Dritter. DIE AUTOREN ODER URHEBERRECHTSINHABER SIND IN KEINEM FALL FÜR JEGLICHE ANSPRÜCHE, SCHÄDEN ODER ANDERE VERBINDLICHKEITEN VERANTWORTLICH, OB AUS VERTRAG, UNERLAUBTER HANDLUNG ODER ANDERWEITIG, DIE AUS DER SOFTWARE ODER DER VERWENDUNG ODER ANDEREN UMGANG MIT DER SOFTWARE ENTSTEHEN, DAMIT IN VERBINDUNG STEHEN.

</details>
