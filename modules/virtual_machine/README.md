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

# 🌐 Host First Website on Nginx

> **Document:** `22-Host-First-Website-on-Nginx.md`

![Nginx](https://img.shields.io/badge/Nginx-Web%20Server-009639?style=for-the-badge&logo=nginx)
![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04_LTS-E95420?style=for-the-badge&logo=ubuntu)
![HTML](https://img.shields.io/badge/HTML-Website-E34F26?style=for-the-badge&logo=html5)
![Linux](https://img.shields.io/badge/Linux-Web%20Hosting-FCC624?style=for-the-badge&logo=linux)

---

# 📖 Introduction

पिछले Chapter में हमने

- Azure Virtual Machine Deploy की
- SSH द्वारा Login किया
- Nginx Install किया

अब समय है अपनी पहली Website Host करने का।

इस Chapter में हम समझेंगे कि Nginx Website कहाँ Store करता है, Default Page कैसे Replace करते हैं और Browser में अपनी पहली Website कैसे Open करते हैं।

---

# 🎯 Objective

इस Chapter में हम सीखेंगे

- Nginx Website कहाँ Store करता है
- Default Website कैसे हटाएँ
- पहली HTML Website Create करना
- Browser में Website Access करना
- Website Update करना

---

# 🏗️ Architecture

```text
Browser

    │

    ▼

Public IP

    │

    ▼

Nginx Web Server

    │

    ▼

/var/www/html

    │

    ▼

index.html
```

---

# 📌 Step 1 - Nginx Default Website Location

SSH से VM में Login करें

```bash
cd /var/www/html
```

Current Files देखें

```bash
ls -la
```

Expected Output

```text
index.nginx-debian.html
```

यही Nginx की Default Website है।

---

# 📌 Step 2 - Default Website Backup

Default Page Delete करने के बजाय Backup रखें।

```bash
sudo mv index.nginx-debian.html index.nginx-debian.html.backup
```

अब Folder Check करें

```bash
ls
```

---

# 📌 Step 3 - New Website Create करें

```bash
sudo nano index.html
```

---

# 📌 Step 4 - HTML Code Paste करें

```html
<!DOCTYPE html>
<html>

<head>

<title>Audix Azure Landing Zone</title>

<style>

body{

background:#0d1117;
color:white;
font-family:Arial;
text-align:center;
padding-top:120px;

}

h1{

font-size:55px;

}

p{

font-size:22px;

}

</style>

</head>

<body>

<h1>🚀 Welcome to Azure Landing Zone</h1>

<p>Congratulations!</p>

<p>Your first website is running successfully on Nginx.</p>

<p>Hosted using Terraform + Azure + Ubuntu + Nginx</p>

</body>

</html>
```

---

# 📌 Step 5 - Save File

Nano Editor में

```text
CTRL + O

Enter

CTRL + X
```

---

# 📌 Step 6 - Verify File

```bash
ls -l
```

Output

```text
index.html
```

---

# 📌 Step 7 - Restart Nginx

```bash
sudo systemctl restart nginx
```

Status Verify करें

```bash
sudo systemctl status nginx
```

Expected

```text
Active (running)
```

---

# 📌 Step 8 - Browser Test

Browser Open करें

```text
http://<PUBLIC_IP>
```

Example

```text
http://20.xx.xx.xx
```

अब आपकी पहली Website दिखाई देगी।

---

# 📌 Step 9 - Website Update

Website Modify करें

```bash
sudo nano /var/www/html/index.html
```

कुछ Text Change करें।

Save करें।

Browser Refresh करें।

कोई Restart आवश्यक नहीं है।

---

# 📌 Step 10 - Website Files

```bash
cd /var/www/html

ls
```

Example

```text
index.html
```

यदि भविष्य में Images जोड़नी हों

```text
/var/www/html/images
```

यदि CSS जोड़नी हो

```text
/var/www/html/css
```

यदि JavaScript जोड़नी हो

```text
/var/www/html/js
```

---

# 📌 Step 11 - Complete Request Flow

```text
Browser

     │

     ▼

Public IP

     │

     ▼

Azure VM

     │

     ▼

Nginx

     │

     ▼

/var/www/html

     │

     ▼

index.html

     │

     ▼

Website Display
```

---

# 📌 Directory Structure

```text
/var/www/html

│

├── index.html

├── css/

├── js/

└── images/
```

---

# 🎯 आपने क्या सीखा?

- ✅ Nginx Default Website Location
- ✅ Default Website Backup
- ✅ HTML Website Create करना
- ✅ Website Host करना
- ✅ Browser से Website Open करना
- ✅ Website Update करना

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `21-SSH-Login-and-Install-Nginx.md` | `README.md` | `23-Understanding-Nginx-Directory-Structure.md` |

---

> 🚀 **Project Status:** First Website Successfully Hosted on Azure Linux Virtual Machine using Nginx.

---

# 🐾 Build a Custom Animal Medical Care Website on Nginx

> **Document:** `23-Build-Custom-Animal-Medical-Care-Website.md`

![Nginx](https://img.shields.io/badge/Nginx-Web%20Server-009639?style=for-the-badge&logo=nginx)
![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04_LTS-E95420?style=for-the-badge&logo=ubuntu)
![HTML5](https://img.shields.io/badge/HTML5-Web%20Development-E34F26?style=for-the-badge&logo=html5)
![Azure](https://img.shields.io/badge/Azure-Linux%20VM-0078D4?style=for-the-badge&logo=microsoftazure)

---

# 📖 Introduction

अब तक हमने

- ✅ Azure VM Deploy की
- ✅ SSH Login किया
- ✅ Nginx Install किया
- ✅ पहली Website Host की

अब समय है एक Professional Custom Website बनाने का।

इस Website का उद्देश्य Donation Collect करना नहीं है।

यह Website केवल लोगों को प्रेरित करेगी कि वे

- घायल जानवरों की मदद करें
- दवाइयाँ उपलब्ध कराएँ
- स्वयंसेवक (Volunteer) बनें
- भोजन उपलब्ध कराएँ
- पशु चिकित्सा शिविर आयोजित करें

---

# 🎯 Objective

इस Chapter में हम सीखेंगे

- Default Website Remove करना
- Professional HTML Website बनाना
- CSS के साथ Beautiful Landing Page बनाना
- Nginx पर Website Host करना
- Browser में Verify करना

---

# 🌍 Website Theme

```text
🐾 Animal Care Foundation

Healing Every Life

Free Medical Care

Dogs

Cats

Cows

Birds

Wild Animals

Become a Volunteer
```

---

# 📌 Step 1 - Website Directory में जाएँ

```bash
cd /var/www/html
```

Verify

```bash
pwd
```

Expected Output

```text
/var/www/html
```

---

# 📌 Step 2 - पुरानी Website Delete करें

```bash
sudo rm -f index.html
```

Verify

```bash
ls
```

---

# 📌 Step 3 - नई Website Create करें

```bash
sudo nano index.html
```

---

# 📌 Step 4 - नीचे दिया गया HTML Paste करें

```html
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<title>Animal Care Foundation</title>

<style>

body{

margin:0;
padding:0;
font-family:Arial,Helvetica,sans-serif;
background:#eef7ee;

}

header{

background:#2E7D32;
padding:40px;
text-align:center;
color:white;

}

section{

padding:40px;

}

.card{

background:white;
padding:25px;
margin:20px 0;
border-radius:10px;
box-shadow:0 0 10px lightgray;

}

h2{

color:#2E7D32;

}

footer{

background:#1B5E20;
color:white;
padding:20px;
text-align:center;

}

button{

background:#2E7D32;
color:white;
padding:15px 30px;
font-size:18px;
border:none;
border-radius:6px;

}

</style>

</head>

<body>

<header>

<h1>🐾 Animal Care Foundation</h1>

<p>Healing Every Life with Love and Care</p>

</header>

<section>

<div class="card">

<h2>🏥 Free Animal Medical Care</h2>

<p>

Our volunteers organize free medical camps for injured

dogs, cats, cows, birds and other animals.

</p>

</div>

<div class="card">

<h2>❤️ Become a Volunteer</h2>

<p>

Join our mission by giving your time.

Help rescue injured animals and support treatment camps.

</p>

</div>

<div class="card">

<h2>🍚 Support with Essentials</h2>

<p>

You can contribute food, medicines, blankets,

water bowls and first aid supplies.

</p>

</div>

<div class="card">

<h2>🌱 Every Life Matters</h2>

<p>

Compassion has no language.

Together we can create a safer world for every animal.

</p>

</div>

<center>

<button>Join Our Mission</button>

</center>

</section>

<footer>

Made with ❤️ for Every Living Being

</footer>

</body>

</html>
```

---

# 📌 Step 5 - File Save करें

Nano में

```text
CTRL + O

Enter

CTRL + X
```

---

# 📌 Step 6 - Verify करें

```bash
ls -l
```

Expected Output

```text
index.html
```

---

# 📌 Step 7 - Restart Nginx

```bash
sudo systemctl restart nginx
```

Status Check करें

```bash
sudo systemctl status nginx
```

Expected

```text
Active: active (running)
```

---

# 📌 Step 8 - Browser Test

Browser में जाएँ

```text
http://<PUBLIC-IP>
```

Example

```text
http://20.xx.xx.xx
```

अब आपकी नई Website दिखाई देगी।

---

# 📌 Step 9 - Live Modification

यदि Website Edit करनी हो

```bash
sudo nano /var/www/html/index.html
```

Save करें

Browser Refresh करें।

कोई Nginx Restart आवश्यक नहीं है यदि केवल HTML बदला है।

---

# 🏗️ Request Flow

```text
Browser

      │

      ▼

Azure Public IP

      │

      ▼

Ubuntu VM

      │

      ▼

Nginx

      │

      ▼

/var/www/html/index.html

      │

      ▼

Animal Care Foundation Website
```

---

# 🎯 आपने क्या सीखा?

- ✅ Custom HTML Website बनाना
- ✅ Nginx पर Website Replace करना
- ✅ HTML File Edit करना
- ✅ Browser से Verify करना
- ✅ Real-world Static Website Host करना

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `22-Host-First-Website-on-Nginx.md` | `README.md` | `24-Host-Multiple-Websites-on-Single-VM.md` |

---

> 🚀 **Project Status:** Custom Animal Care Foundation Website Successfully Hosted on Azure Linux VM using Nginx.

---

