# Day 3 Learning Log - PowerShell Troubleshooting Prompt

## Date

Day 3

## Topic

Creating a PowerShell Troubleshooting Prompt and improving the AI Prompt Library.

## What I Completed

Today, I created a reusable AI prompt for PowerShell and Windows troubleshooting.

I also updated the Prompt Library README file to include a clear prompt index.

This makes the GitHub portfolio easier to read and more professional.

## Files Created or Updated

### Created

00_Learning_Log/Day03_PowerShell_Prompt.md

### Updated

01_Prompt_Library/README.md

### Added

01_Prompt_Library/Prompt_002_PowerShell_Troubleshooting.md

## Prompt Created

### Prompt 002 - PowerShell Troubleshooting Assistant

This prompt is designed to help troubleshoot:

- PowerShell command errors
- Windows Server issues
- User account problems
- Group membership checks
- Disk space checks
- Service status checks
- Event log investigation
- Backup or scheduled task troubleshooting
- Basic IT support automation

## PowerShell Commands Practiced

### Check running services

Get-Service

### Check only running services

Get-Service | Where-Object {$_.Status -eq "Running"}

### Check recent system event logs

Get-EventLog -LogName System -Newest 20

### Export service list to CSV

New-Item -Path C:\Temp -ItemType Directory -Force
Get-Service | Export-Csv -Path C:\Temp\Services.csv -NoTypeInformation

## Problem Encountered

When I tried to export the service list to CSV, PowerShell showed this error:

Export-Csv: Could not find a part of the path 'C:\Temp\Services.csv'.

## Cause

The folder C:\Temp did not exist yet.

PowerShell could not create the CSV file because the destination folder was missing.

## Solution

I created the folder first using:

New-Item -Path C:\Temp -ItemType Directory -Force

After that, the export command can work correctly.

## Git Commands Practiced

git status

git add .

git commit -m "Add PowerShell troubleshooting prompt"

git push

git log --oneline -3

## Skills Practiced

- PowerShell troubleshooting
- Windows service checking
- Windows event log checking
- CSV export
- Error analysis
- Markdown documentation
- Git version control
- GitHub portfolio building
- AI prompt engineering for IT work

## Reflection

Today I learned that a good AI prompt can become a reusable troubleshooting workflow.

I also learned that PowerShell errors should be read carefully. Some errors are not serious system problems. They may happen because a folder, path, command, or syntax is incorrect.

The C:\Temp export error helped me understand the importance of checking file paths before exporting reports.

This is useful for IT Support and System Administrator work because many real troubleshooting tasks involve checking services, logs, disk space, users, and system status.

## Next Step

Continue building more IT-focused AI prompts, especially for Windows Event Log analysis, backup failure investigation, server health checks, and network troubleshooting.
