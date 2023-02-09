# ".\Scripts\changingExecutionPolicy.ps1", 

$scripts = @(".\Scripts\InstallEnvironment.ps1", ".\Scripts\InstallEnvironment2.ps1", ".\Scripts\Angular.ps1")

foreach ($script in $scripts) {
    $process = Start-Process powershell.exe -ArgumentList "-File $script" -PassThru
    $process | Wait-Process
    if ($process.ExitCode -ne 0) {
        Write-Host "An error occurred while running the script $script."
    }
}