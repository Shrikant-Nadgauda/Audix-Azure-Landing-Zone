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

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `26-Deploy-Second-Linux-Virtual-Machine-VM02.md` | `README.md` | `28-Access-VMs-Using-Azure-Bastion.md` |

---

> 🚀 **Project Status:** Ready to Deploy Azure Bastion

---