# Creating Powershell profile to be able to resource it and refresh powershell when needed
Write-Host "Voy a crear un perfil de configuración para refrescar Powershell, hare una copia del archivo en la carpeta Documents si es que existe, estás de acuerdo (sino no pasa nada)?" -ForegroundColor Green
$CreateProfile = Read-Host -Prompt "(Y/n)"
if($CreateProfile -eq "Y") {
    $file = $profile
    $backupLocation = "$HOME\Documents"

    if (Test-Path $file) {
        $currentTime = Get-Date -Format yyyyMMddHHmmss
        $backupFile = "$backupLocation\$($file.BaseName)_$currentTime$($file.Extension)"
        Copy-Item -Path $file -Destination $backupFile
    }
    New-Item -Path $profile -ItemType File -Force
}

# Install Powershell 7
Write-Host "Quieres instalar la ultima version de Powershell? hay algunas funciones nuevas" -ForegroundColor Green
$UpdatePowershell= Read-Host -Prompt "(Y/n)"

if($UpdatePowershell -eq "Y") {
    winget install -e --id Microsoft.PowerShell
}

# Install Windows Terminal
Write-Host "Quieres instalar Windows Terminal?, es una mejor terminal para usar tus shells" -ForegroundColor Green
$InstallTerminal= Read-Host -Prompt "(Y/n)"

if($InstallTerminal -eq "Y") {
    winget install -e --id Microsoft.WindowsTerminal 
}

# Install Git
Write-Host "Quieres instalar Git?, es un sistema de control de versiones que usarás en tu vida profesional" -ForegroundColor Green
$InstallGit = Read-Host -Prompt "(Y/n)"

if($InstallGit -eq "Y") {
    winget install -e --id Git.Git
}


# Install NVM (Node Version Manager)
Write-Host "Instalando NVM (Node Version Manager)" -ForegroundColor Green
winget install -e --id CoreyButler.NVMforWindows
