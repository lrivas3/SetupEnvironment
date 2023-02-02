# ".\Scripts\changingExecutionPolicy.ps1", 

$scripts = @(".\Scripts\InstallEnvironment.ps1", ".\Scripts\InstallEnvironment2.ps1", ".\Scripts\Angular.ps1")

foreach ($script in $scripts) {
    $process = Start-Process powershell.exe -ArgumentList "-File $script" -PassThru
    $process | Wait-Process
    if ($process.ExitCode -ne 0) {
        Write-Host "An error occurred while running the script $script."
    }
}

if ($process.ExitCode -eq 0) {
    Write-Host "Press any key to continue..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}