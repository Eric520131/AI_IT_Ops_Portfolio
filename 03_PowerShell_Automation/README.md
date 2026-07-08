# PowerShell Automation

This folder contains PowerShell scripts and automation examples for IT Support, System Administration, and AI-assisted IT Operations.

The purpose of this folder is to build practical PowerShell automation skills that are useful in real IT environments, including system checks, troubleshooting, reporting, and administrative task support.

---

## Script Index

| No. | Script | Purpose |
|---|---|---|
| 01 | [01_System_Health_Check.ps1](./01_System_Health_Check.ps1) | Performs a basic Windows system health check |
| 02 | [02_Disk_Space_Report.ps1](./02_Disk_Space_Report.ps1) | Checks fixed drive disk space and reports Healthy or Warning status |
| 03 | [03_Service_Status_Report.ps1](./03_Service_Status_Report.ps1) | Generates a Windows service status report and highlights important services that are not running |

---

## 01 - System Health Check Script

### Script Name

`01_System_Health_Check.ps1`

### Purpose

This script collects basic Windows system health information for IT Support and System Administrator use.

It is designed as a read-only troubleshooting and reporting script.

### What It Checks

- Computer and operating system information
- System uptime
- CPU information and current load
- Memory usage
- Disk space
- Key Windows services
- Recent system errors from the last 24 hours

### Key Windows Services Checked

- Windows Event Log
- Windows Remote Management
- Windows Update
- Background Intelligent Transfer Service
- Server service
- Workstation service
- Print Spooler

### How to Run

From the root of the repository:

    powershell.exe -ExecutionPolicy Bypass -File ".\03_PowerShell_Automation\01_System_Health_Check.ps1"

---

## 02 - Disk Space Report Script

### Script Name

`02_Disk_Space_Report.ps1`

### Purpose

This script checks local fixed disks and reports disk size, used space, free space, free space percentage, and health status.

It is designed for IT Support and System Administrator use when checking whether a computer or server may be running low on disk space.

### What It Checks

- Local fixed drives
- Total disk size
- Used disk space
- Free disk space
- Free space percentage
- Disk health status based on a warning threshold

### Status Logic

By default, the script uses a 20 percent free space threshold.

- Healthy: free space is above the threshold
- Warning: free space is less than or equal to the threshold

### How to Run

From the root of the repository:

    powershell.exe -ExecutionPolicy Bypass -File ".\03_PowerShell_Automation\02_Disk_Space_Report.ps1"

Run with a custom warning threshold:

    powershell.exe -ExecutionPolicy Bypass -File ".\03_PowerShell_Automation\02_Disk_Space_Report.ps1" -WarningThresholdPercent 15

Run with CSV export:

    powershell.exe -ExecutionPolicy Bypass -File ".\03_PowerShell_Automation\02_Disk_Space_Report.ps1" -ExportCsv

---

## 03 - Service Status Report Script

### Script Name

`03_Service_Status_Report.ps1`

### Purpose

This script generates a Windows service status report for IT Support and System Administrator use.

It helps identify important Windows services that are not running and exports the service information to a CSV report.

### What It Checks

- Windows service name
- Display name
- Current service status
- Startup mode
- Logon account
- Process ID
- Important service flag
- Report generation time

### Important Services Checked

The script highlights important services such as:

- Windows Event Log
- Microsoft Defender Antivirus Service
- Windows Update
- Background Intelligent Transfer Service
- DNS Client
- DHCP Client
- Workstation service
- Server service
- Task Scheduler
- Print Spooler
- Windows Defender Firewall
- Windows Remote Management
- Remote Desktop Services

### Output

The script creates a CSV report in:

    03_PowerShell_Automation\Reports

Generated CSV files are ignored by Git because they are machine-generated report outputs.

### How to Run

From the root of the repository:

    powershell.exe -ExecutionPolicy Bypass -File ".\03_PowerShell_Automation\03_Service_Status_Report.ps1"

---

## Safety Notes

These scripts are read-only by default.

They do not:

- Change system settings
- Restart services
- Delete files
- Modify registry settings
- Install or uninstall software

The disk space report script only creates a CSV report if the `-ExportCsv` option is used.

The service status report script creates a CSV report automatically, but it does not start, stop, restart, or modify any Windows services.

---

## Skills Practiced

- PowerShell scripting
- System information collection
- Windows service checking
- Disk and memory reporting
- Event log review
- Threshold-based reporting
- CSV export logic
- IT support troubleshooting workflow
- Technical documentation
- GitHub portfolio presentation

---

## Future Automation Ideas

Planned future scripts may include:

- Failed login event review
- Patch status checker
- User account troubleshooting helper
- Basic server health report export to CSV
- Automated IT support checklist generator
