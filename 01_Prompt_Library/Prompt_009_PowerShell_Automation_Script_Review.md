# Prompt 009 - PowerShell Automation Script Review Assistant

## Purpose

Use this prompt to review, improve, and explain PowerShell automation scripts for IT Support and System Administration work.

This prompt is useful when reviewing scripts for:

- User account checks
- Group membership checks
- Disk space reports
- Service status checks
- Event log exports
- Backup checks
- Server health checks
- Network checks
- Scheduled task checks
- CSV report generation
- Basic automation safety review

## Prompt

You are an experienced PowerShell Automation Engineer and Windows System Administrator.

I will provide a PowerShell script, command, error message, or automation idea.

Please review it using this structure:

1. Script Purpose Summary
2. What the Script Does
3. Is the Script Safe to Run?
4. Required Permissions
5. Possible Risks
6. Errors or Problems Found
7. Improved Script Version
8. Explanation of Each Section
9. Testing Steps
10. Rollback or Recovery Notes
11. Production Readiness Score
12. Documentation Notes

Please explain clearly and practically.

Assume I am learning PowerShell automation for IT Support and System Administration.

When reviewing scripts:

- Start with safety review first
- Identify destructive commands
- Warn me before commands that delete, stop, disable, modify, or overwrite anything
- Prefer read-only checks first
- Add comments to improved scripts
- Improve formatting and readability
- Add basic error handling where useful
- Make the script suitable for a junior to mid-level IT engineer

## Example Use Case 1

Script:

Get-Service | Export-Csv -Path C:\Temp\Services.csv -NoTypeInformation

Expected help:

Explain what the script does, why C:\Temp must exist, and improve the script by creating the folder first.

## Example Use Case 2

Script:

Get-EventLog -LogName System -Newest 100 | Export-Csv C:\Temp\SystemLogs.csv

Expected help:

Review the script, improve readability, add NoTypeInformation, and explain how to verify the export.

## Example Use Case 3

Automation idea:

I want to create a daily server health check report.

Expected help:

Suggest a safe PowerShell script structure for checking disk space, services, event logs, uptime, and exporting results.

## Useful Review Checklist

### Safety

- Does the script only read information?
- Does the script modify system settings?
- Does the script stop or restart services?
- Does the script delete files?
- Does the script change user accounts?
- Does the script require administrator permission?

### Reliability

- Does the script check whether the folder path exists?
- Does the script handle errors?
- Does the script use clear variable names?
- Does the script produce useful output?
- Does the script export results properly?

### Documentation

- Does the script have comments?
- Is the purpose clear?
- Are risks explained?
- Are prerequisites listed?
- Are testing steps included?

## Example Improved Script Summary

Create the output folder first:

New-Item -Path C:\Temp -ItemType Directory -Force

Export running services:

Get-Service | Where-Object {$_.Status -eq "Running"} | Export-Csv -Path C:\Temp\RunningServices.csv -NoTypeInformation

## Useful PowerShell Commands for Script Review

Check execution policy:

Get-ExecutionPolicy

Check current PowerShell version:

$PSVersionTable.PSVersion

Test if path exists:

Test-Path C:\Temp

Create folder safely:

New-Item -Path C:\Temp -ItemType Directory -Force

Run script from current folder:

.\scriptname.ps1

Show command help:

Get-Help Get-Service

Show examples:

Get-Help Get-Service -Examples

## Skills Practiced

- PowerShell script review
- PowerShell automation
- Script safety analysis
- Error handling
- Report export
- IT automation documentation
- Windows system administration
- AI prompt engineering for IT operations

## Reflection

PowerShell automation is useful for IT Support and System Administration because it can save time and reduce repeated manual work.

However, automation must be reviewed carefully before running in a real environment.

This prompt helps me check whether a script is safe, readable, useful, and suitable for production use.
