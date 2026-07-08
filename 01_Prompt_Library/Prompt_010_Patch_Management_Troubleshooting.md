# Prompt 010 - Patch Management Troubleshooting Assistant

## Purpose

Use this prompt to troubleshoot patch management and Windows Update issues for IT Support and System Administration work.

This prompt is useful when investigating:

- Windows Update failure
- Patch installation failure
- Server patching issue
- Workstation update issue
- Update stuck downloading
- Update stuck installing
- Pending reboot issue
- Failed security update
- WSUS or SCCM patching issue
- Windows Update service issue
- Patch compliance issue
- Post-patch system issue

## Prompt

You are an experienced Windows System Administrator and Patch Management Troubleshooting Assistant.

I will provide a patching issue, Windows Update error, Event ID, screenshot, log output, update history, or user report.

Please analyze the issue using this structure:

1. Patch Issue Summary
2. What the Error Means
3. Possible Root Causes
4. Most Likely Cause
5. Questions to Confirm
6. Step-by-Step Troubleshooting Plan
7. PowerShell or Windows Tools to Check
8. Safe Fix Recommendation
9. Risk Level
10. Reboot or Downtime Consideration
11. Escalation Criteria
12. Documentation Notes

Please explain clearly and practically.

Assume I am learning patch management troubleshooting for IT Support and System Administration.

When suggesting fixes:

- Start with read-only checks first
- Mention if Administrator permission is required
- Warn me before restarting services or rebooting servers
- Warn me before clearing update cache or changing update settings
- Explain business impact before suggesting production changes
- Include verification steps after patching

## Example Use Case 1

Issue:

Windows failed to install an update with error code 0x80073d02.

Expected help:

Explain possible causes and guide me to check Windows Update history, services, Event Viewer, disk space, and pending reboot status.

## Example Use Case 2

Issue:

A server still shows missing patches after patching.

Expected help:

Guide me to check update status, reboot requirement, update detection, WSUS or SCCM reporting, and compliance scan timing.

## Example Use Case 3

Issue:

A server became unstable after patching.

Expected help:

Guide me to review recent updates, event logs, services, application errors, rollback options, and escalation steps.

## Useful Windows Update Commands

Check Windows Update service:

Get-Service wuauserv

Check Background Intelligent Transfer Service:

Get-Service BITS

Check Cryptographic Services:

Get-Service CryptSvc

Check recent system errors:

Get-EventLog -LogName System -EntryType Error -Newest 30

Check recent Windows Update events:

Get-EventLog -LogName System -Newest 100 | Where-Object {$_.Source -like "*Windows*" -or $_.Message -like "*update*"}

Check disk space:

Get-PSDrive -PSProvider FileSystem

Check pending reboot registry path:

Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\RebootPending"

Check installed hotfixes:

Get-HotFix

Check latest installed hotfixes:

Get-HotFix | Sort-Object InstalledOn -Descending | Select-Object -First 10

Open Windows Update settings:

Start-Process "ms-settings:windowsupdate"

Open Event Viewer:

eventvwr.msc

## Patch Troubleshooting Checklist

1. Confirm affected device or server
2. Confirm update KB number
3. Confirm exact error code or error message
4. Check whether issue affects one device or many devices
5. Check disk space
6. Check Windows Update service
7. Check BITS service
8. Check Cryptographic Services
9. Check Event Viewer logs
10. Check update history
11. Check pending reboot status
12. Check whether the update requires a restart
13. Check antivirus or endpoint security interference
14. Check WSUS, SCCM, or Intune policy if applicable
15. Document findings and next action

## Common Root Causes

- Pending reboot
- Low disk space
- Windows Update service stopped
- BITS service stopped
- Corrupted update cache
- Update already installed
- Update not applicable
- WSUS or SCCM detection delay
- Network or proxy issue
- Antivirus or endpoint protection interference
- System file corruption
- Application conflict
- Driver compatibility issue
- Server requires maintenance window

## Important Safety Notes

Do not reboot production servers without approval.

Do not clear Windows Update cache on production systems without understanding the impact.

Do not uninstall patches unless rollback is approved.

Always document the KB number, error code, troubleshooting steps, and final result.

## Skills Practiced

- Patch management troubleshooting
- Windows Update investigation
- Event log checking
- Service status checking
- Hotfix checking
- Pending reboot checking
- IT documentation
- Change and risk awareness
- AI prompt engineering for IT operations

## Reflection

Patch management is important for system security, stability, and compliance.

A failed patch should be investigated carefully because it may affect security updates, system performance, or business operations.

This prompt helps me troubleshoot patching issues in a structured and safe way.
