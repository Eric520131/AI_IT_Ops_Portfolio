# Day 9 Learning Log - PowerShell Automation Script Review Prompt

## Date

Day 9

## Topic

Creating a PowerShell Automation Script Review Prompt for IT Support and System Administration.

## What I Completed

Today, I created a reusable AI prompt for reviewing and improving PowerShell automation scripts.

I also updated the AI Prompt Library index to include Prompt 009.

This improves my GitHub portfolio by showing practical skills in PowerShell automation, script safety review, error handling, documentation, and production readiness checking.

## Files Created or Updated

### Created

01_Prompt_Library/Prompt_009_PowerShell_Automation_Script_Review.md

00_Learning_Log/Day09_PowerShell_Automation_Script_Review.md

### Updated

01_Prompt_Library/README.md

## Prompt Created

### Prompt 009 - PowerShell Automation Script Review Assistant

This prompt is designed to help review PowerShell scripts before using them in IT Support or System Administration work.

It can help review scripts for:

- User account checks
- Group membership checks
- Disk space reports
- Service status checks
- Event log exports
- Backup checks
- Server health checks
- Network checks
- Scheduled task checks
- CSV report generation
- Basic automation safety review

## PowerShell Automation Areas Learned

### 1. Script Purpose Review

Before running a script, I should understand what the script is designed to do.

This helps prevent running commands without knowing their effect.

### 2. Safety Review

PowerShell scripts should be reviewed for risky actions.

Commands that delete, modify, stop, disable, overwrite, or change system settings should be checked carefully before use.

### 3. Permission Review

Some scripts may require Administrator permission or special system access.

It is important to know what permission is required before running a script.

### 4. Path and Folder Validation

A script should check whether the output folder exists before exporting files.

Example:

New-Item -Path C:\Temp -ItemType Directory -Force

### 5. Error Handling

Good scripts should include basic error handling where useful.

This makes automation more reliable and easier to troubleshoot.

### 6. Output and Reporting

Automation scripts should produce useful output, such as CSV reports, logs, or clear screen output.

This is important for documentation and handover.

### 7. Production Readiness

Before using a script in a real environment, it should be reviewed for safety, reliability, readability, permissions, and rollback options.

## Commands Practiced

### Check execution policy

Get-ExecutionPolicy

### Check current PowerShell version

$PSVersionTable.PSVersion

### Test if path exists

Test-Path C:\Temp

### Create folder safely

New-Item -Path C:\Temp -ItemType Directory -Force

### Export running services

Get-Service | Where-Object {$_.Status -eq "Running"} | Export-Csv -Path C:\Temp\RunningServices.csv -NoTypeInformation

### Run script from current folder

.\scriptname.ps1

### Show command help

Get-Help Get-Service

### Show command examples

Get-Help Get-Service -Examples

## Script Review Checklist Learned

### Safety

- Does the script only read information?
- Does the script modify system settings?
- Does the script stop or restart services?
- Does the script delete files?
- Does the script change user accounts?
- Does the script require administrator permission?

### Reliability

- Does the script check whether the folder path exists?
- Does the script handle errors?
- Does the script use clear variable names?
- Does the script produce useful output?
- Does the script export results properly?

### Documentation

- Does the script have comments?
- Is the purpose clear?
- Are risks explained?
- Are prerequisites listed?
- Are testing steps included?

## Problem Encountered

While creating the Prompt 009 file, the first long version did not complete successfully.

PowerShell showed the continuation prompt:

>>

This happened because the multi-line text block was not completed properly.

The file was not created at first, and the check showed:

Test-Path .\01_Prompt_Library\Prompt_009_PowerShell_Automation_Script_Review.md

Result:

False

## Cause

PowerShell was still waiting for the end of the here-string block.

The ending line was not completed correctly, so the command did not finish.

## Solution

I cancelled the unfinished input using Ctrl + C.

Then I recreated the file using a shorter and safer version of the content.

After that, the file was created successfully and committed to GitHub.

## Skills Practiced

- PowerShell script review
- PowerShell automation
- Script safety analysis
- Error handling awareness
- CSV export
- Path checking
- Here-string troubleshooting
- IT automation documentation
- Windows system administration
- Git and GitHub workflow
- AI prompt engineering for IT operations

## Git Commands Practiced

git status

git add .

git commit -m "Add PowerShell automation script review prompt"

git commit -m "Update prompt library index with PowerShell automation prompt"

git push

git log --oneline -3

## Reflection

Today I learned that PowerShell automation can save time, but it must be reviewed carefully before use.

A script should be checked for safety, permissions, output, reliability, and production readiness.

I also learned that when PowerShell shows the continuation prompt, it usually means the command is not complete yet.

This is useful because real IT work often requires checking scripts carefully before running them in a production environment.

## Next Step

Continue building the AI Prompt Library with a Patch Management Troubleshooting Prompt.
