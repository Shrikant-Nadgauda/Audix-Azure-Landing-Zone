# 🛡️ Create Azure Bastion and Secure VM Access

> **Document:** `27-Create-Azure-Bastion-and-Secure-VM-Access.md`

![Azure](https://img.shields.io/badge/Azure-Bastion-0078D4?style=for-the-badge&logo=microsoftazure)
![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?style=for-the-badge&logo=terraform)
![Security](https://img.shields.io/badge/Security-Enterprise-success?style=for-the-badge)

---

# 📖 Introduction

अब तक हमने VM-01 और VM-02 पर Public IP का उपयोग करके SSH Login किया।

Production Environment में यह तरीका सुरक्षित नहीं माना जाता।

Microsoft Azure की Best Practice है कि Virtual Machines पर Public IP न रखकर Azure Bastion का उपयोग किया जाए।

Azure Bastion Browser आधारित Secure SSH/RDP Access प्रदान करता है।

---

# 🎯 Objective

इस Chapter में हम सीखेंगे

- Azure Bastion क्या है
- Azure Bastion क्यों उपयोग करते हैं
- Azure Bastion के लिए Public IP बनाना
- Azure Bastion Deploy करना
- Azure Portal से VM Access करना
- Public IP हटाने की तैयारी करना

---

# 🏗️ Current Architecture

```text
Internet
     │
     │
 ┌────────────┐
 │ Public IP  │
 └─────┬──────┘
       │
   VM-01

 ┌────────────┐
 │ Public IP  │
 └─────┬──────┘
       │
   VM-02
```

---

# 🏗️ Target Architecture

```text
Internet
      │
      ▼
Azure Bastion
      │
      ▼
AzureBastionSubnet
      │
      ├─────────────┐
      │             │
      ▼             ▼
    VM-01         VM-02
```

---

# 📌 Azure Bastion Requirements

| Requirement | Value |
|------------|-------|
| Dedicated Subnet | AzureBastionSubnet |
| Minimum Size | /26 |
| Public IP | Standard SKU |
| Region | Southeast Asia |

---

# 📌 Terraform Files

इस Chapter में मुख्य रूप से

```text
main.tf
```

में Azure Bastion और Public IP Resource जोड़ेंगे।

---

# 📌 Deployment Flow

```text
Create Public IP
        │
        ▼
Deploy Azure Bastion
        │
        ▼
Verify Deployment
        │
        ▼
Connect VM-01
        │
        ▼
Connect VM-02
```

---

# 📌 Azure Portal Verification

Azure Portal

```text
Resource Group

↓

Azure Bastion
```

Status

```text
Running
```

---

# 📌 Verification Checklist

- Azure Bastion Running
- Public IP Created
- AzureBastionSubnet Used
- Bastion Connected Successfully

---

# 💡 Best Practices

- Azure Bastion के लिए हमेशा Standard Public IP उपयोग करें।
- AzureBastionSubnet का नाम कभी Change न करें।
- AzureBastionSubnet कम से कम /26 होना चाहिए।
- VM पर Public IP हटाने से पहले Bastion Verify करें।

---

# 🚨 Common Mistakes

❌ AzureBastionSubnet का गलत नाम

❌ /27 या /28 Subnet

❌ Basic SKU Public IP

❌ Bastion Deploy होने से पहले Public IP हटाना

---

# 📚 आपने क्या सीखा?

- Azure Bastion का उद्देश्य
- Enterprise Secure Access
- AzureBastionSubnet
- Bastion Architecture
- Bastion Deployment Flow

---

# अब Public IP हटाने के बाद Architecture ऐसा दिखेगा:

```md

                Internet
                │
                ▼
        Azure Load Balancer
                │
        ┌─────────────┴─────────────┐
        │                           │
        ▼                           ▼
VM-01                      VM-02
(Private IP)               (Private IP)
        ▲                           ▲
        └─────────────┬─────────────┘
                │
                Azure Virtual Network
                │
                Azure Bastion
                │
                Administrator (SSH/RDP)
```
# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `26-Deploy-Second-Linux-Virtual-Machine-VM02.md` | `README.md` | `28-Access-VMs-Using-Azure-Bastion.md` |

---

> 🚀 **Project Status:** Ready to Deploy Azure Bastion

---

# 🚀 28 - Access Azure Virtual Machines Using Azure Bastion

**Document:** `28-Access-Azure-Virtual-Machines-Using-Azure-Bastion.md`

---

# Azure Terraform Security

---

# 📖 Introduction

पिछले Chapter में हमने Azure Bastion Successfully Deploy किया।

अब समय है Azure Bastion का उपयोग करके अपनी Virtual Machines को Secure तरीके से Access करने का।

अब तक हम VM-01 और VM-02 में Public IP Address का उपयोग करके SSH Login कर रहे थे।

Production Environment में यह तरीका सुरक्षित नहीं माना जाता क्योंकि Public IP इंटरनेट पर दिखाई देती है और SSH Port Attack का खतरा रहता है।

Azure Bastion इस समस्या का समाधान प्रदान करता है।

Azure Bastion Browser आधारित Secure SSH और RDP Access उपलब्ध कराता है।

Administrator को केवल Azure Portal तक पहुँचना होता है।

इसके बाद Azure Bastion स्वयं Private Network के माध्यम से Virtual Machine से Connect होता है।

इस प्रकार Virtual Machine की Public IP की आवश्यकता समाप्त हो जाती है।

---

# 🎯 Objective

इस Lab में हम सीखेंगे

- Azure Bastion से Virtual Machine कैसे Connect होती है
- Browser आधारित SSH कैसे कार्य करती है
- Authentication Process कैसे होती है
- SSH Private Key कहाँ उपयोग होती है
- Azure Portal के माध्यम से VM Access करना
- Connection के दौरान Backend में क्या होता है

---

# 🏗️ Connection Architecture

```text
                 Administrator
                 (Your Laptop)
                        │
                        │ HTTPS (443)
                        ▼
                 Azure Portal
                        │
                        ▼
                 Azure Bastion
                        │
                 Private Network
                        │
           ┌────────────┴────────────┐
           │                         │
           ▼                         ▼
       VM-01                    VM-02
     Private IP              Private IP
```

---

# 📌 Understanding the Connection Flow

जब Administrator Azure Portal में Connect Button दबाता है तब Connection सीधे Virtual Machine तक नहीं जाती।

पहले Browser Azure Portal से HTTPS के माध्यम से जुड़ता है।

Azure Portal Request को Azure Bastion Service तक भेजता है।

Azure Bastion उसी Virtual Network के Private Network का उपयोग करके Virtual Machine तक SSH Connection स्थापित करता है।

इसलिए Administrator और Virtual Machine के बीच कभी भी Direct Internet Connection नहीं बनता।

---

# 📌 Step 1 - Open Azure Portal

Azure Portal में Login करें।

---

# Step 2 - Open Virtual Machine

```
Virtual Machines
```

↓

```
VM-01
```

---

# Step 3 - Open Connect Menu

```
Connect
```

↓

```
Bastion
```

अब Azure Bastion Connection Window Open होगी।

---

# Step 4 - Authentication Window

Azure Portal निम्न जानकारी माँगेगा।

| Field | Value |
|--------|-------|
| Username | azureuser |
| Authentication Type | SSH Private Key |
| Private Key | id_rsa |

---

# Step 5 - Username

Terraform में हमने Administrator User बनाया था।

```hcl
admin_username = "azureuser"
```

इसलिए Username हमेशा

```
azureuser
```

रहेगा।

यदि गलत Username दिया गया तो Login Fail हो जाएगा।

---

# Step 6 - Authentication Type

Azure Bastion सामान्यतः दो Authentication Methods प्रदान करता है।

- Password
- SSH Private Key

हमारी Virtual Machine Password Authentication Disable होने के कारण केवल SSH Key स्वीकार करेगी।

इसलिए

```
SSH Private Key
```

Select करें।

---

# Step 7 - Select Private Key

अब सबसे महत्वपूर्ण Step आता है।

यहाँ Public Key Select नहीं करनी है।

❌ गलत

```
id_rsa.pub
```

✅ सही

```
id_rsa
```

Windows में इसका सामान्य Path

```
C:\Users\ADMIN\.ssh\id_rsa
```

---

# 📌 Public Key और Private Key

Terraform ने VM बनाते समय यह Public Key Install की थी।

```hcl
public_key = file("~/.ssh/id_rsa.pub")
```

VM के अंदर

```
authorized_keys
```

File में यही Public Key Stored होती है।

जब Login करते हैं तब Azure Bastion हमारी Private Key का उपयोग करके Verify करता है।

यदि दोनों Keys Match करती हैं तो Login सफल हो जाता है।

---

# Authentication Flow

```text
Laptop

Private Key (id_rsa)

        │

        ▼

Azure Bastion

        │

        ▼

VM

authorized_keys

        │

Compare Public Key

        │

Match

        │

Login Successful
```

---

# यदि Key Match नहीं करती

यदि Private Key और Public Key अलग हों तो Login नहीं होगा।

सामान्य Error

```
Permission denied (publickey)
```

या

```
No supported authentication methods available
```

ऐसी स्थिति में VM की Public Key तथा Local Machine की Private Key को Verify करना आवश्यक होता है।

---

# Step 8 - Click Connect

अब

```
Connect
```

Button दबाएँ।

कुछ Seconds बाद Browser में SSH Terminal Open हो जाएगी।

```text
azureuser@vm01:~$
```

अब Administrator सीधे VM के Linux Terminal पर कार्य कर सकता है।

---

# Behind the Scenes

Connection बनने के दौरान निम्न Process होती है।

```text
Browser

↓

Azure Portal

↓

Azure Bastion

↓

Private Network

↓

SSH

↓

VM
```

ध्यान दें कि Browser सीधे VM से SSH नहीं करता।

SSH Connection Azure Bastion स्थापित करता है।

---

# Production Benefits

Azure Bastion उपयोग करने के प्रमुख लाभ

- Virtual Machine पर Public IP आवश्यक नहीं
- SSH Port Internet पर Open नहीं रहता
- Secure Browser आधारित Access
- Enterprise Security
- Microsoft Recommended Architecture

---

# Verification

यदि Connection सफल है तो Browser में Linux Terminal दिखाई देगी।

```text
azureuser@vm01:~$
```

यही Azure Bastion Connection का प्रमाण है।

---

# 📚 What You Learned

- Azure Bastion Connection Flow
- Browser Based SSH
- Authentication Process
- SSH Private Key Usage
- Public Key Verification
- Secure Administrative Access

---

# 🚀 Next Lab

```
28.1 - Connect Azure Bastion Using Native SSH Client
```

अगले Lab में हम Azure Bastion के Native Client Feature को समझेंगे और PowerShell, Azure CLI तथा MobaXterm का उपयोग करके Bastion के माध्यम से Virtual Machine Access करेंगे।

---

# 🚀 28.0.1 - Troubleshooting Azure Bastion "You Have Been Disconnected"

**Document:** `28.0.1-Troubleshooting-Azure-Bastion-Disconnected.md`

---

# 📖 Introduction

Azure Bastion का उपयोग करते समय कभी-कभी Browser में निम्न Error दिखाई देती है।

```text
You have been disconnected.
```

या

```text
Disconnected

The connection to the remote session has ended.
```

यह Error हमेशा Azure Bastion की समस्या नहीं होती।

कई बार इसका कारण Browser Session, NSG Rule, Authentication या Virtual Machine Configuration होता है।

इस Lab में हम Step-by-Step सभी संभावित कारणों को Verify करेंगे।

---

# 🎯 Objective

इस Lab में हम सीखेंगे

- Azure Bastion Disconnect क्यों होता है
- Connection कैसे Verify करें
- Common Issues कैसे Resolve करें
- Production Troubleshooting Process

---

# 🏗️ Connection Flow

```text
Administrator

        │

        ▼

Azure Portal

        │

        ▼

Azure Bastion

        │

        ▼

Virtual Machine
```

यदि इस Flow का कोई भी Component Fail होता है तो Bastion Session Disconnect हो सकती है।

---

# Root Cause 1 - Virtual Machine Stopped

सबसे पहले Virtual Machine की स्थिति Verify करें।

Azure Portal

```
Virtual Machine

↓

Overview

↓

Status
```

Expected

```
Running
```

यदि VM

```
Stopped

Stopped (Deallocated)
```

दिख रही है

तो पहले VM Start करें।

---

# Root Cause 2 - Bastion Status

Azure Portal

```
Azure Bastion

↓

Overview
```

Verify

```
Status

Running
```

यदि Bastion Provisioning में हो

या

Failed

हो

तो Connection स्थापित नहीं होगी।

---

# Root Cause 3 - Wrong Username

Verify करें

```
azureuser
```

यदि

```
admin

root

ubuntu
```

जैसा Username उपयोग किया गया है

तो Authentication Fail होगी।

---

# Root Cause 4 - Wrong SSH Key

हमेशा

```
id_rsa
```

Select करें।

कभी भी

```
id_rsa.pub
```

Select न करें।

---

# Root Cause 5 - SSH Service Stopped

Azure Run Command

↓

RunShellScript

Command

```bash
sudo systemctl status ssh
```

Expected

```
active (running)
```

यदि Service बंद है

```bash
sudo systemctl restart ssh
```

---

# Root Cause 6 - Password Authentication

यदि VM Password Authentication Disable है

```hcl
disable_password_authentication = true
```

तो केवल SSH Private Key से Login करें।

Password उपयोग करने पर Connection Disconnect हो सकती है।

---

# Root Cause 7 - Network Security Group

Verify करें

```
Virtual Machine

↓

Networking
```

Ensure

```
Allow SSH

TCP

22
```

और

```
AzureBastionSubnet

Required Rules
```

दोनों उपलब्ध हों।

---

# Root Cause 8 - Browser Issue

यदि Browser Session पुरानी हो

तो

- Refresh करें
- Sign Out करें
- पुनः Login करें
- Incognito Mode में Try करें
- दूसरे Browser से Test करें

---

# Root Cause 9 - Azure Bastion Session Timeout

यदि लंबे समय तक कोई Activity नहीं होती

तो Azure Bastion Session Automatically Disconnect हो सकती है।

यह सामान्य व्यवहार है।

---

# Root Cause 10 - VM Resource Utilization

Azure Run Command

```bash
top
```

या

```bash
free -h
```

यदि VM पूरी तरह Hang हो चुकी है

तो Bastion Session भी Disconnect हो सकती है।

---

# Troubleshooting Flow

```text
Disconnected

      │

      ▼

VM Running ?

      │

      ▼

Bastion Running ?

      │

      ▼

Correct Username ?

      │

      ▼

Correct SSH Key ?

      │

      ▼

SSH Service Running ?

      │

      ▼

NSG Rules OK ?

      │

      ▼

Reconnect
```

---

# Best Practices

- VM को हमेशा Running रखें।
- Bastion Deploy होने के बाद ही Connection करें।
- सही Username उपयोग करें।
- हमेशा Private Key (`id_rsa`) Select करें।
- Browser Refresh करके दोबारा Connect करें।
- लंबे Idle Session से बचें।

---

# Verification Checklist

- ✅ Virtual Machine Running
- ✅ Azure Bastion Running
- ✅ SSH Service Active
- ✅ Correct Username
- ✅ Correct Private Key
- ✅ Browser Session Active

---

# 📚 What You Learned

- Azure Bastion Disconnect Issue
- Common Root Causes
- Step-by-Step Troubleshooting
- Production Verification Process

---

# 🚀 Next Lab

```
28.1 - Connect Azure Bastion Using Native Client
```

अब हम Azure Bastion का उपयोग PowerShell, Azure CLI और MobaXterm के साथ करेंगे।

---

# 🚀 28.0.2 - Troubleshooting Azure Bastion Authentication Issue (Password Login)

**Document:** `28.0.2-Troubleshooting-Azure-Bastion-Authentication-Issue.md`

---

# 📖 Introduction

Azure Bastion Deploy करने के बाद VM-01 में Login करते समय Browser में तुरंत

```text
You have been disconnected
```

Error दिखाई दे रही थी।

Virtual Machine Running थी।

Azure Bastion भी Running था।

Network सही था।

लेकिन Login नहीं हो रहा था।

इस Lab में हम सीखेंगे कि समस्या कहाँ थी और उसे कैसे Resolve किया गया।

---

# 🎯 Problem Statement

Login करते समय

```text
You have been disconnected
```

Browser Session तुरंत बंद हो जाती थी।

---

# Initial Assumption

सबसे पहले हमने सोचा

- Azure Bastion खराब है
- VM बंद है
- Port 22 Block है
- NSG गलत है

लेकिन इनमें से कोई भी कारण नहीं था।

---

# Environment

Azure VM

```
VM-01
```

Authentication

```
Password Authentication
```

Username

```
azureuser
```

Azure Bastion

```
Running
```

VM Status

```
Running
```

---

# Investigation Process

हमने निम्न सभी चीज़ें Verify कीं।

---

## Step 1 - VM Status

Azure Portal

```
Virtual Machine

↓

Overview
```

Verified

```
Running
```

---

## Step 2 - Azure Bastion

Verified

```
Provisioning State

Succeeded
```

Status

```
Running
```

---

## Step 3 - Network

Verified

```
Virtual Network

NIC

NSG

Port 22
```

सभी सही थे।

---

## Step 4 - SSH Service

VM के अंदर SSH Service भी Running थी।

---

## Step 5 - Authentication Method

यहीं गलती हुई।

VM-01 Terraform से Password Authentication के साथ बनाई गई थी।

```terraform
disable_password_authentication = false

admin_username = "azureuser"

admin_password = "P@ssw0rd@123456"
```

लेकिन Login करते समय सही Authentication Method Select नहीं किया गया था।

---

# Root Cause

Azure Bastion में Authentication Method गलत चुनी गई थी।

गलती

```
SSH Private Key
```

या

```
Azure AD
```

Select किया गया।

जबकि VM Password Authentication पर बनी थी।

---

# Correct Authentication

Azure Portal

```
Virtual Machine

↓

Connect

↓

Bastion
```

Configuration

```
Authentication Type

Password
```

Username

```
azureuser
```

Password

```
P@ssw0rd@123456
```

---

# Result

Login तुरंत Successful हो गया।

```
Connected Successfully
```

---

# Authentication Flow

```text
Azure Portal

        │

        ▼

Azure Bastion

        │

        ▼

Authentication Type

        │

        ▼

Password

        │

        ▼

Username

azureuser

        │

        ▼

Password

P@ssw0rd@123456

        │

        ▼

VM-01 Login Successful
```

---

# Lesson Learned

हर Virtual Machine का Authentication Method अलग हो सकता है।

यदि VM Password Authentication पर बनी है

तो Azure Bastion में भी Password ही Select करना होगा।

यदि VM SSH Key Authentication पर बनी है

तो Private Key Select करनी होगी।

Authentication Type गलत होने पर

```
You have been disconnected
```

या

```
Authentication Failed
```

जैसी Errors दिखाई दे सकती हैं।

---

# Best Practices

- VM Create करते समय Authentication Method Documentation में लिखें।
- Password VM के लिए Password Authentication ही उपयोग करें।
- SSH Key VM के लिए केवल Private Key उपयोग करें।
- Login Failure आने पर सबसे पहले Authentication Method Verify करें।

---

# Verification Checklist

- ✅ VM Running
- ✅ Azure Bastion Running
- ✅ Correct Username
- ✅ Correct Authentication Type
- ✅ Login Successful

---

# 📚 What You Learned

- Azure Bastion Authentication Process
- Password vs SSH Key Authentication
- Root Cause Analysis
- Authentication Troubleshooting
- Production Best Practices

---

# 🚀 Next Lab

```
29 - Connect VM-02 Using Azure Bastion (SSH Key Authentication)
```

इस Lab में हम Password Authentication से अलग, SSH Key Authentication वाली VM-02 में Azure Bastion के माध्यम से Login करेंगे।

---

# 🚀 28.0.2 - Troubleshooting Azure Bastion "You Have Been Disconnected"

**Document:** `28.0.2-Troubleshooting-Azure-Bastion-Disconnected.md`

---

# 📖 Introduction

Azure Bastion Deploy होने के बाद VM-01 में Login करते समय Browser में

```text
You have been disconnected
```

Error दिखाई दे रही थी।

VM Running थी।

Azure Bastion भी Running था।

लेकिन Session तुरंत Disconnect हो रही थी।

इस Lab में हम सीखेंगे कि Production Environment में इस प्रकार की समस्या को कैसे Troubleshoot किया जाता है।

---

# Understanding the Error

```
You have been disconnected
```

इस Error का मतलब हमेशा Password गलत होना नहीं होता।

Azure Bastion Session कई कारणों से Disconnect हो सकती है।

जैसे

- Wrong Authentication Method
- Wrong Username
- SSH Service Down
- VM Configuration
- Bastion Configuration
- NSG Issue
- VM Boot Issue

इसलिए Guess नहीं करना चाहिए।

Step by Step Verification करनी चाहिए।

---

# Troubleshooting Flow

```
User

    │

    ▼

Azure Bastion

    │

    ▼

VM Configuration Verify

    │

    ▼

Authentication Verify

    │

    ▼

SSH Service Verify

    │

    ▼

Network Verify

    │

    ▼

Login Successful
```

---

# Step 1 - Check VM Authentication Type

सबसे पहले Terraform Code Verify करें।

VM Password Authentication पर बनी है या SSH Key Authentication पर?

PowerShell

```powershell
Select-String -Path .\main.tf -Pattern "disable_password_authentication|admin_password|admin_ssh_key"
```

---

## If Output Shows

```terraform
disable_password_authentication = false

admin_password = "P@ssw0rd@123456"
```

मतलब

```
Password Authentication
```

Use करनी होगी।

---

## If Output Shows

```terraform
disable_password_authentication = true

admin_ssh_key {

    username = "azureuser"

}
```

मतलब

```
SSH Private Key
```

Use करनी होगी।

---

# Step 2 - Verify Username

Terraform में

```terraform
admin_username = "azureuser"
```

Portal में भी

```
Username

azureuser
```

ही होना चाहिए।

गलत Username होने पर भी Disconnect हो सकता है।

---

# Step 3 - Verify VM State

Portal

```
VM

↓

Overview
```

Check

```
Running
```

---

# Step 4 - Verify Bastion State

Portal

```
Azure Bastion

↓

Overview
```

Check

```
Provisioning State

Succeeded
```

Status

```
Running
```

---

# Step 5 - Verify SSH Service

यदि Linux VM है

Azure Run Command

```
RunShellScript
```

Command

```bash
sudo systemctl status ssh
```

Expected

```
Active (running)
```

---

# Step 6 - Verify Authentication Method

अब Terraform से Compare करें।

VM Configuration

```
Password Authentication
```

↓

Azure Bastion

```
Authentication Type

Password
```

---

या

VM Configuration

```
SSH Key Authentication
```

↓

Azure Bastion

```
SSH Private Key
```

दोनों Match होने चाहिए।

---

# Step 7 - Compare VM Configuration

VM-01

```terraform
admin_username = "azureuser"

disable_password_authentication = false

admin_password = "P@ssw0rd@123456"
```

VM-02

```terraform
admin_username = "azureuser"

disable_password_authentication = true

admin_ssh_key {

    username = "azureuser"

    public_key = file("~/.ssh/id_rsa.pub")

}
```

यहीं से तय होगा कि Bastion में Password देना है या Private Key।

---

# Root Cause Analysis

हमने शुरुआत में सोचा

```
SSH Service Down
```

नहीं।

```
Port 22 Block
```

नहीं।

```
NSG Problem
```

नहीं।

```
Azure Bastion Problem
```

नहीं।

असल कारण था

VM Authentication Method और Bastion Authentication Method Match नहीं कर रहे थे।

---

# Lesson Learned

Azure Bastion Login करने से पहले हमेशा VM Configuration Verify करें।

Guess करके Password या SSH Key Select न करें।

पहले Terraform Code देखें।

फिर उसी के अनुसार Authentication चुनें।

---

# Production Troubleshooting Checklist

✅ VM Running

✅ Bastion Running

✅ admin_username Verify

✅ disable_password_authentication Verify

✅ admin_password Verify

✅ admin_ssh_key Verify

✅ Authentication Type Match

✅ SSH Service Running

---

# What You Learned

- Bastion Disconnect का वास्तविक अर्थ
- VM Configuration Verification
- Password vs SSH Key Decision
- Terraform आधारित Authentication Validation
- Production Troubleshooting Methodology

---

# Next Lab

```
29 - Access VM-02 Using Azure Bastion (SSH Key Authentication)
```

अब हम Password Authentication नहीं, बल्कि SSH Key Authentication वाली VM-02 में Azure Bastion के माध्यम से Login करेंगे।

---

# 🚀 29 - Access VM-02 Using Azure Bastion (SSH Key Authentication)

**Document:** `29-Access-VM02-Using-Azure-Bastion-SSH-Key.md`

---

# 📖 Introduction

पिछले Lab में हमने Azure Bastion का उपयोग करके VM-01 में Password Authentication के माध्यम से Login किया।

अब हम VM-02 में Login करेंगे।

लेकिन इस बार Authentication Method अलग होगी।

VM-02 Password Authentication पर नहीं बनी है।

यह SSH Key Authentication का उपयोग करती है।

Production Environment में Linux Virtual Machines के लिए यही Recommended Method है।

---

# 🎯 Objective

इस Lab में हम सीखेंगे

- VM-02 Authentication Type Verify करना
- Terraform Code से Login Method पहचानना
- Azure Bastion में SSH Private Key का उपयोग
- Successful Login
- Common Authentication Errors
- Production Best Practices

---

# Current Architecture

```text
                 Internet
                      │
                      ▼
              Azure Portal
                      │
                      ▼
               Azure Bastion
                      │
          ┌───────────┴───────────┐
          │                       │
          ▼                       ▼
      VM-01                   VM-02
   Password Login         SSH Key Login
```

---

# Step 1 - Verify Terraform Configuration

सबसे पहले Terraform Code Verify करें।

```terraform
resource "azurerm_linux_virtual_machine" "vm02" {

    admin_username = "azureuser"

    disable_password_authentication = true

    admin_ssh_key {

        username = "azureuser"

        public_key = file("~/.ssh/id_rsa.pub")

    }

}
```

---

# Understanding the Configuration

```terraform
disable_password_authentication = true
```

मतलब

```
Password Login Disabled
```

---

```terraform
admin_ssh_key {

    public_key = file("~/.ssh/id_rsa.pub")

}
```

मतलब

Terraform ने Laptop की Public Key पढ़कर VM में Install कर दी।

---

# SSH Key Flow

```text
Laptop

│

├── id_rsa
│      │
│      │ Private Key
│      ▼

Azure Bastion

│

▼

VM-02

│

└── authorized_keys

        ▲

        │

id_rsa.pub
```

---

# Important Concept

VM के अंदर

```
Private Key
```

कभी Store नहीं होती।

VM में केवल

```
Public Key
```

Install होती है।

Login हमेशा

```
Private Key
```

से किया जाता है।

---

# Step 2 - Open Azure Portal

Azure Portal

↓

Virtual Machines

↓

VM-02

↓

Connect

↓

Bastion

---

# Step 3 - Authentication Type

Authentication

```
SSH Private Key
```

---

Username

```
azureuser
```

---

Private Key

Upload

```
id_rsa
```

⚠️

```
id_rsa.pub
```

Select नहीं करनी है।

---

# Why?

```
id_rsa.pub

↓

Public Key

↓

VM के अंदर रहती है
```

```
id_rsa

↓

Private Key

↓

Client से भेजी जाती है
```

---

# Authentication Process

```text
Laptop

Private Key

      │

      ▼

Azure Bastion

      │

      ▼

VM-02

      │

      ▼

authorized_keys

      │

Compare Keys

      │

      ▼

Login Success
```

---

# Successful Login

Login होने के बाद

Terminal Open हो जाएगी।

---

# Verify Login

```bash
hostname
```

Expected

```
vm02
```

---

```bash
whoami
```

Expected

```
azureuser
```

---

```bash
pwd
```

Expected

```
/home/azureuser
```

---

# Common Mistakes

❌ Password Select करना

---

❌ id_rsa.pub Upload करना

---

❌ Wrong Username

---

❌ Different Private Key Select करना

---

❌ SSH Key Delete कर देना

---

# Best Practices

- Password Authentication Disable रखें।
- केवल SSH Key Authentication उपयोग करें।
- Private Key सुरक्षित रखें।
- Public Key कभी Delete न करें।
- Private Key GitHub पर Upload न करें।

---

# Verification Checklist

- ✅ VM Running
- ✅ Azure Bastion Running
- ✅ Username Correct
- ✅ SSH Private Key Selected
- ✅ Login Successful

---

# What You Learned

- SSH Key Authentication
- Azure Bastion Login
- Public Key vs Private Key
- Authentication Flow
- Production Best Practices

---

# Next Lab

```
30 - Remove Public IP from VM-01
```

अब जब Azure Bastion Successfully काम कर रहा है, तो हम VM-01 की Public IP Remove करेंगे और Secure Architecture की ओर बढ़ेंगे।

---

# 🚀 30 - Remove Public IP from VM-01

**Document:** `30-Remove-Public-IP-from-VM01.md`

---

# 📖 Introduction

अब तक हमने Azure Bastion Successfully Configure कर लिया है।

VM-01 पर Azure Bastion के माध्यम से Login भी Verify कर लिया है।

इसका अर्थ है कि अब हमें VM-01 पर Public IP रखने की आवश्यकता नहीं है।

Production Environment में किसी भी Internal Linux Server पर Public IP रखना Security Risk माना जाता है।

अब हम VM-01 की Public IP Remove करेंगे ताकि VM केवल Azure Bastion के माध्यम से ही Access हो सके।

---

# 🎯 Objective

इस Lab में हम सीखेंगे

- Public IP क्यों Remove करते हैं
- Public IP Remove करने से पहले क्या Verify करना चाहिए
- Terraform Code Update करना
- Terraform Apply करना
- Azure Portal में Verification
- Bastion से दोबारा Login Verify करना

---

# Current Architecture

```text
                Internet
                     │
                     ▼
            Azure Public IP
                     │
          ┌──────────┴──────────┐
          │                     │
          ▼                     ▼
     Azure Bastion          VM-01 Public IP
                                   │
                                   ▼
                                 VM-01
```

---

# Target Architecture

```text
                Internet
                     │
                     ▼
              Azure Bastion
                     │
                     ▼
              AzureBastionSubnet
                     │
                     ▼
                 Private IP
                     │
                     ▼
                  VM-01
```

---

# Why Remove Public IP?

Production Environment में

❌ Direct SSH Access

Allow नहीं किया जाता।

Internet

↓

Public IP

↓

Linux VM

यह Architecture Attack Surface बढ़ा देती है।

Best Practice

```
Internet

↓

Azure Bastion

↓

Private IP

↓

Linux VM
```

---

# Before Removing Public IP

निम्न सभी Checks पूरे होने चाहिए।

- Azure Bastion Running
- Bastion Login Successful
- VM Running
- Private IP Assigned
- NSG Configured
- SSH Working Through Bastion

यदि इनमें से कोई भी Fail हो तो Public IP Remove नहीं करनी चाहिए।

---

# Step 1 - Open Terraform Project

```powershell
cd D:\Audix-Azure-Landing-Zone-Terraform
```

---

# Step 2 - Open VS Code

```powershell
code .
```

---

# Step 3 - Locate VM-01 Resource

Open

```
main.tf
```

Locate

```terraform
resource "azurerm_linux_virtual_machine" "vm01"
```

---

# Existing Configuration

```terraform
network_interface_ids = [
    azurerm_network_interface.vm01_nic.id
]
```

NIC Resource

```terraform
resource "azurerm_network_interface" "vm01_nic" {

    ...

    ip_configuration {

        ...

        public_ip_address_id = azurerm_public_ip.vm01_pip.id

    }

}
```

यही Public IP Attach कर रही है।

---

# Step 4 - Remove Public IP Reference

Comment या Remove करें

```terraform
public_ip_address_id = azurerm_public_ip.vm01_pip.id
```

Updated Configuration

```terraform
ip_configuration {

    name = "internal"

    subnet_id = azurerm_subnet.subnet1.id

    private_ip_address_allocation = "Dynamic"

}
```

अब NIC केवल Private IP उपयोग करेगी।

---

# Step 5 - Validate Terraform

```powershell
terraform validate
```

Expected

```text
Success! The configuration is valid.
```

---

# Step 6 - Review Changes

```powershell
terraform plan
```

Expected Output

```text
~ azurerm_network_interface.vm01_nic

public_ip_address_id

will be removed
```

कोई VM Destroy नहीं होना चाहिए।

केवल NIC Update होनी चाहिए।

---

# Step 7 - Apply Changes

```powershell
terraform apply
```

Type

```text
yes
```

Wait until

```text
Apply complete!
```

---

# Step 8 - Verify Azure Portal

Azure Portal

↓

VM-01

↓

Networking

↓

Network Interface

↓

IP Configuration

Expected

```text
Private IP

10.x.x.x

Public IP

None
```

---

# Step 9 - Verify Bastion Login

Azure Portal

↓

VM-01

↓

Connect

↓

Bastion

Login

```
Username

azureuser

Password

********
```

Terminal Open होनी चाहिए।

---

# Step 10 - Verify No Public SSH

PowerShell

```powershell
ssh azureuser@<Old-Public-IP>
```

Expected

```text
Connection timed out

or

No route to host
```

यह Expected Behaviour है क्योंकि Public IP Remove हो चुकी है।

---

# Architecture Comparison

Before

```text
Internet

     │

     ▼

Public IP

     │

     ▼

VM-01
```

After

```text
Internet

     │

     ▼

Azure Bastion

     │

Private Network

     │

     ▼

VM-01
```

---

# Security Benefits

- Public Exposure Removed
- SSH Hidden from Internet
- Reduced Attack Surface
- Secure Browser Access
- Azure Recommended Architecture
- Better Compliance

---

# Common Mistakes

❌ Public IP Remove करने से पहले Bastion Test नहीं करना

❌ Wrong NIC Edit करना

❌ Terraform Apply किए बिना Portal Verify करना

❌ VM Destroy करने वाले Changes Apply कर देना

❌ NSG Rule हटाना जबकि Bastion Verify नहीं हुआ

---

# Verification Checklist

- ✅ Terraform Validate Successful
- ✅ Terraform Plan Reviewed
- ✅ Apply Completed
- ✅ Public IP Removed
- ✅ Private IP Available
- ✅ Bastion Login Successful
- ✅ Direct SSH Failed (Expected)

---

# What You Learned

- Why Public IP should be removed
- Secure VM Architecture
- Updating Azure NIC using Terraform
- Verifying Infrastructure Changes
- Bastion-only Administrative Access

---

# Documentation Commit

```bash
git add .

git commit -m "Added Lab 30 - Remove Public IP from VM-01"

git push origin main
```

---

# Next Lab

```text
31 - Remove Public IP from VM-02
```

अब VM-02 की Public IP भी Remove करेंगे और दोनों Linux Virtual Machines को केवल Azure Bastion के माध्यम से Secure Access देंगे।

---

# 🚀 31 - Remove Public IP from VM-02

**Document:** `31-Remove-Public-IP-from-VM02.md`

---

# 📖 Introduction

पिछले Lab में हमने VM-01 की Public IP सफलतापूर्वक Remove की।

अब VM-02 पर भी वही प्रक्रिया करेंगे।

VM-02 पहले Direct SSH के लिए Public IP का उपयोग करती थी।

लेकिन अब Azure Bastion पूरी तरह Configure और Verify हो चुका है।

इसलिए VM-02 को भी केवल Private Network से Accessible बनाया जाएगा।

अब दोनों Virtual Machines केवल Azure Bastion के माध्यम से Manage होंगी।

---

# 🎯 Objective

इस Lab में हम सीखेंगे

- VM-02 से Public IP Remove करना
- Terraform Code Update करना
- Infrastructure Apply करना
- Azure Portal में Verify करना
- Bastion से VM-02 Access Verify करना
- Direct SSH Block होना Verify करना

---

# Current Architecture

```text
                    Internet
                         │
                         ▼
                  Azure Bastion
                         │
            ┌────────────┴────────────┐
            │                         │
            ▼                         ▼
         VM-01                  VM-02 Public IP
                                   │
                                   ▼
                                 VM-02
```

---

# Target Architecture

```text
                    Internet
                         │
                         ▼
                  Azure Bastion
                         │
                AzureBastionSubnet
                         │
          ┌──────────────┴──────────────┐
          │                             │
          ▼                             ▼
     VM-01 (Private)              VM-02 (Private)
```

---

# Production Architecture

```text
                Internet
                     │
                     ▼
             Azure Portal
                     │
                     ▼
              Azure Bastion
                     │
        ┌────────────┴────────────┐
        │                         │
        ▼                         ▼
   VM-01 Private IP         VM-02 Private IP
```

कोई भी Virtual Machine अब Public Internet पर दिखाई नहीं देगी।

---

# Before Removing Public IP

Verify करें

- Azure Bastion Running
- VM-02 Running
- Bastion Login Working
- Private IP Assigned
- Terraform State Healthy

---

# Step 1 - Open Terraform Project

```powershell
cd D:\Audix-Azure-Landing-Zone-Terraform
```

---

# Step 2 - Open VS Code

```powershell
code .
```

---

# Step 3 - Locate VM-02 Network Interface

Open

```
main.tf
```

Locate

```terraform
resource "azurerm_network_interface" "vm02_nic"
```

Current Configuration

```terraform
ip_configuration {

    name = "internal"

    subnet_id = azurerm_subnet.subnet2.id

    private_ip_address_allocation = "Dynamic"

    public_ip_address_id = azurerm_public_ip.vm02_pip.id

}
```

---

# Step 4 - Remove Public IP

Remove या Comment

```terraform
public_ip_address_id = azurerm_public_ip.vm02_pip.id
```

Updated Configuration

```terraform
ip_configuration {

    name = "internal"

    subnet_id = azurerm_subnet.subnet2.id

    private_ip_address_allocation = "Dynamic"

}
```

अब VM-02 केवल Private IP उपयोग करेगी।

---

# Step 5 - Validate Configuration

```powershell
terraform validate
```

Expected

```text
Success! The configuration is valid.
```

---

# Step 6 - Review Infrastructure Changes

```powershell
terraform plan
```

Expected

```text
~ azurerm_network_interface.vm02_nic

public_ip_address_id

will be removed
```

⚠️

VM Destroy नहीं होना चाहिए।

केवल Network Interface Update होगी।

---

# Step 7 - Apply Changes

```powershell
terraform apply
```

Type

```text
yes
```

Expected

```text
Apply complete!
```

---

# Step 8 - Verify Azure Portal

Azure Portal

↓

Virtual Machines

↓

VM-02

↓

Networking

↓

Network Interface

↓

IP Configuration

Expected

```text
Private IP

10.x.x.x

Public IP

None
```

---

# Step 9 - Verify Azure Bastion Login

Azure Portal

↓

VM-02

↓

Connect

↓

Bastion

Authentication

```
SSH Private Key
```

Username

```
azureuser
```

Private Key

```
id_rsa
```

Login

Terminal Open होनी चाहिए।

---

# Step 10 - Verify Direct SSH is Blocked

PowerShell

```powershell
ssh azureuser@<Old-Public-IP>
```

Expected

```text
Connection timed out

or

Host unreachable
```

यह Expected Behaviour है क्योंकि Public IP Remove हो चुकी है।

---

# Verify Private Connectivity

Azure Bastion

↓

VM-02

↓

Terminal

```bash
hostname
```

Expected

```text
vm02
```

---

```bash
hostname -I
```

Expected

```text
10.x.x.x
```

अब केवल Private IP उपलब्ध होगी।

---

# Architecture Comparison

Before

```text
Internet

      │

      ▼

Public IP

      │

      ▼

VM-02
```

After

```text
Internet

      │

      ▼

Azure Bastion

      │

Private Network

      │

      ▼

VM-02
```

---

# Security Improvements

✅ Public IP Removed

✅ Internet SSH Disabled

✅ Private Access Only

✅ Azure Bastion Enabled

✅ Lower Attack Surface

✅ Enterprise Ready Architecture

---

# Common Mistakes

❌ Bastion Verify किए बिना Public IP Remove करना

❌ Wrong NIC Modify करना

❌ Terraform Plan Review नहीं करना

❌ Apply बीच में Cancel करना

❌ Private Key भूल जाना

---

# Verification Checklist

- ✅ Terraform Validate Successful
- ✅ Terraform Plan Reviewed
- ✅ Apply Completed
- ✅ Public IP Removed
- ✅ Azure Portal Verified
- ✅ Bastion Login Successful
- ✅ Direct SSH Blocked
- ✅ Private IP Available

---

# Final Secure Architecture

```text
                    Internet
                         │
                         ▼
                  Azure Portal
                         │
                         ▼
                  Azure Bastion
                         │
                 AzureBastionSubnet
                         │
          ┌──────────────┴──────────────┐
          │                             │
          ▼                             ▼
   VM-01 (Private IP)           VM-02 (Private IP)
          │                             │
          └──────────────┬──────────────┘
                         │
                         ▼
                    Azure VNet
```

अब किसी भी Linux VM पर Public IP उपलब्ध नहीं है।

दोनों Servers केवल Azure Bastion के माध्यम से Secure तरीके से Manage किए जा सकते हैं।

---

# Documentation Commit

```bash
git add .

git commit -m "Added Lab 31 - Remove Public IP from VM-02"

git push origin main
```

---

# Next Lab

```text
32 - Azure Network Security Group (NSG) Hardening
```

अब जब दोनों Virtual Machines Private हो चुकी हैं, अगले Lab में हम Network Security Group (NSG) को Harden करेंगे ताकि केवल आवश्यक Ports और Trusted Traffic ही Allow हो।

---