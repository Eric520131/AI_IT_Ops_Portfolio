<#
.SYNOPSIS
Disk Space Report Script

.DESCRIPTION
This script checks local fixed disks and reports disk size, free space, used space, and free space percentage.

It is designed for IT Support and System Administrator use.

The script is read-only by default. It does not delete files, modify disks, or change system settings.

.PARAMETER WarningThresholdPercent
Defines the free space percentage threshold for warning status.
Default value is 20.

.PARAMETER ExportCsv
Exports the disk space report to a CSV file inside the Reports folder.

.EXAMPLE
.\02_Disk_Space_Report.ps1

.EXAMPLE
.\02_Disk_Space_Report.ps1 -WarningThresholdPercent 15

.EXAMPLE
.\02_Disk_Space_Report.ps1 -ExportCsv
#>

param (
    [int]$WarningThresholdPercent = 20,
    [switch]$ExportCsv
)

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

Write-Section "Disk Space Report"

Write-Host "Computer Name: $env:COMPUTERNAME"
Write-Host "Report Time:   $(Get-Date)"
Write-Host "Warning Level: Free space less than or equal to $WarningThresholdPercent%"

$diskReport = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" |
ForEach-Object {
    $sizeGB = [math]::Round($_.Size / 1GB, 2)
    $freeGB = [math]::Round($_.FreeSpace / 1GB, 2)
    $usedGB = [math]::Round($sizeGB - $freeGB, 2)
    $freePercent = [math]::Round(($_.FreeSpace / $_.Size) * 100, 2)

    if ($freePercent -le $WarningThresholdPercent) {
        $status = "Warning"
    }
    else {
        $status = "Healthy"
    }

    [PSCustomObject]@{
        ComputerName = $env:COMPUTERNAME
        Drive        = $_.DeviceID
        VolumeName   = $_.VolumeName
        SizeGB       = $sizeGB
        UsedGB       = $usedGB
        FreeGB       = $freeGB
        FreePercent  = $freePercent
        Status       = $status
    }
}

$diskReport | Format-Table -AutoSize

$warningDisks = $diskReport | Where-Object { $_.Status -eq "Warning" }

Write-Section "Summary"

if ($warningDisks) {
    Write-Host "Warning: One or more drives are below the free space threshold."

    $warningDisks |
    Select-Object Drive, FreeGB, FreePercent, Status |
    Format-Table -AutoSize
}
else {
    Write-Host "All fixed drives have enough free space."
}

if ($ExportCsv) {
    $scriptDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path
    $reportDirectory = Join-Path $scriptDirectory "Reports"

    if (-not (Test-Path $reportDirectory)) {
        New-Item -Path $reportDirectory -ItemType Directory | Out-Null
    }

    $timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
    $csvPath = Join-Path $reportDirectory "DiskSpaceReport_$timestamp.csv"

    $diskReport | Export-Csv -Path $csvPath -NoTypeInformation -Encoding UTF8

    Write-Section "CSV Export"
    Write-Host "Report exported to:"
    Write-Host $csvPath
}

Write-Section "Disk Space Check Completed"

Write-Host "Disk space report completed successfully."
