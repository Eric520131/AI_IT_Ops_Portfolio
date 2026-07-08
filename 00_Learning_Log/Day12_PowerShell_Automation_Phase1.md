# Day 12 - PowerShell Automation Phase 1

## Date

8 July 2026

## Focus Area

PowerShell automation for IT Support and System Administration.

## Tasks Completed

Today I started PowerShell Automation Phase 1 for the AI IT Ops Portfolio project.

Completed tasks:

- Created the first PowerShell automation script
- Added system health check functionality
- Updated the PowerShell Automation README
- Documented the purpose, usage, safety notes, and future automation ideas
- Committed and pushed all changes to GitHub

## Script Created

File:

    03_PowerShell_Automation/01_System_Health_Check.ps1

## Script Purpose

The script performs a basic Windows system health check for IT Support and System Administrator use.

It is designed to collect useful troubleshooting information without making any system changes.

## What the Script Checks

- Computer and operating system information
- System uptime
- CPU information and current load
- Memory usage
- Disk space
- Key Windows services
- Recent system errors from the last 24 hours

## Key Windows Services Checked

- Windows Event Log
- Windows Remote Management
- Windows Update
- Background Intelligent Transfer Service
- Server service
- Workstation service
- Print Spooler

## PowerShell Skills Practiced

- Creating a PowerShell script file
- Using functions
- Using Get-ComputerInfo
- Using Get-CimInstance
- Using Get-Service
- Using Get-WinEvent
- Formatting output with Format-List and Format-Table
- Creating read-only health check logic
- Running a script with ExecutionPolicy Bypass

## Git Commands Practiced

    git status
    git add .\03_PowerShell_Automation\01_System_Health_Check.ps1
    git commit -m "Add system health check PowerShell script"
    git push
    git add .\03_PowerShell_Automation\README.md
    git commit -m "Update PowerShell automation README"
    git push
    git log --oneline -3

## Latest Confirmed Commits

    cac85b3 Update PowerShell automation README
    d3d4612 Add system health check PowerShell script
    0fd0c2f Update learning log index

## Reflection

Today I created my first practical PowerShell automation script for the portfolio.

This is an important step because PowerShell is highly relevant for IT Support, System Administrator, and Infrastructure Support roles. The system health check script shows that I can use PowerShell to collect useful system information, check service status, review event logs, and document the result professionally.

I also learned that automation scripts should be safe, clear, and well documented. A good IT script should explain what it does, how to run it, and whether it makes any system changes.

## Next Step

Continue PowerShell Automation Phase 1 by creating more practical scripts for IT operations, such as disk space reporting, service status checking, failed login review, and patch status checking.
