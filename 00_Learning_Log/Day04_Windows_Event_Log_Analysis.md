# Day 4 Learning Log - Windows Event Log Analysis

## Date

Day 4

## Topic

Creating a Windows Event Log Analysis Prompt for IT Support and System Administration.

## What I Completed

Today, I created a reusable AI prompt for Windows Event Log analysis.

I also updated the AI Prompt Library index to include Prompt 003.

This improves my GitHub portfolio by showing practical IT troubleshooting skills using AI, Windows logs, and PowerShell.

## Files Created or Updated

### Created

01_Prompt_Library/Prompt_003_Windows_Event_Log_Analysis.md

### Updated

01_Prompt_Library/README.md

### Created

00_Learning_Log/Day04_Windows_Event_Log_Analysis.md

## Prompt Created

### Prompt 003 - Windows Event Log Analysis Assistant

This prompt is designed to help analyze Windows Event Logs in a structured way.

It can help investigate:

- System errors
- Application errors
- Windows Update failures
- Service failures
- DCOM warnings
- Disk or shadow copy issues
- Backup-related events
- Security or login-related events
- Server performance or stability problems

## Windows Event Log Examples Practiced

During practice, I checked recent system logs using PowerShell.

Some examples found in the logs included:

### Event ID 1796

Source:

Microsoft-Windows-TPM-WMI

Message summary:

The Secure Boot update failed to update SBAT.

Learning note:

This should be recorded and investigated carefully if it repeats or affects Windows Update or Secure Boot behavior.

### Event ID 10016

Source:

DCOM

Entry Type:

Warning

Learning note:

DCOM 10016 warnings are commonly seen in Windows logs. They are not always critical, but they should be reviewed if they appear together with application or service issues.

### Event ID 20

Source:

WindowsUpdateClient

Entry Type:

Error

Message summary:

Windows failed to install an update.

Learning note:

Windows Update errors should be investigated by checking update history, system health, disk space, Windows Update services, and related event logs.

### volsnap Event

Source:

volsnap

Message summary:

The oldest shadow copy of volume C: was deleted to keep disk space usage below the user-defined limit.

Learning note:

This can be normal behavior, but it is important to review if backup, restore point, or disk space issues happen.

## PowerShell Commands Practiced

### Check recent system logs

Get-EventLog -LogName System -Newest 20

### Check recent application logs

Get-EventLog -LogName Application -Newest 20

### Check only system errors

Get-EventLog -LogName System -EntryType Error -Newest 20

### Check only system warnings

Get-EventLog -LogName System -EntryType Warning -Newest 20

### Search by Event ID

Get-EventLog -LogName System | Where-Object {$_.EventID -eq 10016}

### Export system logs to CSV

New-Item -Path C:\Temp -ItemType Directory -Force
Get-EventLog -LogName System -Newest 100 | Export-Csv -Path C:\Temp\SystemEvents.csv -NoTypeInformation

## Skills Practiced

- Windows Event Log analysis
- Event ID investigation
- Windows troubleshooting
- PowerShell log checking
- Error classification
- IT documentation
- Git and GitHub workflow
- AI prompt engineering for system administration

## Git Commands Practiced

git status

git add .

git commit -m "Add Windows event log analysis prompt"

git commit -m "Update prompt library index with event log prompt"

git push

git log --oneline -3

## Reflection

Today I learned that Windows Event Logs are very useful for IT troubleshooting.

Instead of guessing the problem, I can check the Event ID, Source, Entry Type, Time, and Message to understand what happened.

I also learned that not every warning or error is immediately critical. Some events are common, while others need further investigation if they repeat or affect system behavior.

This is useful for IT Support and System Administrator work because many real issues can be investigated through Event Viewer and PowerShell.

## Next Step

Continue building the AI Prompt Library with a Backup Failure Investigation Prompt.
