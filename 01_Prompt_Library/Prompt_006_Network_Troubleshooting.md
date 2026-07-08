# Prompt 006 - Network Troubleshooting Assistant

## Purpose

Use this prompt to troubleshoot basic network issues for IT Support and System Administration work.

This prompt is useful when investigating:

- No internet connection
- Cannot access server
- Cannot access shared folder
- DNS issues
- IP address issues
- Gateway issues
- Wi-Fi or LAN issues
- Slow network
- Ping failure
- Network drive mapping issue
- Firewall or port connectivity issue
- VPN connectivity issue

## Prompt

You are an experienced IT Support Engineer and Network Troubleshooting Assistant.

I will provide a network issue, error message, screenshot, command output, IP configuration, ping result, DNS result, or user report.

Please analyze the issue using this structure:

1. Network Issue Summary
2. What the Symptoms Mean
3. Possible Root Causes
4. Most Likely Cause
5. Questions to Confirm
6. Step-by-Step Troubleshooting Plan
7. Commands or Tools to Check
8. Safe Fix Recommendation
9. Risk Level
10. Escalation Criteria
11. Documentation Notes

Please explain clearly and practically.

Assume I am learning network troubleshooting for IT Support and System Administration.

When suggesting commands:

- Start with read-only checks first
- Explain what each command checks
- Mention whether Administrator permission is required
- Warn me before changing IP, DNS, firewall, VPN, or adapter settings
- Keep the troubleshooting steps suitable for a production environment

## Example Use Case 1

Issue:

User cannot access the internet.

Expected help:

Guide me to check physical connection, Wi-Fi/LAN status, IP address, gateway, DNS, ping test, and browser or proxy settings.

## Example Use Case 2

Issue:

User cannot access a shared folder.

Expected help:

Guide me to check network connectivity, server reachability, DNS name resolution, permissions, SMB access, and mapped drive status.

## Example Use Case 3

Issue:

Ping to server failed.

Expected help:

Explain possible causes such as wrong IP, network unreachable, firewall blocking ICMP, server offline, VLAN issue, or routing issue.

## Useful Network Commands

### Check IP configuration

ipconfig /all

### Release IP address

ipconfig /release

### Renew IP address

ipconfig /renew

### Flush DNS cache

ipconfig /flushdns

### Test ping to Google DNS

ping 8.8.8.8

### Test ping to domain

ping google.com

### Test connection using PowerShell

Test-Connection 8.8.8.8 -Count 4

### Test DNS resolution

nslookup google.com

### Check route path

tracert google.com

### Check network adapters

Get-NetAdapter

### Check IP address configuration

Get-NetIPConfiguration

### Check DNS client server address

Get-DnsClientServerAddress

### Test TCP port connectivity

Test-NetConnection google.com -Port 443

### Test server port

Test-NetConnection SERVERNAME -Port 445

### Check mapped drives

net use

### Check firewall profile

Get-NetFirewallProfile

## Network Troubleshooting Checklist

1. Confirm the user issue
2. Check whether the issue affects one user or many users
3. Check physical connection or Wi-Fi status
4. Check IP address
5. Check subnet mask
6. Check default gateway
7. Check DNS server
8. Ping gateway
9. Ping external IP address
10. Ping domain name
11. Test DNS resolution
12. Test target server or service port
13. Check firewall or security software
14. Check VPN status if applicable
15. Document findings and next action

## Common Root Causes

- Network cable unplugged
- Wi-Fi disconnected
- Wrong IP address
- DHCP issue
- DNS issue
- Gateway issue
- Firewall blocking traffic
- VPN disconnected
- Server offline
- Switch port issue
- VLAN or routing issue
- Proxy setting issue
- Permission issue for shared folder access
- SMB or port 445 blocked

## Skills Practiced

- Network troubleshooting
- IP configuration checking
- DNS troubleshooting
- Ping and connectivity testing
- Port testing
- Shared folder access troubleshooting
- PowerShell network commands
- IT documentation
- AI prompt engineering for IT support

## Reflection

Network troubleshooting is an important IT Support and System Administrator skill.

A good network troubleshooting process should be structured.

Instead of guessing, I should check the connection layer by layer, including physical connection, IP address, gateway, DNS, firewall, VPN, server availability, and permissions.

This prompt helps me use AI to investigate network issues in a clear and professional way.
