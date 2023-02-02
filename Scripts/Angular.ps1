# Refrescando de nuevo
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

# installing angular
Write-Host "Instalando angular version 14" -ForegroundColor Green
npm install -g @angular/cli@14

ng v

# Making working directory for Angular and ANP0 stuff
Write-Host "Creando un directorio para el desarrollo con Angular llamado ANP0 en el direcortio raiz del usuario actual" -ForegroundColor Green

$CreatedDir = "$HOME\Dev\ANP0"
# Creating working directory
mkdir $CreatedDir
# Getting into working directory
Set-Location $CreatedDir

# Finishing
Write-Host "Todo listo!, puede crear su proyecto"
Write-Host "Cerrando en 10 segundos"

Start-Sleep 10
