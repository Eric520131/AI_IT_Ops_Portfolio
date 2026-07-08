# Day 13 - Disk Space Report PowerShell Script

## Date

8 July 2026

## Focus Area

PowerShell automation for disk space reporting and IT operations monitoring.

## Tasks Completed

Today I continued PowerShell Automation Phase 1 by creating a disk space report script.

Completed tasks:

- Created the second PowerShell automation script
- Added disk space checking functionality
- Added warning threshold logic
- Added optional CSV export support
- Updated the PowerShell Automation README
- Committed and pushed all changes to GitHub

## Script Created

File:

    03_PowerShell_Automation/02_Disk_Space_Report.ps1

## Script Purpose

The script checks local fixed drives and reports disk size, used space, free space, free space percentage, and health status.

It is designed for IT Support and System Administrator use when checking whether a computer or server may be running low on disk space.

## What the Script Checks

- Local fixed drives
- Total disk size
- Used disk space
- Free disk space
- Free space percentage
- Disk health status

## Status Logic

The script uses a warning threshold to decide disk health status.

Default threshold:

    20 percent free space

Status meaning:

- Healthy: free space is above the threshold
- Warning: free space is less than or equal to the threshold

## PowerShell Skills Practiced

- Using script parameters
- Using switch parameters
- Using Get-CimInstance
- Calculating disk size and free space
- Creating custom PowerShell objects
- Using ForEach-Object
- Using Where-Object
- Creating threshold-based status logic
- Creating optional CSV export logic
- Using Export-Csv
- Creating folders with New-Item
- Writing readable script output

## Git Commands Practiced

    git status
    git add .\03_PowerShell_Automation\02_Disk_Space_Report.ps1
    git commit -m "Add disk space report PowerShell script"
    git push
    git add .\03_PowerShell_Automation\README.md
    git commit -m "Update PowerShell automation README with disk report"
    git push
    git log --oneline -3

## Latest Confirmed Commits

    9c4e081 Update PowerShell automation README with disk report
    69960a0 Add disk space report PowerShell script
    6f33596 Update learning log index for Day 12

## Reflection

Today I learned how to create a more practical PowerShell script for IT operations.

Disk space checking is a common task for IT Support and System Administrator roles. This script helps identify drives that may require attention before users or servers experience problems.

I also practiced making a script more flexible by adding a warning threshold parameter and optional CSV export. This makes the script more useful for real-world reporting and troubleshooting.

## Next Step

Continue PowerShell Automation Phase 1 by creating more practical scripts, such as Windows service status reporting, failed login review, patch status checking, and basic server health report export.
