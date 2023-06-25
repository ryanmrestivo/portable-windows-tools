# If this script isn't working, you should:
# Open PowerShell at this file location as admin
# Set-ExecutionPolicy unrestricted
# confirm
# ./choco-setup.ps1

# NOTE:  Run this script before doing any hardening or these installs will take substantially longer

Set-ExecutionPolicy unrestricted -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
# refreshenv
	refreshenv

#Choco Applications
#https://chocolatey.org/install
    choco install 7zip.install
    choco install adobereader
#	 choco install cmake
	choco install cmder
    choco install curl
    choco install discord.install
	choco install docker-desktop
    choco install dotnetfx
	choco install ecm
    choco install everything
    choco install firefox
    choco install geforce-experience
    choco install gh
    choco install git.install
    choco install github-desktop
    choco install git-lfs
#	 choco install golang
    choco install googlechrome
    choco install greenshot
    choco install hosts.editor
    choco install javaruntime
    choco install jdk11
    choco install jre8
    choco install lockhunter
    choco install microsoft-edge
#	 choco install mingw
    choco install nmap
    choco install nodejs.install
    choco install nomacs
    choco install notepadplusplus.install
#	choco install ntop.portable
	choco install onionshare
    choco install openjdk 
    choco install openjdk11
#    choco install plasso
    choco install powershellhere-elevated 
    choco install processhacker
    choco install protonvpn
	choco install python
#    choco install python2
#    choco install python3
	choco install pip
    choco install qbittorrent
#    choco install r.project
	 choco install rustdesk
#    choco install sudo
#	choco install tailscale
    choco install tor-browser
#    choco install veracrypt
    choco install vlc
    choco install wget
	choco install winget
#    choco install wireshark
#    choco install zap
    choco install zoom
    choco install visualstudio-installer
    choco install visualstudio2022community
#    choco install visualstudio2017-powershelltools
#    choco install vscode-ruby vscodium vscode-ansible vscode-python chocolatey-vscode vscode-prettier vscode-java vscode-yaml vscode-haskell vscode-mongo vscode-beautify vscode-intellicode vscode-pull-request-github vscode-kubernetes-tools vscode-autofilename vscode-codespellchecker vscode-icons vscode-csharp dsc.powershellcommunity

	pip install glances
	pip install poetry
	pip install windows-curses
	
	winget install JanDeDobbeleer.OhMyPosh -s winget
	
	oh-my-posh init pwsh --config 'C:\Users\admin\AppData\Local\Programs\oh-my-posh\themes\montys.omp.json' | Invoke-Expression

# Windows Update

Install-Module -Name PSWindowsUpdate -Force
Get-Package -Name PSWindowsUpdate
get-command -module PSWindowsUpdate
Get-WindowsUpdate
Get-WindowsUpdate -AcceptAll -Install -AutoReboot