. $profile

# Refreshing environment variables
Write-Host "Refrescando variables de entorno" -ForegroundColor Green
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

# Running NVM to install versions of node and npm
Write-Host "Instalando versiones de Node y npm 18, 16 y 14 *" -ForegroundColor Green
nvm install 18
nvm install 16
nvm install 14

# Nvm to use node 16
Write-Host "Estableciendo la versión 16 de Node JS como version actual de Node" -ForegroundColor Green
nvm use 16 
