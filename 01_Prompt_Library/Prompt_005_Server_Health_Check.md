# Prompt 005 - Server Health Check Assistant

## Purpose

Use this prompt to perform a structured server health check for IT Support and System Administration work.

This prompt is useful when checking:

- Windows Server health
- Disk space
- CPU and memory usage
- Running services
- Critical stopped services
- Event logs
- Network connectivity
- Uptime
- Windows Update status
- Backup status
- Antivirus or security status
- Scheduled tasks
- Basic performance issues

## Prompt

You are an experienced Windows System Administrator.

I will provide server health check information, PowerShell output, screenshots, event logs, service status, disk space results, or user reports.

Please analyze the server health using this structure:

1. Server Health Summary
2. Overall Status
3. Critical Issues Found
4. Warning Items
5. Disk Space Review
6. CPU and Memory Review
7. Service Status Review
8. Event Log Review
9. Network and Connectivity Review
10. Backup and Security Review
11. Recommended Actions
12. Risk Level
13. Documentation Notes

Please explain clearly and practically.

Assume I am learning server health checks for IT Support and System Administration.

When suggesting commands:

- Start with read-only checks first
- Mention if Administrator permission is required
- Warn me before restarting services or changing system settings
- Explain the purpose of each command
- Keep the checks suitable for a production environment

## Example Use Case 1

Issue:

I need to perform a daily health check on a Windows Server.

Expected help:

Provide a checklist to check uptime, disk space, services, event logs, backup status, and system performance.

## Example Use Case 2

Issue:

A server feels slow.

Expected help:

Guide me to check CPU, memory, disk usage, event logs, services, and possible causes.

## Example Use Case 3

Issue:

A critical service is stopped.

Expected help:

Explain how to check the service status, related event logs, dependencies, and safe next steps.

## Useful PowerShell Commands

### Check computer information

Get-ComputerInfo

### Check uptime

(Get-Date) - (Get-CimInstance Win32_OperatingSystem).LastBootUpTime

### Check disk space

Get-PSDrive -PSProvider FileSystem

### Check disk space with details

Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" | Select-Object DeviceID, VolumeName, Size, FreeSpace

### Check services

Get-Service

### Check stopped services

Get-Service | Where-Object {$_.Status -eq "Stopped"}

### Check running services

Get-Service | Where-Object {$_.Status -eq "Running"}

### Check recent system errors

Get-EventLog -LogName System -EntryType Error -Newest 30

### Check recent application errors

Get-EventLog -LogName Application -EntryType Error -Newest 30

### Check recent system warnings

Get-EventLog -LogName System -EntryType Warning -Newest 30

### Check network configuration

ipconfig /all

### Test internet or gateway connection

Test-Connection 8.8.8.8 -Count 4

### Check Windows Update service

Get-Service wuauserv

### Check Windows Time service

Get-Service W32Time

### Check scheduled tasks

Get-ScheduledTask

### Export server health check results

New-Item -Path C:\Temp -ItemType Directory -Force
Get-Service | Export-Csv -Path C:\Temp\Server_Services.csv -NoTypeInformation
Get-EventLog -LogName System -Newest 100 | Export-Csv -Path C:\Temp\Server_System_Logs.csv -NoTypeInformation

## Server Health Check Checklist

1. Confirm server name and role
2. Check uptime
3. Check disk space
4. Check CPU and memory usage
5. Check critical services
6. Check recent system errors
7. Check recent application errors
8. Check network connectivity
9. Check Windows Update status
10. Check backup status
11. Check antivirus or security status
12. Check scheduled tasks
13. Document findings and actions

## Common Issues Found During Server Health Checks

- Low disk space
- High CPU usage
- High memory usage
- Critical service stopped
- Windows Update failure
- Backup failure
- Event log errors
- Network connectivity issue
- Time synchronization issue
- Scheduled task failure
- Security or antivirus issue

## Skills Practiced

- Server health checking
- Windows Server administration
- PowerShell system checks
- Event log review
- Service status review
- Disk space checking
- Network troubleshooting
- IT documentation
- AI prompt engineering for IT operations

## Reflection

Server health checks are important for preventing system issues before they become serious incidents.

This prompt helps me follow a structured process instead of checking things randomly.

It also helps me document server health clearly for IT support, system administration, and operational reporting.
