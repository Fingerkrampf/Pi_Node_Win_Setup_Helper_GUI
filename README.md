# Pi Node Win Setup Helper GUI

<div align="center">
  <img src="https://github.com/Fingerkrampf/Pi_Node_Win_Setup_Helper_GUI/blob/main/screenshot/Screenshot%202025-10-26%20123425.png" width="45%" style="max-width: "350px"; height: auto;" alt="Screenshot 1">
  <img src="https://github.com/Fingerkrampf/Pi_Node_Win_Setup_Helper_GUI/blob/main/screenshot/Screenshot%202025-10-26%20123631.png" width="45%" style="max-width: "350px"; height: auto;" alt="Screenshot 2">
</div>

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

* **Operating System:** Windows 11 - latest version
    * ⚠️ **Note:** This script has been **tested exclusively on Windows 11**. It may work on Windows 10, but this has not been verified and is not guaranteed.
* **Installation Type:** For the script to function correctly, a **fresh, full, and genuine Windows installation** is required. The script may not work properly on modified or "Lite" versions of Windows, as essential system components could be missing.
* **Server:** An Debian-based (i.e. Ubuntu) server with a public IPv4 address and root access must be available

---

### 🚀 Usage

1.  Download the released file 'Pi_Node_Win_Setup_Helper_GUI_v2.0.exe'.
2.  Run the file as an administrator. The tool will attempt to request these permissions itself if they are missing.
3.  The user interface displays the status of each component:
    * ✅ **Green Checkmark:** The component is already correctly installed or configured.
    * ❌ **Red Cross:** The component is missing or needs to be configured.
4.  Click the corresponding buttons to start each action.
   
---

### 📹 Youtube Howto Video:
https://youtu.be/33ltH5KaADg?feature=shared

---

### ⚠️ Disclaimer

Use of this tool is at your **own risk**. It performs system-level changes (e.g., software installation, activation of Windows features, firewall rules). The author assumes no liability for any potential problems or damage to your system.

---

### ✍️ Author & Contact

* **Author:** Fingerkrampf
* **Contact:** via Github

---

### 📜 License (GPLv3)

This project is licensed under the GNU General Public License Version 3 (GPLv3) or (at your option) any later version.
Key Principles
The GPLv3 is a copyleft license. This means it ensures the software remains free for all its users.
You have the freedom to:

    Run the program for any purpose.

    Study and change the program (as the source code is accessible).

    Redistribute copies.

    Distribute your modified versions.

You have the responsibility (Copyleft):

    If you convey (distribute) the program or a modified version based upon it, you must make the source code available.

    The distributed version must also be licensed under the GPLv3 (or a later version). You may not restrict the software's freedom.

Copyright Notice
Copyright (c) 2025 Fingerkrampf

Disclaimer of Warranty
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Full License Text
You should have received a copy of the GNU General Public License along with this program. If not, see https://www.gnu.org/licenses/.

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
* **Server:** Es muss ein Debian-basierter (z.B. Ubuntu) Server mit einer öffentlichen IPv4-Adresse zur Verfügung stehen.
    * ⚠️ **Hinweis:** Der UDP-Port 51820 muss in der Firewall des Serveranbieters (meist über deren Webinterface) freigegeben werden.
    * ⚠️ **Hinweis:** Die TCP-Ports 31400-31409 müssen in der Firewall des Serveranbieters (meist über deren Webinterface) freigegeben werden.
---

### 💻 Systemanforderungen

* **Betriebssystem:** Windows 11 - aktuellste Version
    * ⚠️ **Hinweis:** Das Skript wurde **ausschließlich unter Windows 11 getestet**. Es ist möglich, dass es auch unter Windows 10 funktioniert, dies wurde jedoch nicht überprüft und wird nicht garantiert.
* **Installationsart:** Für eine einwandfreie Funktion wird eine **frische, vollwertige und originale Windows-Installation** vorausgesetzt. Das Skript funktioniert möglicherweise nicht ordnungsgemäß auf modifizierten oder "Lite"-Versionen von Windows, da wichtige Systemkomponenten fehlen könnten.
* **Server:** Ein Debian-basierter (z.B. Ubuntu) Server mit einer öffentlichen IPv4-Adresse und Root-Zugriff muss verfügbar sein.

---

### 🚀 Benutzung

1.  Downloade die veröffentlichte Datei 'Pi_Node_Win_Setup_Helper_GUI_v2.0.exe'.
2.  Führe die Datei als Administrator aus. Das Tool wird versuchen, die Berechtigungen selbst anzufordern, falls sie fehlen.
3.  Die Benutzeroberfläche zeigt den Status der einzelnen Komponenten an:
    * ✅ **Grüner Haken:** Die Komponente ist bereits korrekt installiert oder konfiguriert.
    * ❌ **Rotes Kreuz:** Die Komponente fehlt oder muss konfiguriert werden.
4.  Klicke auf die entsprechenden Schaltflächen, um die jeweilige Aktion zu starten.

---

### 📹 Youtube Howto Video:
https://youtu.be/YVXERVwJiTI?feature=shared

--

### ⚠️ Haftungsausschluss

Die Nutzung dieses Tools erfolgt auf **eigene Gefahr**. Es werden systemnahe Änderungen vorgenommen (z.B. Installation von Software, Aktivierung von Windows-Features, Firewall-Regeln). Der Autor übernimmt keine Haftung für eventuell auftretende Probleme oder Schäden am System.

---

### ✍️ Autor & Kontakt

* **Autor:** Fingerkrampf
* **Kontakt:** via Github

---

📜 Lizenz (GPLv3)

Dieses Projekt steht unter der GNU General Public License Version 3 (GPLv3) oder (nach Ihrer Wahl) jeder späteren Version.
Wichtigste Punkte
Die GPLv3 ist eine Copyleft-Lizenz. Das bedeutet, sie gewährleistet, dass die Software für alle Benutzer frei bleibt.
Sie haben die Freiheit:

    Das Programm für jeden Zweck auszuführen.

    Das Programm zu studieren und zu ändern (da der Quellcode zugänglich ist).

    Kopien weiterzuverbreiten.

    Ihre geänderten Versionen zu verbreiten.

Sie haben die Verantwortung (Copyleft):

    Wenn Sie das Programm oder eine darauf basierende, modifizierte Version verbreiten, müssen Sie den Quellcode zur Verfügung stellen.

    Die verbreitete Version muss ebenfalls unter der GPLv3 (oder einer späteren Version) lizenziert werden. Sie können die Freiheit der Software nicht einschränken.

Copyright-Hinweis
Copyright (c) 2025 Fingerkrampf

Gewährleistungsausschluss
Dieses Programm wird in der Hoffnung bereitgestellt, dass es nützlich sein wird, jedoch OHNE JEDE GEWÄHRLEISTUNG; sogar ohne die implizite Gewährleistung der MARKTFÄHIGKEIT oder der EIGNUNG FÜR EINEN BESTIMMTEN ZWECK.
Vollständiger Lizenztext

Sie sollten eine vollständige Kopie der GNU General Public License zusammen mit diesem Programm erhalten haben. Ist dies nicht der Fall, siehe https://www.gnu.org/licenses/.
</details>
