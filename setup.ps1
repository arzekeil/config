#install chocolately package manager
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

$devToolAppList = "git,python,nodejs-lts,golang,openjdk,vscode,notepadplusplus,vim,intellijidea-community,microsoft-windows-terminal,awscli,terraform,powershell-core,kubernetes-cli,docker-desktop,postgresql,minikube"
$otherToolAppList = "7zip,vlc,foxitreader,brave,audacity,calibre,discord,obs-studio"

#checking to see if chocolately is installed
choco -?

#install dev tools
foreach ($app in $devToolAppList) {
    Write-Host "Installing $app"
    & choco install $app /y
}

#install other tools
foreach ($app in $OtherToolAppList) {
    Write-Host "Installing $app"
    & choco install $app /y
}
