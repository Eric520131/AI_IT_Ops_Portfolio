<#
.SYNOPSIS
Basic System Health Check Script

.DESCRIPTION
This script collects basic Windows system health information for IT Support and System Administrator use.

It checks:
- Computer and OS information
- System uptime
- CPU information and current load
- Memory usage
- Disk space
- Key Windows services
- Recent system errors from the last 24 hours

This script is read-only and does not make system changes.

.AUTHOR
AI IT Ops Portfolio
#>

$ErrorActionPreference = "Continue"

function Write-Section {
    param (
        [string]$Title
    )

    Write-Host ""
    Write-Host "========================================"
    Write-Host $Title
    Write-Host "========================================"
}

Write-Section "System Information"

$computerInfo = Get-ComputerInfo -Property CsName, WindowsProductName, WindowsVersion, OsArchitecture, OsLastBootUpTime

$uptime = (Get-Date) - $computerInfo.OsLastBootUpTime

[PSCustomObject]@{
    ComputerName    = $computerInfo.CsName
    OSName          = $computerInfo.WindowsProductName
    WindowsVersion  = $computerInfo.WindowsVersion
    Architecture    = $computerInfo.OsArchitecture
    LastBootTime    = $computerInfo.OsLastBootUpTime
    UptimeDays      = [math]::Round($uptime.TotalDays, 2)
} | Format-List

Write-Section "CPU Information"

Get-CimInstance Win32_Processor |
Select-Object Name, NumberOfCores, NumberOfLogicalProcessors, LoadPercentage |
Format-Table -AutoSize

Write-Section "Memory Usage"

$os = Get-CimInstance Win32_OperatingSystem

$totalMemoryGB = [math]::Round($os.TotalVisibleMemorySize / 1MB, 2)
$freeMemoryGB  = [math]::Round($os.FreePhysicalMemory / 1MB, 2)
$usedMemoryGB  = [math]::Round($totalMemoryGB - $freeMemoryGB, 2)
$usedPercent   = [math]::Round(($usedMemoryGB / $totalMemoryGB) * 100, 2)

[PSCustomObject]@{
    TotalMemoryGB = $totalMemoryGB
    UsedMemoryGB  = $usedMemoryGB
    FreeMemoryGB  = $freeMemoryGB
    UsedPercent   = "$usedPercent%"
} | Format-List

Write-Section "Disk Space"

Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" |
Select-Object DeviceID,
              VolumeName,
              @{Name="SizeGB"; Expression={[math]::Round($_.Size / 1GB, 2)}},
              @{Name="FreeGB"; Expression={[math]::Round($_.FreeSpace / 1GB, 2)}},
              @{Name="FreePercent"; Expression={[math]::Round(($_.FreeSpace / $_.Size) * 100, 2)}} |
Format-Table -AutoSize

Write-Section "Key Windows Services"

$serviceNames = @(
    "EventLog",
    "WinRM",
    "wuauserv",
    "BITS",
    "LanmanServer",
    "LanmanWorkstation",
    "Spooler"
)

Get-Service -Name $serviceNames -ErrorAction SilentlyContinue |
Select-Object Name, DisplayName, Status, StartType |
Sort-Object Name |
Format-Table -AutoSize

Write-Section "Recent System Errors - Last 24 Hours"

$recentErrors = Get-WinEvent -FilterHashtable @{
    LogName   = "System"
    Level     = 2
    StartTime = (Get-Date).AddHours(-24)
} -MaxEvents 10 -ErrorAction SilentlyContinue

if ($recentErrors) {
    $recentErrors |
    Select-Object TimeCreated, ProviderName, Id, LevelDisplayName, Message |
    Format-Table -Wrap
}
else {
    Write-Host "No recent system errors found in the last 24 hours."
}

Write-Section "Health Check Completed"

Write-Host "System health check completed successfully."
