# Day 7 Learning Log - Active Directory User Account Troubleshooting Prompt

## Date

Day 7

## Topic

Creating an Active Directory User Account Troubleshooting Prompt for IT Support and System Administration.

## What I Completed

Today, I created a reusable AI prompt for Active Directory user account troubleshooting.

I also updated the AI Prompt Library index to include Prompt 007.

This improves my GitHub portfolio by showing practical IT support skills related to user login issues, account lockouts, password expiry, group membership, access permissions, VPN login, MFA/2FA issues, and documentation.

## Files Created or Updated

### Created

01_Prompt_Library/Prompt_007_Active_Directory_User_Account_Troubleshooting.md

00_Learning_Log/Day07_Active_Directory_User_Troubleshooting.md

### Updated

01_Prompt_Library/README.md

## Prompt Created

### Prompt 007 - Active Directory User Account Troubleshooting Assistant

This prompt is designed to help troubleshoot Active Directory user account issues in a structured way.

It can help investigate:

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

## Active Directory Troubleshooting Areas Learned

### 1. Login Issue Check

User login problems may be caused by wrong password, account lockout, password expiry, disabled account, domain connection issue, cached credentials, or MFA/VPN problems.

### 2. Account Lockout Check

Account lockouts can happen when old passwords are saved in mapped drives, mobile devices, services, scheduled tasks, VPN clients, or Windows Credential Manager.

### 3. Password Status Check

Password expiry, password reset, and last password change time are important when troubleshooting login problems.

### 4. Group Membership Check

AD group membership affects access to shared folders, applications, printers, VPN, and internal systems.

### 5. Permission Troubleshooting

Access issues may be caused by missing group membership, incorrect folder permission, permission not refreshed yet, or AD replication delay.

### 6. AD Tools and Permission Awareness

Some Active Directory commands require RSAT tools, the ActiveDirectory PowerShell module, domain connection, and proper administrator permission.

## Commands Practiced

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

## Active Directory Troubleshooting Checklist Learned

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

## Important Safety Notes

Read-only checks should be performed first.

Account modification commands should only be used when approved.

Examples of commands that require extra care:

- Unlock-ADAccount
- Set-ADAccountPassword
- Enable-ADAccount
- Disable-ADAccount

These commands can affect user access and should be documented properly.

## Common Root Causes Learned

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
- Git and GitHub workflow
- AI prompt engineering for system administration

## Git Commands Practiced

git status

git add .

git commit -m "Add Active Directory user troubleshooting prompt"

git commit -m "Update prompt library index with Active Directory prompt"

git push

git log --oneline -3

## Reflection

Today I learned that Active Directory user account troubleshooting is a common and important IT Support task.

Many user login and access issues are related to password status, account lockout, group membership, permissions, VPN, MFA, or domain connectivity.

I also learned that AD troubleshooting should be done carefully because user account changes can directly affect access to company systems.

This prompt helps me investigate user account issues step by step and document the troubleshooting process professionally.

## Next Step

Continue building the AI Prompt Library with an IT Documentation Generator Prompt.
