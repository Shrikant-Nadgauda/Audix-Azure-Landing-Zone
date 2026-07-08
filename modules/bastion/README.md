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

अब Public IP हटाने के बाद Architecture ऐसा दिखेगा:

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

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `26-Deploy-Second-Linux-Virtual-Machine-VM02.md` | `README.md` | `28-Access-VMs-Using-Azure-Bastion.md` |

---

> 🚀 **Project Status:** Ready to Deploy Azure Bastion

---

# 🚀 28 - Access Azure Virtual Machines Using Azure Bastion

**Document:** `28-Access-Azure-VMs-Using-Azure-Bastion.md`

---

# Azure Terraform Security

---

# 📖 Introduction

पिछले Chapter में हमने Azure Bastion Successfully Deploy किया।

अब इस Chapter में हम Azure Bastion का उपयोग करके अपनी Virtual Machines को Secure तरीके से Access करेंगे।

अब SSH के लिए Public IP की आवश्यकता नहीं होगी।

Azure Bastion Browser आधारित Secure SSH Connection प्रदान करता है।

इसका अर्थ है कि Administrator सीधे Azure Portal से Virtual Machine में Login कर सकता है।

यह Production Environment की Recommended Security Practice है।

---

# 🎯 Objective

इस Lab में हम सीखेंगे

- Azure Bastion से VM-01 Connect करना
- Azure Bastion से VM-02 Connect करना
- Browser Based SSH
- Native Client Support
- MobaXterm द्वारा SSH
- Connection Verification

---

# 🏗️ Current Architecture

```text
                    Internet
                        │
                        ▼
                Azure Bastion
                        │
        ┌───────────────┴───────────────┐
        │                               │
        ▼                               ▼
     VM-01                         VM-02
 (Public IP)                   (Public IP)
```

---

# 📌 Bastion Connection Methods

Azure Bastion कई प्रकार से VM Access प्रदान करता है।

### Method 1

Azure Portal Browser SSH

सबसे आसान तरीका।

कोई Software Install करने की आवश्यकता नहीं।

---

### Method 2

Native Client SSH

Windows PowerShell

Linux Terminal

Mac Terminal

---

### Method 3

MobaXterm

GUI Based SSH Client

सबसे Convenient तरीका।

---

# 🖥️ Method 1 - Azure Portal Browser SSH

Azure Portal

↓

Virtual Machine

↓

Connect

↓

Bastion

↓

Authentication Type

↓

SSH Private Key

↓

Username

```
azureuser
```

↓

Private Key

```
id_rsa
```

↓

Connect

---

Expected

VM Terminal Open हो जाएगी।

---

# 🖥️ Method 2 - Native SSH

यदि Bastion Native Client Enabled है

PowerShell

```powershell
az network bastion ssh `
--name bastion-dev-southeastasia-audix-001 `
--resource-group rg-dev-southeastasia-audix-001 `
--target-resource-id <VM-RESOURCE-ID> `
--auth-type ssh-key `
--username azureuser `
--ssh-key ~/.ssh/id_rsa
```

---

# 🖥️ Method 3 - MobaXterm

Open MobaXterm

↓

Session

↓

SSH

↓

Remote Host

```
VM Private IP
```

↓

Username

```
azureuser
```

↓

Advanced SSH

↓

Private Key

```
C:\Users\ADMIN\.ssh\id_rsa
```

↓

Connect

---

# 📌 Verify Current User

```bash
whoami
```

Expected

```
azureuser
```

---

# 📌 Verify Hostname

```bash
hostname
```

Expected

VM-01

```
vm01
```

या

VM-02

```
vm02
```

---

# 📌 Verify Private IP

```bash
hostname -I
```

Example

```
10.0.2.4
```

---

# 📌 Verify Internet

```bash
ping google.com
```

---

# 📌 Verify Web Server

```bash
sudo systemctl status nginx
```

Expected

```
active (running)
```

---

# 📌 Verify Git

```bash
git --version
```

---

# 📌 Verify Current Directory

```bash
pwd
```

Expected

```
/home/azureuser
```

---

# 📌 Verify Websites

```bash
ls /var/www
```

Expected

```
animal

trees

anmol
```

---

# 📌 Verification Checklist

✅ Bastion Connected Successfully

✅ Browser SSH Working

✅ Native SSH Working (Optional)

✅ MobaXterm Working

✅ VM-01 Accessible

✅ VM-02 Accessible

---

# 💡 Best Practices

✔ Use Bastion for Administrative Access

✔ Never Expose SSH Directly to Internet

✔ Use SSH Keys

✔ Disable Password Authentication

✔ Remove Public IP After Verification

---

# 🚨 Common Mistakes

❌ Wrong Private Key

❌ Wrong Username

❌ Using Public IP Instead of Private IP

❌ NSG Blocking Bastion Traffic

❌ AzureBastionSubnet Misconfigured

---

# 📚 What You Learned

✔ Azure Bastion Login

✔ Browser Based SSH

✔ Native Client SSH

✔ MobaXterm Integration

✔ Secure Administrative Access

---

# 🚀 Next Chapter

```
29 - Remove Public IP from VM-01
```

अब हम VM-01 की Public IP Remove करेंगे और Verify करेंगे कि केवल Azure Bastion से ही Access संभव है।

---