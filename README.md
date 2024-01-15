# Active Directory Home Lab with PowerShell Automation

## Overview

This is a general, simplified overview on a home lab activity i did. It uses Oracle VirtualBox to create a reliable home lab with Active Directory. One of The main goals is to demonstrate practical cybersecurity abilities by establishing a secure Windows networking environment. This lab emphasizes critical aspects of cybersecurity, such as network routing considerations, Active Directory security configurations, and best practices for user management.

## Lab Highlights

- **Languages Used:**
  - **PowerShell:** Automates the creation of 1,000 users with help from a list of randomly generated names.

### Lab Setup High-Level Overview

#### 1. Oracle VirtualBox
- Download and install Oracle VirtualBox for using virtual machines.

#### 2. Preparing Operating Systems
- Download Windows 10 and Server 2019 ISO files.
- Create virtual machines for each OS.

#### 3. Configuring Domain Controller
- Set up the Domain Controller.
- Install Server 2019, assign IP addresses, and configure Active Directory.
- Establish routing for network clients to securely access the internet.
- This allows users on the connected client to gain access to the internet, the clients on the private network can reach the internet through the domain controller

#### 4. Setting Up DHCP
- Implement DHCP on the domain controller for seamless IP assignment to Windows 10 machines.

#### 5. PowerShell Automation
- Execute a PowerShell script to create approximately a thousand users in Active Directory.
- Simulate a corporate/organizational structure, showcasing user management capabilities.
- This can involves emulating user creation, modification, or deletion processes, providing a sort of sandbox on doing practical administrative tasks.

#### 6. Client Machine Set Up
- Create another virtual machine with Windows 10.
- Connect it to the private network and seamlessly join it to the secure domain.

## Visuals

### Active Directory Diagram
![Active Directory Diagram](https://iili.io/JYCdNrG.png)

### After Running PowerShell User Creation Script
![PowerShell User Creation](https://iili.io/JYCdw1s.png)

### Client Computer Connected to the Domain
![Client Computer Connected to the Domain](https://iili.io/JYCdXLX.png)

## Why This Lab Matters

This lab demonstrates how to apply practical knowledge of Windows networking environment security. 
It demonstrates a commitment to cybersecurity principles by applying Active Directory security configurations and user management practices.


