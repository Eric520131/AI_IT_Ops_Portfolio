# Day 5 Learning Log - Server Health Check Prompt

## Date

Day 5

## Topic

Creating a Server Health Check Prompt for IT Support and System Administration.

## What I Completed

Today, I created a reusable AI prompt for server health checks.

I also updated the AI Prompt Library index to include Prompt 005.

This improves my GitHub portfolio by showing practical IT operations skills using AI, PowerShell, Windows Server checks, event logs, service review, disk space review, backup checks, and documentation.

## Files Created or Updated

### Created

01_Prompt_Library/Prompt_005_Server_Health_Check.md

00_Learning_Log/Day05_Server_Health_Check.md

### Updated

01_Prompt_Library/README.md

## Prompt Created

### Prompt 005 - Server Health Check Assistant

This prompt is designed to help perform a structured server health check.

It can help check:

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

## Server Health Check Areas Learned

### 1. Uptime Check

Checking uptime helps confirm how long the server has been running.

This is useful because some issues may happen after long uptime, recent reboot, failed patching, or unexpected shutdown.

### 2. Disk Space Check

Disk space is one of the most common causes of system issues.

Low disk space can affect:

- Backup jobs
- Windows Updates
- Application performance
- Log writing
- System stability

### 3. Service Status Check

Services are important because many Windows Server roles depend on background services.

A stopped critical service may cause application, network, backup, login, or system problems.

### 4. Event Log Review

Windows Event Logs help identify errors, warnings, failed updates, service failures, disk issues, and backup problems.

### 5. Network Connectivity Check

Network checks help confirm whether the server can reach the gateway, DNS, internet, or other internal systems.

### 6. Backup and Security Review

Backup and security checks are important because they affect recovery, compliance, and system protection.

## PowerShell Commands Practiced

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

## Server Health Check Checklist Learned

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

## Skills Practiced

- Server health checking
- Windows Server administration
- PowerShell system checks
- Event log review
- Service status review
- Disk space checking
- Network troubleshooting
- IT documentation
- Git and GitHub workflow
- AI prompt engineering for IT operations

## Git Commands Practiced

git status

git add .

git commit -m "Add server health check prompt"

git commit -m "Update prompt library index with server health prompt"

git push

git log --oneline -3

## Reflection

Today I learned that server health checks are important for preventing issues before they become serious incidents.

A good server health check should not only look at one area. It should include uptime, disk space, services, event logs, network connectivity, backup status, and security status.

This prompt helps me follow a structured process instead of checking things randomly.

It is useful for IT Support and System Administrator work because server health checks are common daily, weekly, and monthly operational tasks.

## Next Step

Continue building the AI Prompt Library with a Network Troubleshooting Prompt.
