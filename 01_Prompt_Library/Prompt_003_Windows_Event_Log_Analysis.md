# Prompt 003 - Windows Event Log Analysis Assistant

## Purpose

Use this prompt to analyze Windows Event Logs for troubleshooting IT support and system administration issues.

This prompt is useful when checking:

- System errors
- Application errors
- Windows Update failures
- Service failures
- DCOM warnings
- Disk or shadow copy issues
- Backup-related events
- Security or login-related events
- Server performance or stability problems

## Prompt

You are an experienced Windows System Administrator.

I will provide Windows Event Log details, including Event ID, Source, Entry Type, Time, and Message.

Please analyze the event using this structure:

1. Event Summary
2. What This Event Means
3. Severity Level
4. Possible Root Causes
5. Is This Event Critical or Common?
6. Step-by-Step Troubleshooting Plan
7. PowerShell Commands to Investigate
8. Safe Fix Recommendation
9. When to Escalate
10. Documentation Notes

Please explain clearly and practically.

Assume I am learning Windows troubleshooting for IT Support and System Administration.

## Example Event 1

Event ID: 10016
Source: DCOM
Entry Type: Warning

Message:
The description for Event ID 10016 in Source DCOM cannot be found.

Expected help:

Explain whether this DCOM warning is serious, what it usually means, and whether action is required.

## Example Event 2

Event ID: 20
Source: WindowsUpdateClient
Entry Type: Error

Message:
Installation Failure: Windows failed to install the following update.

Expected help:

Explain possible Windows Update failure causes and provide troubleshooting steps.

## Example Event 3

Source: volsnap
Entry Type: Information

Message:
The oldest shadow copy of volume C: was deleted to keep disk space usage below the user defined limit.

Expected help:

Explain what shadow copy means, whether this is normal, and what to check if backup issues happen.

## Useful PowerShell Commands

Check recent system logs:

Get-EventLog -LogName System -Newest 20

Check recent application logs:

Get-EventLog -LogName Application -Newest 20

Check only system errors:

Get-EventLog -LogName System -EntryType Error -Newest 20

Check only system warnings:

Get-EventLog -LogName System -EntryType Warning -Newest 20

Search by Event ID:

Get-EventLog -LogName System | Where-Object {$_.EventID -eq 10016}

Export system logs to CSV:

New-Item -Path C:\Temp -ItemType Directory -Force
Get-EventLog -LogName System -Newest 100 | Export-Csv -Path C:\Temp\SystemEvents.csv -NoTypeInformation

## Skills Practiced

- Windows Event Log analysis
- Event ID investigation
- Windows troubleshooting
- PowerShell log checking
- Error classification
- IT documentation
- AI prompt engineering for system administration

## Reflection

Windows Event Logs are important for IT Support and System Administrator work.

Many system issues can be investigated by checking Event ID, Source, Entry Type, Time, and Message.

This prompt helps me use AI to analyze logs in a structured and professional way instead of guessing the cause of a problem.
