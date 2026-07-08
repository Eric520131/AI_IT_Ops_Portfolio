# Day 6 Learning Log - Network Troubleshooting Prompt

## Date

Day 6

## Topic

Creating a Network Troubleshooting Prompt for IT Support and System Administration.

## What I Completed

Today, I created a reusable AI prompt for network troubleshooting.

I also updated the AI Prompt Library index to include Prompt 006.

This improves my GitHub portfolio by showing practical IT support skills using AI, network commands, PowerShell, DNS checks, IP configuration checks, shared folder troubleshooting, VPN checks, firewall checks, and documentation.

## Files Created or Updated

### Created

01_Prompt_Library/Prompt_006_Network_Troubleshooting.md

00_Learning_Log/Day06_Network_Troubleshooting.md

### Updated

01_Prompt_Library/README.md

## Prompt Created

### Prompt 006 - Network Troubleshooting Assistant

This prompt is designed to help troubleshoot common network issues in a structured way.

It can help investigate:

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

## Network Troubleshooting Areas Learned

### 1. IP Configuration Check

Checking IP configuration helps confirm whether the device has a valid IP address, subnet mask, gateway, and DNS server.

This is useful for identifying DHCP issues, incorrect static IP settings, and network adapter problems.

### 2. Gateway Connectivity Check

Testing the gateway helps confirm whether the device can reach the local network router or gateway.

If the gateway cannot be reached, the issue may be related to Wi-Fi, LAN cable, switch port, VLAN, adapter, or IP settings.

### 3. DNS Check

DNS troubleshooting helps confirm whether domain names can be resolved correctly.

A user may have internet access by IP address but still fail to access websites or servers by name if DNS is not working.

### 4. Ping and Connectivity Test

Ping helps test basic reachability.

However, ping failure does not always mean the target is offline because some firewalls block ICMP traffic.

### 5. Port Connectivity Test

Port testing helps confirm whether a specific service is reachable.

For example, port 445 is commonly related to SMB/shared folder access, and port 443 is commonly related to HTTPS.

### 6. Shared Folder Troubleshooting

Shared folder access issues may be caused by network reachability, DNS, SMB port access, permissions, account problems, or server availability.

### 7. VPN Troubleshooting

VPN issues may be caused by internet connection problems, authentication issues, expired credentials, DNS, routing, MFA, firewall, or VPN client problems.

## Commands Practiced

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

### Test SMB/shared folder port

Test-NetConnection SERVERNAME -Port 445

### Check mapped drives

net use

### Check firewall profile

Get-NetFirewallProfile

## Network Troubleshooting Checklist Learned

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

## Common Root Causes Learned

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
- VPN issue investigation
- Firewall profile checking
- PowerShell network commands
- IT documentation
- Git and GitHub workflow
- AI prompt engineering for IT support

## Git Commands Practiced

git status

git add .

git commit -m "Add network troubleshooting prompt"

git commit -m "Update prompt library index with network prompt"

git push

git log --oneline -3

## Reflection

Today I learned that network troubleshooting should follow a structured process.

Instead of guessing, I should check each layer step by step, including physical connection, IP address, gateway, DNS, firewall, VPN, server reachability, port connectivity, and permissions.

I also learned that one symptom can have many possible causes. For example, a shared folder issue may be caused by DNS, network connectivity, SMB port access, user permission, or server problems.

This prompt helps me use AI to investigate network issues in a professional and repeatable way.

## Next Step

Continue building the AI Prompt Library with an Active Directory User Account Troubleshooting Prompt.
