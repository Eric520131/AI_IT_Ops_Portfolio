<#
.SYNOPSIS
Generates a Windows service status report.

.DESCRIPTION
This script collects Windows service information for IT Support / System Administrator checks.
It exports a CSV report and highlights important services that are not running.

.OUTPUTS
CSV report saved inside:
03_PowerShell_Automation\Reports

.NOTES
Portfolio: AI_IT_Ops_Portfolio
Script: 03_Service_Status_Report.ps1
#>

[CmdletBinding()]
param(
    [string]$OutputFolder = (Join-Path $PSScriptRoot "Reports")
)

$ErrorActionPreference = "Stop"

$ReportTime = Get-Date
$Timestamp = $ReportTime.ToString("yyyyMMdd_HHmmss")

if (-not (Test-Path $OutputFolder)) {
    New-Item -Path $OutputFolder -ItemType Directory | Out-Null
}

$OutputFile = Join-Path $OutputFolder "Service_Status_Report_$Timestamp.csv"

$ImportantServices = @(
    "EventLog",
    "WinDefend",
    "wuauserv",
    "BITS",
    "Dnscache",
    "Dhcp",
    "LanmanWorkstation",
    "LanmanServer",
    "Schedule",
    "Spooler",
    "MpsSvc",
    "WinRM",
    "TermService"
)

$Services = Get-CimInstance -ClassName Win32_Service |
    Sort-Object State, StartMode, DisplayName |
    ForEach-Object {
        [PSCustomObject]@{
            ComputerName = $env:COMPUTERNAME
            ServiceName  = $_.Name
            DisplayName  = $_.DisplayName
            Status       = $_.State
            StartMode    = $_.StartMode
            LogOnAs      = $_.StartName
            ProcessId    = $_.ProcessId
            Important    = $ImportantServices -contains $_.Name
            ReportTime   = $ReportTime
        }
    }

$Services | Export-Csv -Path $OutputFile -NoTypeInformation -Encoding UTF8

$ServiceSummary = $Services |
    Group-Object Status |
    Select-Object Name, Count |
    Sort-Object Name

$ImportantStoppedServices = $Services |
    Where-Object {
        $_.Important -eq $true -and $_.Status -ne "Running"
    } |
    Select-Object ServiceName, DisplayName, Status, StartMode

Write-Host ""
Write-Host "Windows Service Status Report" -ForegroundColor Cyan
Write-Host "Generated on: $ReportTime"
Write-Host "Computer: $env:COMPUTERNAME"
Write-Host "Report saved to: $OutputFile"
Write-Host ""

Write-Host "Service Summary:" -ForegroundColor Yellow
$ServiceSummary | Format-Table -AutoSize

if ($ImportantStoppedServices) {
    Write-Host ""
    Write-Host "Important services not running:" -ForegroundColor Red
    $ImportantStoppedServices | Format-Table -AutoSize
}
else {
    Write-Host ""
    Write-Host "All important services are running." -ForegroundColor Green
}

Write-Host ""
Write-Host "Service status report completed successfully." -ForegroundColor Green
