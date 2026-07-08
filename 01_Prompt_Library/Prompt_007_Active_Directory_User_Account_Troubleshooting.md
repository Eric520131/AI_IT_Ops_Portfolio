# Prompt 007 - Active Directory User Account Troubleshooting Assistant

## Purpose

Use this prompt to troubleshoot Active Directory user account issues for IT Support and System Administration work.

This prompt is useful when investigating:

- User cannot login
- Account locked out
- Password expired
- Password reset issue
- Account disabled
- User not in correct group
- Permission issue
- Shared folder access issue
- VPN login issue
- MFA or 2FA related login issue
- AD replication or account sync issue
- New user account setup issue
- Leaver or access removal issue

## Prompt

You are an experienced Windows System Administrator and Active Directory troubleshooting assistant.

I will provide a user account issue, error message, screenshot, PowerShell output, group membership result, login issue, or user report.

Please analyze the issue using this structure:

1. User Account Issue Summary
2. What the Symptoms Mean
3. Possible Root Causes
4. Most Likely Cause
5. Questions to Confirm
6. Step-by-Step Troubleshooting Plan
7. PowerShell or AD Tools to Check
8. Safe Fix Recommendation
9. Risk Level
10. Escalation Criteria
11. Documentation Notes

Please explain clearly and practically.

Assume I am learning Active Directory troubleshooting for IT Support and System Administration.

When suggesting commands:

- Start with read-only checks first
- Explain what each command checks
- Mention if Administrator permission or RSAT tools are required
- Warn me before disabling, deleting, moving, unlocking, or changing user accounts
- Keep the troubleshooting suitable for a production environment

## Example Use Case 1

Issue:

User cannot login to Windows after changing password.

Expected help:

Guide me to check account lockout, password expiry, account status, domain connectivity, cached credentials, and group policy issues.

## Example Use Case 2

Issue:

User cannot access a shared folder.

Expected help:

Guide me to check AD group membership, folder permissions, SMB access, network connectivity, and whether the user recently changed department or role.

## Example Use Case 3

Issue:

User account is locked out repeatedly.

Expected help:

Guide me to check lockout time, failed login source, mapped drives, saved credentials, mobile devices, services, scheduled tasks, and event logs.

## Useful PowerShell Commands

### Check current user

whoami

### Check current user's groups

whoami /groups

### Check domain information

whoami /fqdn

### Check local logged-in user

query user

### Check local administrators group

Get-LocalGroupMember -Group "Administrators"

### Check AD user account

Get-ADUser username -Properties *

### Check if account is enabled

Get-ADUser username -Properties Enabled | Select-Object Name, Enabled

### Check password-related properties

Get-ADUser username -Properties PasswordExpired, PasswordLastSet, LockedOut, AccountExpirationDate | Select-Object Name, PasswordExpired, PasswordLastSet, LockedOut, AccountExpirationDate

### Check group membership

Get-ADPrincipalGroupMembership username | Select-Object Name

### Unlock user account

Unlock-ADAccount -Identity username

### Reset user password

Set-ADAccountPassword -Identity username -Reset

### Enable user account

Enable-ADAccount -Identity username

### Disable user account

Disable-ADAccount -Identity username

### Search user by name

Get-ADUser -Filter "Name -like '*John*'"

### Check domain controller

Get-ADDomainController

### Check AD module availability

Get-Module -ListAvailable ActiveDirectory

## Important Notes

Some Active Directory commands require:

- RSAT tools installed
- ActiveDirectory PowerShell module
- Domain-joined machine
- Proper administrator permission

Do not run account modification commands unless the change is approved.

Read-only checks should be performed first.

## Active Directory Troubleshooting Checklist

1. Confirm the exact username
2. Confirm the issue type
3. Check whether the issue affects one user or many users
4. Check account enabled or disabled status
5. Check account lockout status
6. Check password expiry status
7. Check last password change time
8. Check group membership
9. Check login device and network connection
10. Check shared folder or application permission
11. Check domain controller connectivity
12. Check related event logs
13. Document root cause and action taken

## Common Root Causes

- Wrong password
- Account locked out
- Password expired
- Account disabled
- User not connected to domain network
- Wrong AD group membership
- Permission not applied yet
- Old cached credentials
- Saved password in Windows Credential Manager
- Mobile device or app using old password
- Mapped drive using old credentials
- Service or scheduled task using old credentials
- AD replication delay
- MFA or VPN authentication issue

## Skills Practiced

- Active Directory user troubleshooting
- Account lockout investigation
- Password and login issue analysis
- Group membership checking
- Permission troubleshooting
- PowerShell AD commands
- IT documentation
- AI prompt engineering for system administration

## Reflection

Active Directory user account troubleshooting is a common IT Support and System Administrator task.

Many user login and access issues are related to password status, account lockout, group membership, permissions, or network connectivity.

This prompt helps me investigate user account issues step by step instead of guessing the cause.

It also helps me document user account problems professionally.
