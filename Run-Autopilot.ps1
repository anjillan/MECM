Write-Host 'Setting Execution Policy to Unrestricted...' -ForegroundColor Green
$null = Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

Write-Host 'Installing NuGet package provider...' -ForegroundColor Green
$null = Install-PackageProvider -Name NuGet -Force

Write-Host 'Installing Get-WindowsAutoPilotInfo script...' -ForegroundColor Green
$null = Install-Script -Name Get-WindowsAutoPilotInfo -Force

Write-Host 'Installing WindowsAutopilotIntune module...' -ForegroundColor Green
$null = Install-Module -Name WindowsAutopilotIntune -Force

Write-Host 'Executing "Get-WindowsAutoPilotInfo"...' -ForegroundColor Green
Get-WindowsAutoPilotInfo -GroupTag Tag00 -Online -AddToGroup "ACS_WIN_Devices_All_Autopilot_Test_Devices" -Assign
