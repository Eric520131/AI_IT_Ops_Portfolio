# \# PowerShell Automation

# 

# This folder contains PowerShell scripts and automation examples for IT Support, System Administration, and AI-assisted IT Operations.

# 

# The purpose of this folder is to build practical PowerShell automation skills that are useful in real IT environments, including system checks, troubleshooting, reporting, and administrative task support.

# 

# \---

# 

# \## Script Index

# 

# | No. | Script | Purpose |

# |---|---|---|

# | 01 | \[01\_System\_Health\_Check.ps1](./01\_System\_Health\_Check.ps1) | Performs a basic Windows system health check |

# 

# \---

# 

# \## 01 - System Health Check Script

# 

# \### Script Name

# 

# `01\_System\_Health\_Check.ps1`

# 

# \### Purpose

# 

# This script collects basic Windows system health information for IT Support and System Administrator use.

# 

# It is designed as a read-only troubleshooting and reporting script.

# 

# \### What It Checks

# 

# \- Computer and operating system information

# \- System uptime

# \- CPU information and current load

# \- Memory usage

# \- Disk space

# \- Key Windows services

# \- Recent system errors from the last 24 hours

# 

# \### Key Windows Services Checked

# 

# \- Windows Event Log

# \- Windows Remote Management

# \- Windows Update

# \- Background Intelligent Transfer Service

# \- Server service

# \- Workstation service

# \- Print Spooler

# 

# \---

# 

# \## How to Run

# 

# From the root of the repository:

# 

# &#x20;   powershell.exe -ExecutionPolicy Bypass -File ".\\03\_PowerShell\_Automation\\01\_System\_Health\_Check.ps1"

# 

# \---

# 

# \## Safety Notes

# 

# This script is read-only.

# 

# It does not:

# 

# \- Change system settings

# \- Restart services

# \- Delete files

# \- Modify registry settings

# \- Install or uninstall software

# 

# \---

# 

# \## Skills Practiced

# 

# \- PowerShell scripting

# \- System information collection

# \- Windows service checking

# \- Disk and memory reporting

# \- Event log review

# \- IT support troubleshooting workflow

# \- Technical documentation

# \- GitHub portfolio presentation

# 

# \---

# 

# \## Future Automation Ideas

# 

# Planned future scripts may include:

# 

# \- Disk space alert report

# \- Windows service status report

# \- Failed login event review

# \- Patch status checker

# \- User account troubleshooting helper

# \- Basic server health report export to CSV

# \- Automated IT support checklist generator

