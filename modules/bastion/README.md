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