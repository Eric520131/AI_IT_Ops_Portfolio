# Prompt 004 - Backup Failure Investigation Assistant

## Purpose

Use this prompt to investigate backup failures in IT support and system administration environments.

This prompt is useful when troubleshooting:

- Windows Server Backup failures
- Scheduled backup failures
- Backup software errors
- Failed backup jobs
- Missing backup destination
- Disk space issues
- Permission issues
- Network path issues
- VSS or shadow copy problems
- Backup service problems
- Event log backup errors

## Prompt

You are an experienced IT Support Engineer and System Administrator.

I will provide a backup failure message, screenshot, log file, Event ID, backup software error, or user report.

Please analyze the issue using this structure:

1. Backup Failure Summary
2. What the Error Means
3. Possible Root Causes
4. Most Likely Cause
5. Questions to Confirm
6. Step-by-Step Troubleshooting Plan
7. Commands or Tools to Check
8. Safe Fix Recommendation
9. Risk Level
10. Prevention Steps
11. Documentation Notes

Please explain clearly and practically.

Assume I am learning backup troubleshooting for IT Support and System Administration.

When suggesting fixes:

- Start with read-only checks first
- Do not delete backup data unless clearly confirmed
- Warn me before changing backup schedules, services, permissions, or storage settings
- Explain the possible impact before making changes
- Provide commands that are safe for a production environment when possible

## Example Use Case 1

Issue:

A Windows Server backup failed last night.

Expected help:

Guide me to check backup logs, Event Viewer, disk space, backup destination, VSS writers, services, and scheduled tasks.

## Example Use Case 2

Issue:

Backup failed because the destination path cannot be found.

Expected help:

Check whether the backup drive, network share, permissions, or path is available.

## Example Use Case 3

Issue:

Backup failed with a VSS error.

Expected help:

Explain what VSS is, how to check VSS writers, and how to safely investigate the issue.

## Useful Checks

### Check disk space

Get-PSDrive -PSProvider FileSystem

### Check recent system errors

Get-EventLog -LogName System -EntryType Error -Newest 30

### Check recent application errors

Get-EventLog -LogName Application -EntryType Error -Newest 30

### Check backup-related system logs

Get-EventLog -LogName System -Newest 100 | Where-Object {$_.Message -like "*backup*"}

### Check VSS writers

vssadmin list writers

### Check VSS providers

vssadmin list providers

### Check VSS shadow storage

vssadmin list shadowstorage

### Check services related to backup

Get-Service | Where-Object {$_.Name -like "*vss*" -or $_.DisplayName -like "*backup*"}

### Check scheduled tasks related to backup

Get-ScheduledTask | Where-Object {$_.TaskName -like "*backup*" -or $_.TaskPath -like "*backup*"}

### Export recent system logs

New-Item -Path C:\Temp -ItemType Directory -Force
Get-EventLog -LogName System -Newest 100 | Export-Csv -Path C:\Temp\Backup_System_Logs.csv -NoTypeInformation

## Backup Investigation Checklist

1. Confirm the backup failure time
2. Check the exact error message
3. Check whether the backup destination is available
4. Check disk space on source and destination
5. Check network connection if using a network share
6. Check account permissions
7. Check Event Viewer logs
8. Check backup software logs
9. Check VSS writer status
10. Check related services
11. Check scheduled task history
12. Document the root cause and fix

## Common Root Causes

- Backup destination unavailable
- Insufficient disk space
- Permission issue
- Network connection issue
- VSS writer failure
- Backup service stopped
- Scheduled task failure
- File locked by another process
- Antivirus or security software interference
- Incorrect backup configuration

## Skills Practiced

- Backup troubleshooting
- Windows Event Log analysis
- VSS investigation
- PowerShell system checks
- Disk space checking
- Service checking
- Scheduled task checking
- IT documentation
- AI prompt engineering for IT operations

## Reflection

Backup failure investigation is an important IT Support and System Administrator skill.

A failed backup should be handled carefully because backup data is critical for recovery.

This prompt helps me troubleshoot backup failures step by step instead of guessing the cause.
