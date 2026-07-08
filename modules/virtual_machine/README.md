# 🏗️ VM बनने से पहले Terraform का पूरा Flow
Internet
    │
    ▼
Public IP
    │
    ▼
NIC
    │
    ├──────────────► NSG
    │                  │
    │                  ├── SSH (22)
    │                  ├── HTTP (80)
    │                  └── HTTPS (443)
    │
    ▼
Management Subnet
    │
    ▼
Virtual Network
    │
    ▼
Linux Virtual Machine

---

# 💻 Deploy First Linux Virtual Machine using Terraform

> **Document:** `20-Deploy-First-Linux-Virtual-Machine.md`

![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?style=for-the-badge&logo=terraform)
![Azure](https://img.shields.io/badge/Azure-Virtual%20Machine-0078D4?style=for-the-badge&logo=microsoftazure)
![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04_LTS-E95420?style=for-the-badge&logo=ubuntu)
![Linux](https://img.shields.io/badge/Linux-Server-FCC624?style=for-the-badge&logo=linux)

---

# 📖 Introduction

अब तक हमने Azure Infrastructure का पूरा Network तैयार कर लिया है।

- ✅ Resource Group
- ✅ Storage Account
- ✅ Storage Container
- ✅ Virtual Network
- ✅ Subnets
- ✅ Network Security Group
- ✅ NSG Rules
- ✅ Public IP
- ✅ Network Interface (NIC)

अब समय है अपनी पहली **Linux Virtual Machine** Deploy करने का।

---

# 🎯 Objective

इस Chapter में हम सीखेंगे

- Azure Linux Virtual Machine क्या होती है
- VM कैसे Network से Connect होती है
- Terraform द्वारा VM Deploy करना
- Azure Portal में VM Verify करना
- Terraform State में Resource Verify करना

---

# 🏗️ Current Infrastructure

```text
                    Azure Subscription

                           │

                 Resource Group

                           │

        ┌────────────────────────────────┐

        │                                │

 Storage Account                 Virtual Network

                                        │

        ┌──────────────┬──────────────────────┐

        │              │                      │

 GatewaySubnet   AzureBastionSubnet     Management

                                            │

                                   Network Interface

                                            │

                                      Public IP

                                            │

                                            ▼

                                   Linux VM (VM-01)
```

---

# 📌 Step 1 - Terraform Plan

Terminal में जाएँ

```bash
terraform plan
```

Terraform आपको बताएगा कि कौन-कौन से Resources Create होंगे।

यदि कोई Error नहीं आता है तो अगले Step पर जाएँ।

---

# 📌 Step 2 - Deploy Infrastructure

Command चलाएँ

```bash
terraform apply
```

Terraform Confirmation पूछेगा

```text
Enter a value:
```

Type करें

```text
yes
```

अब Terraform Azure पर VM Create करना शुरू करेगा।

Deployment में लगभग 2–5 मिनट लग सकते हैं।

---

# 📌 Step 3 - Deployment Complete

यदि सब सही रहा तो Output कुछ ऐसा दिखाई देगा

```text
Apply complete!

Resources:
1 added,
0 changed,
0 destroyed.
```

इसका अर्थ है कि आपकी Linux Virtual Machine सफलतापूर्वक Create हो चुकी है।

---

# 📌 Step 4 - Azure Portal Verify

Azure Portal खोलें

```text
Virtual Machines
```

अब आपको दिखाई देगा

```text
vm-dev-southeastasia-audix-001
```

Status

```text
Running
```

---

# 📌 Step 5 - Resource Group Verify

Resource Group खोलें

```text
rg-dev-southeastasia-audix-001
```

अब आपको Resources दिखाई देंगे

- Resource Group
- Storage Account
- Virtual Network
- Public IP
- NIC
- NSG
- Linux Virtual Machine

---

# 📌 Step 6 - Networking Verify

VM खोलें

Networking Tab

Verify करें

```text
Management Subnet

↓

NIC

↓

Public IP

↓

NSG
```

सभी Resources Connected होने चाहिए।

---

# 📌 Step 7 - Overview Tab

Overview में Verify करें

- VM Name
- Region
- Size
- Status
- Public IP
- Private IP
- Operating System

---

# 📌 Step 8 - Terraform State Verify

Command

```bash
terraform state list
```

Output में आपको VM दिखाई देगी

```text
azurerm_linux_virtual_machine.vm01
```

इसका अर्थ है कि Terraform अब इस VM को Manage कर रहा है।

---

# 📌 Step 9 - Azure Resource Relationship

```text
Internet

    │

    ▼

Public IP

    │

    ▼

NIC

    │

    ▼

Management Subnet

    │

    ▼

Virtual Network

    │

    ▼

Linux VM
```

---

# 📌 आपने क्या सीखा?

- ✅ पहली Linux VM Deploy करना
- ✅ Terraform Apply करना
- ✅ Azure Portal में Verify करना
- ✅ Terraform State Verify करना
- ✅ Azure Resource Relationship समझना

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `19-Create-Network-Interface-and-NSG-Association.md` | `README.md` | `21-SSH-Login-and-Install-Nginx.md` |

---

> 🚀 **Project Status:** First Linux Virtual Machine Successfully Deployed. Infrastructure is now ready for SSH Login and Web Server Installation.

---

# 🔐 SSH Login and Install Nginx

> **Document:** `21-SSH-Login-and-Install-Nginx.md`

![Azure](https://img.shields.io/badge/Azure-Virtual%20Machine-0078D4?style=for-the-badge&logo=microsoftazure)
![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04_LTS-E95420?style=for-the-badge&logo=ubuntu)
![Nginx](https://img.shields.io/badge/Nginx-Web%20Server-009639?style=for-the-badge&logo=nginx)
![Linux](https://img.shields.io/badge/Linux-SSH-FCC624?style=for-the-badge&logo=linux)

---

# 📖 Introduction

अब हमारी पहली Linux Virtual Machine सफलतापूर्वक Deploy हो चुकी है।

इस Chapter में हम पहली बार Azure VM में SSH द्वारा Login करेंगे और Nginx Web Server Install करेंगे।

यही Nginx आगे हमारी Websites Host करेगा।

---

# 🎯 Objective

इस Chapter में हम सीखेंगे

- Azure VM की Public IP कैसे प्राप्त करें
- SSH द्वारा Linux VM में Login करना
- Ubuntu Update करना
- Nginx Install करना
- Nginx Service Verify करना
- Browser से पहली Website Open करना

---

# 🏗️ Current Architecture

```text
                  Internet

                      │

                Public IP

                      │

                     NIC

                      │

              Management Subnet

                      │

              Ubuntu Linux VM

                      │

                 Nginx Server
```

---

# 📌 Step 1 - VM Public IP Copy करें

Azure Portal खोलें

```text
Virtual Machines

↓

vm-dev-southeastasia-audix-001

↓

Overview
```

Copy करें

```text
Public IP Address
```

Example

```text
20.xx.xx.xx
```

---

# 📌 Step 2 - PowerShell Open करें

Windows PowerShell Open करें।

---

# 📌 Step 3 - SSH Login

Command

```bash
ssh azureuser@<PUBLIC_IP>
```

Example

```bash
ssh azureuser@20.xx.xx.xx
```

पहली बार Login करते समय पूछा जाएगा

```text
Are you sure you want to continue connecting?
```

Type करें

```text
yes
```

Password Enter करें

```text
P@ssw0rd@123456
```

अब आप Ubuntu Server में Login हो जाएंगे।

---

# 📌 Step 4 - Current User Verify करें

```bash
whoami
```

Output

```text
azureuser
```

---

# 📌 Step 5 - Current Directory

```bash
pwd
```

Output

```text
/home/azureuser
```

---

# 📌 Step 6 - Ubuntu Update करें

```bash
sudo apt update
```

फिर

```bash
sudo apt upgrade -y
```

इससे Ubuntu के सभी Packages Update हो जाएंगे।

---

# 📌 Step 7 - Install Nginx

```bash
sudo apt install nginx -y
```

Installation Complete होने तक प्रतीक्षा करें।

---

# 📌 Step 8 - Nginx Service Status

```bash
sudo systemctl status nginx
```

Expected Output

```text
Active: active (running)
```

---

# 📌 Step 9 - Enable Nginx

```bash
sudo systemctl enable nginx
```

इससे VM Restart होने के बाद भी Nginx Automatically Start होगा।

---

# 📌 Step 10 - Verify Listening Port

```bash
sudo ss -tulnp
```

या

```bash
sudo ss -tulnp | grep 80
```

Expected Output

```text
*:80
```

इसका अर्थ है कि Nginx Port 80 पर Listen कर रहा है।

---

# 📌 Step 11 - Browser Test

Browser में जाएँ

```text
http://<PUBLIC_IP>
```

Example

```text
http://20.xx.xx.xx
```

अब Default Nginx Welcome Page दिखाई देगी।

---

# 📌 Step 12 - Default Website Location

Nginx Default Website

```text
/var/www/html
```

Check करें

```bash
cd /var/www/html

ls -la
```

Output

```text
index.nginx-debian.html
```

यही Default Welcome Page है।

---

# 📌 Step 13 - Nginx Service Commands

Start

```bash
sudo systemctl start nginx
```

Stop

```bash
sudo systemctl stop nginx
```

Restart

```bash
sudo systemctl restart nginx
```

Reload

```bash
sudo systemctl reload nginx
```

Status

```bash
sudo systemctl status nginx
```

---

# 📌 Step 14 - Complete Flow

```text
Terraform Apply

        │

        ▼

Azure Virtual Machine

        │

        ▼

SSH Login

        │

        ▼

Ubuntu Update

        │

        ▼

Install Nginx

        │

        ▼

Nginx Running

        │

        ▼

Browser

        │

        ▼

http://Public-IP
```

---

# 🎯 आपने क्या सीखा?

- ✅ SSH द्वारा Linux VM में Login करना
- ✅ Ubuntu Update करना
- ✅ Nginx Install करना
- ✅ Nginx Service Manage करना
- ✅ Browser से पहली Website Open करना
- ✅ Linux Directory Structure समझना

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `20-Deploy-First-Linux-Virtual-Machine.md` | `README.md` | `22-Host-First-Website-on-Nginx.md` |

---

> 🚀 **Project Status:** SSH Login Successful. Nginx Web Server is Running Successfully.

---

