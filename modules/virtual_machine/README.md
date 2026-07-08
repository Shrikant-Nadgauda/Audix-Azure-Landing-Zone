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

# 🎬 Clone and Deploy StreamFlix Application on Azure Linux VM

> **Document:** `23-Clone-and-Deploy-StreamFlix-Application.md`

![Git](https://img.shields.io/badge/Git-Version%20Control-F05032?style=for-the-badge&logo=git)
![GitHub](https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github)
![Nginx](https://img.shields.io/badge/Nginx-Web%20Server-009639?style=for-the-badge&logo=nginx)
![Azure](https://img.shields.io/badge/Azure-Linux%20VM-0078D4?style=for-the-badge&logo=microsoftazure)

---

# 📖 Introduction

अब तक हमने

- ✅ Azure Linux VM Deploy की
- ✅ SSH Login किया
- ✅ Nginx Install किया
- ✅ पहली HTML Website Host की

लेकिन Enterprise में Developers HTML File Copy नहीं करते।

वे अपना Source Code GitHub पर Push करते हैं और Server उस Repository को Clone करता है।

इसी Process को हम इस Chapter में सीखेंगे।

---

# 🎯 Objective

इस Chapter में हम सीखेंगे

- Git Install Verify करना
- GitHub Repository Clone करना
- Website Files को Nginx Directory में Copy करना
- Browser से Website Access करना
- Git Pull द्वारा Future Updates लेना

---

# 🏗️ Architecture

```text
Developer

      │

      ▼

GitHub Repository

      │

      ▼

Git Clone

      │

      ▼

Ubuntu VM

      │

      ▼

/var/www/html

      │

      ▼

Nginx

      │

      ▼

Browser
```

---

# 📌 Step 1 - SSH Login

```bash
ssh azureuser@<PUBLIC-IP>
```

Example

```bash
ssh azureuser@20.xx.xx.xx
```

---

# 📌 Step 2 - Verify Git

```bash
git --version
```

Expected Output

```text
git version 2.x.x
```

यदि Git Installed नहीं है

```bash
sudo apt update

sudo apt install git -y
```

---

# 📌 Step 3 - Home Directory में जाएँ

```bash
cd ~

pwd
```

Expected

```text
/home/azureuser
```

---

# 📌 Step 4 - GitHub Repository Clone करें

```bash
git clone <YOUR_GITHUB_REPOSITORY_URL>
```

Example

```bash
git clone https://github.com/<username>/streamflix.git
```

---

# 📌 Step 5 - Verify Repository

```bash
ls
```

Expected

```text
streamflix
```

---

# 📌 Step 6 - Repository के अंदर जाएँ

```bash
cd streamflix
```

Check करें

```bash
ls -la
```

Expected

```text
index.html

css/

js/

images/
```

---

# 📌 Step 7 - Nginx Directory Clean करें

```bash
sudo rm -rf /var/www/html/*
```

Verify

```bash
ls /var/www/html
```

Folder Empty होना चाहिए।

---

# 📌 Step 8 - Website Copy करें

```bash
sudo cp -r * /var/www/html/
```

---

# 📌 Step 9 - Verify Website Files

```bash
ls /var/www/html
```

Expected

```text
index.html

css

js

images
```

---

# 📌 Step 10 - Restart Nginx

```bash
sudo systemctl restart nginx
```

Status Check करें

```bash
sudo systemctl status nginx
```

Expected

```text
active (running)
```

---

# 📌 Step 11 - Browser Test

Browser में जाएँ

```text
http://<PUBLIC-IP>
```

अब आपकी StreamFlix Website दिखाई देगी।

---

# 📌 Step 12 - Future Update

यदि Developer GitHub पर नया Code Push करता है

तो केवल

```bash
cd ~/streamflix

git pull
```

फिर

```bash
sudo cp -r * /var/www/html/

sudo systemctl restart nginx
```

बस Website Update हो जाएगी।

---

# 🏗️ Deployment Flow

```text
Developer

      │

git push

      │

      ▼

GitHub Repository

      │

git clone / git pull

      │

      ▼

Ubuntu VM

      │

Copy Files

      │

      ▼

/var/www/html

      │

      ▼

Nginx

      │

      ▼

Browser
```

---

# 🎯 आपने क्या सीखा?

- ✅ Git Install Verify करना
- ✅ GitHub Repository Clone करना
- ✅ Nginx में Website Deploy करना
- ✅ Browser से Website Access करना
- ✅ Git Pull द्वारा Future Updates लेना
- ✅ Real World Deployment Workflow समझना

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `22-Host-First-Website-on-Nginx.md` | `README.md` | `24-Build-Custom-Animal-Care-Foundation-Website.md` |

---

> 🚀 **Project Status:** StreamFlix Application Successfully Deployed from GitHub Repository to Azure Linux Virtual Machine.

---

---

# 🚨 Common Errors and Troubleshooting

## ❌ Error 1 - Permission Denied while Cloning

यदि आप `/var/www/html` Directory में Repository Clone करेंगे

```bash
cd /var/www/html

git clone https://github.com/devopsinsiders/StreamFlix.git
```

तो Error आएगा

```text
fatal: could not create work tree dir 'StreamFlix': Permission denied
```

### कारण

`/var/www/html` Directory Root User की होती है।

Normal User (`azureuser`) यहाँ Folder Create नहीं कर सकता।

---

## ❌ Error 2 - Cloning inside /home

यदि आप

```bash
cd /home

git clone https://github.com/devopsinsiders/StreamFlix.git
```

चलाते हैं

तो वही Error मिलेगा

```text
fatal: could not create work tree dir 'StreamFlix': Permission denied
```

### कारण

`/home` System Directory है।

आपको अपनी Home Directory में जाना होगा।

---

## ✅ Correct Way

पहले अपनी Home Directory में जाएँ

```bash
cd ~

pwd
```

Expected

```text
/home/azureuser
```

अब Repository Clone करें

```bash
git clone https://github.com/devopsinsiders/StreamFlix.git
```

Repository Successfully Download हो जाएगी।

---

## ✅ Verify Repository

```bash
ls -la ~/StreamFlix
```

Expected Files

```text
index.html

assets/

favicon.ico

README.md
```

---

## ✅ Copy Website Files

```bash
sudo rm -rf /var/www/html/*

sudo cp -r ~/StreamFlix/* /var/www/html/
```

Restart Nginx

```bash
sudo systemctl restart nginx
```

अब Browser में जाएँ

```text
http://<PUBLIC-IP>
```

StreamFlix Website Successfully Open हो जाएगी.

---

# 💡 Best Practice

Production Environment में कभी भी Git Repository को सीधे

```text
/var/www/html
```

में Clone नहीं किया जाता।

हमेशा

```text
/home/<username>
```

में Repository Clone की जाती है।

Testing के बाद Website Files को

```text
/var/www/html
```

में Copy किया जाता है।

यही Industry Standard Deployment Process है।



---

# 🐾 Build a Custom Animal Medical Care Website on Nginx

> **Document:** `24-Build-Custom-Animal-Medical-Care-Website.md`

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
| `22-Host-First-Website-on-Nginx.md` | `README.md` | `24-Configure-Cloudflare-Domain-for-Public-IP.md` |

---

> 🚀 **Project Status:** Custom Animal Care Foundation Website Successfully Hosted on Azure Linux VM using Nginx.

---

# 🌐 Configure Cloudflare Domain for Azure Virtual Machine

> **Document:** `24-Configure-Cloudflare-Domain-for-Public-IP.md`

![Cloudflare](https://img.shields.io/badge/Cloudflare-DNS-F38020?style=for-the-badge&logo=cloudflare)
![Azure](https://img.shields.io/badge/Azure-Public%20IP-0078D4?style=for-the-badge&logo=microsoftazure)
![DNS](https://img.shields.io/badge/DNS-A%20Record-blue?style=for-the-badge)
![Nginx](https://img.shields.io/badge/Nginx-Website-009639?style=for-the-badge&logo=nginx)

---

# 📖 Introduction

अब तक हमने

- ✅ Azure Infrastructure Deploy किया
- ✅ Ubuntu VM Create की
- ✅ Nginx Install किया
- ✅ Animal Care Website Host की

लेकिन अभी Website केवल Public IP से Open हो रही है।

```text
http://20.xx.xx.xx
```

Production Environment में कोई भी Website Public IP से Access नहीं होती।

हमेशा Domain Name उपयोग किया जाता है।

उदाहरण

```text
https://animal.audix.in
```

इस Chapter में हम अपनी Azure VM की Public IP को Cloudflare Domain से Connect करेंगे।

---

# 🎯 Objective

इस Chapter में हम सीखेंगे

- Cloudflare Login
- Domain Select करना
- Azure Public IP Copy करना
- DNS A Record Create करना
- Proxy Mode समझना
- DNS Propagation
- Browser से Domain Verify करना

---

# 🏗️ Current Architecture

```text
Internet

      │

      ▼

Cloudflare DNS

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

Animal Care Website
```

---

# 📁 इस Chapter में Code कहाँ लिखेंगे?

इस Chapter में Terraform Code नहीं लिखना है।

यह पूरा Configuration

```text
Cloudflare Dashboard
```

में किया जाएगा।

---

# 📌 Step 1 - Azure Portal Open करें

Azure Portal Login करें।

Open करें

```text
Virtual Machines

↓

vm-dev-southeastasia-audix-001
```

Overview में जाएँ।

Copy करें

```text
Public IP Address
```

Example

```text
20.xx.xx.xx
```

इसी IP को Cloudflare में Add करेंगे।

---

# 📌 Step 2 - Cloudflare Login करें

Open करें

```text
https://dash.cloudflare.com
```

अपना Account Login करें।

---

# 📌 Step 3 - Domain Select करें

Dashboard में अपना Domain Select करें।

Example

```text
audixdemo.in
```

या

```text
yourdomain.com
```

---

# 📌 Step 4 - DNS Tab Open करें

Left Side Menu

```text
DNS

↓

Records
```

---

# 📌 Step 5 - नया A Record Create करें

Click करें

```text
Add Record
```

---

Record Type

```text
A
```

---

Host Name

```text
animal
```

---

IPv4 Address

```text
20.xx.xx.xx
```

यह Azure VM की Public IP होगी।

---

TTL

```text
Auto
```

---

Proxy Status

```text
DNS Only
```

अभी शुरुआत में DNS Only रखें।

SSL और Proxy बाद में Enable करेंगे।

---

Click करें

```text
Save
```

---

# 📌 Step 6 - Verify DNS Record

अब Record कुछ ऐसा दिखाई देगा

```text
Type

A

Name

animal

Content

20.xx.xx.xx

Proxy

DNS Only
```

---

# 📌 Step 7 - DNS Propagation

Cloudflare लगभग तुरंत Update कर देता है।

लेकिन Internet पर पूरी तरह Update होने में कुछ मिनट लग सकते हैं।

---

# 📌 Step 8 - Windows CMD से Verify करें

Command

```cmd
nslookup animal.yourdomain.com
```

Expected

```text
20.xx.xx.xx
```

---

# 📌 Step 9 - Ping Test

```cmd
ping animal.yourdomain.com
```

यदि ICMP Allow है तो IP दिखाई देगी।

---

# 📌 Step 10 - Browser Test

Browser में जाएँ

```text
http://animal.yourdomain.com
```

अब आपकी

```text
Animal Care Foundation
```

Website Open होनी चाहिए।

---

# 📌 Step 11 - यदि Website Open नहीं हो रही

सबसे पहले Check करें

Azure Public IP

↓

Cloudflare DNS Record

↓

Nginx Running

↓

NSG Rule 80 Allow

↓

Browser Cache Clear

---

# 📌 Step 12 - Architecture

```text
Browser

      │

      ▼

animal.yourdomain.com

      │

      ▼

Cloudflare DNS

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

Animal Care Website
```

---

# 📌 Step 13 - Verify Nginx

SSH करें

```bash
sudo systemctl status nginx
```

Expected

```text
active (running)
```

---

# 📌 Step 14 - आपने क्या सीखा?

✅ Azure Public IP Copy करना

✅ Cloudflare Login करना

✅ DNS A Record Create करना

✅ Domain को Public IP से Connect करना

✅ Browser से Website Verify करना

✅ Basic DNS Mapping समझना

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `23-Git-Clone-and-Deploy-StreamFlix.md` | `README.md` | `25-Access-Website-from-Browser-and-Feel-Like-a-DevOps-Engineer.md` |

---

> 🚀 **Project Status:** Cloudflare Domain Successfully Mapped to Azure Virtual Machine.

---

# 🖥️ Deploy Second Linux Virtual Machine (VM-02)

> **Document:** `26-Deploy-Second-Linux-Virtual-Machine-VM02.md`

![Azure](https://img.shields.io/badge/Azure-Virtual%20Machine-0078D4?style=for-the-badge&logo=microsoftazure)
![Terraform](https://img.shields.io/badge/Terraform-Infrastructure-7B42BC?style=for-the-badge&logo=terraform)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-E95420?style=for-the-badge&logo=ubuntu)
![Nginx](https://img.shields.io/badge/Nginx-Web%20Server-009639?style=for-the-badge&logo=nginx)

---

# 📖 Introduction

अब तक हमने

- ✅ Resource Group बनाया
- ✅ Storage Account बनाया
- ✅ Terraform Backend तैयार किया
- ✅ Virtual Network बनाया
- ✅ Subnets बनाए
- ✅ Network Security Group बनाया
- ✅ Public IP बनाया
- ✅ Network Interface बनाई
- ✅ Virtual Machine (VM-01) Deploy की
- ✅ Nginx Install किया
- ✅ StreamFlix और Animal Care Website Deploy की
- ✅ Cloudflare Domain Configure किया

अब Enterprise Environment की ओर बढ़ते हैं।

इस Chapter में हम दूसरी Linux Virtual Machine (VM-02) बनाएँगे।

---

# 🎯 Objective

इस Chapter में हम सीखेंगे

- दूसरी Virtual Machine Deploy करना
- दूसरी NIC Attach करना
- दूसरे Subnet का उपयोग करना
- Public IP Assign करना
- SSH Login करना
- VM-02 Verify करना

---

# 🏗️ Architecture

```text
                 Virtual Network

                 10.0.0.0/16

                       │

        ┌──────────────┴──────────────┐

        │                             │

 VM-01 Subnet                  VM-02 Subnet

        │                             │

        ▼                             ▼

   Ubuntu VM-01                 Ubuntu VM-02

        │                             │

     Public IP                  Public IP
```

---

# 📌 VM-02 Configuration

| Setting | Value |
|----------|-------|
| VM Name | vm02 |
| Region | Southeast Asia |
| Image | Ubuntu Server 24.04 LTS |
| Size | Standard D2s_v3 |
| Authentication | SSH Key |
| Username | azureuser |
| Virtual Network | vnet-dev-southeastasia-audix-001 |
| Subnet | subnet-vm02 |
| Public IP | pip-vm02-dev-southeastasia-audix-001 |

---

# 📌 Terraform Files

इस Chapter में हम मुख्य रूप से

```text
main.tf
```

में नया VM Resource जोड़ेंगे।

बाद में Module Architecture में यही Code

```text
modules/
└── virtual_machine/
```

में Move करेंगे।

---

# 📌 Deployment Flow

```text
Terraform Apply

        │

        ▼

Create Public IP

        │

        ▼

Create NIC

        │

        ▼

Create Ubuntu VM

        │

        ▼

SSH Login

        │

        ▼

Verify Deployment
```

---

# 📌 Verification

Deployment Complete होने के बाद Verify करें

Azure Portal

```text
Virtual Machines
```

Expected

```text
vm01

vm02
```

दोनों Virtual Machines Running होनी चाहिए।

---

# 📌 SSH Login

```bash
ssh azureuser@<VM02_PUBLIC_IP>
```

---

# 📌 Verify Hostname

```bash
hostname
```

Expected

```text
vm02
```

---

# 📌 Verify Private IP

```bash
ip addr
```

---

# 📌 Verify Internet Connectivity

```bash
ping google.com
```

Expected

```text
64 bytes from ...
```

---

# 📌 Verify OS Version

```bash
cat /etc/os-release
```

Expected

```text
Ubuntu Server 24.04 LTS
```

---

# 🎯 आपने क्या सीखा?

- ✅ दूसरी Linux VM Deploy करना
- ✅ दूसरे Subnet का उपयोग करना
- ✅ दूसरी NIC और Public IP Attach करना
- ✅ SSH द्वारा Login करना
- ✅ VM Deployment Verify करना

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `25-Configure-Cloudflare-Domain-for-Public-IP.md` | `README.md` | `27-Create-Azure-Bastion-and-Secure-VM-Access.md` |

---

> 🚀 **Project Status:** Second Linux Virtual Machine (VM-02) Successfully Deployed.

---

# 🚨 VM-02 Deployment Troubleshooting Guide

> **Document:** `26.1-VM02-Troubleshooting-Guide.md`

![Terraform](https://img.shields.io/badge/Terraform-Troubleshooting-7B42BC?style=for-the-badge&logo=terraform)
![Azure](https://img.shields.io/badge/Azure-VM-0078D4?style=for-the-badge&logo=microsoftazure)
![Linux](https://img.shields.io/badge/Linux-Debug-E95420?style=for-the-badge&logo=linux)

---

# 📖 Introduction

Enterprise Environment में Terraform Code पहली बार में शायद ही बिना Error के Deploy होता है।

एक अच्छे Cloud Engineer की पहचान केवल Code लिखने से नहीं बल्कि Error को पढ़कर उसका Root Cause समझने और उसे Resolve करने से होती है।

इस Chapter में VM-02 Deploy करते समय आने वाले Common Errors और उन्हें Troubleshoot करने की पूरी प्रक्रिया दी गई है।

---

# 🎯 Troubleshooting Workflow

```text
terraform fmt
        │
        ▼
terraform validate
        │
        ▼
terraform plan
        │
        ▼
Error आया?
        │
        ▼
Error Message पढ़ो
        │
        ▼
Code Fix करो
        │
        ▼
terraform plan
        │
        ▼
terraform apply
```

---

# 🔍 Step 1 - Code Formatting Check

Command

```bash
terraform fmt
```

## इसका उद्देश्य

- Code को Proper Format में लाता है।
- Indentation Automatically ठीक करता है।
- Team के सभी Developers का Code एक जैसा दिखाई देता है।

---

# 🔍 Step 2 - Syntax Validation

Command

```bash
terraform validate
```

## इसका उद्देश्य

Terraform केवल Code की Syntax Check करता है।

यह Azure में कोई Resource Create नहीं करता।

---

# 🔍 Step 3 - Execution Plan

Command

```bash
terraform plan
```

## इसका उद्देश्य

Terraform बताता है

- कौन सा Resource बनेगा
- कौन सा Update होगा
- कौन सा Delete होगा

Azure में अभी कोई बदलाव नहीं होता।

---

# 🔍 Step 4 - Deploy Resources

Command

```bash
terraform apply
```

## इसका उद्देश्य

Terraform वास्तव में Azure Resources Create करता है।

---

# 🚨 Error 1 - Invalid Index

Error

```text
Error: Invalid index

subnet_id = azurerm_subnet.subnet["subnet-vm02"].id
```

---

## इसका मतलब

Terraform को

```text
subnet-vm02
```

नाम की कोई Key नहीं मिली।

---

## Root Cause

हमने Subnet Create करते समय

```hcl
for_each = {

GatewaySubnet = ...

AzureBastionSubnet = ...

Management = ...

StreamFlix = ...

}
```

Use किया था।

यहाँ

```text
StreamFlix
```

Key है।

लेकिन VM में Reference दिया

```hcl
subnet["subnet-vm02"]
```

जो मौजूद ही नहीं था।

---

## Solution

गलत

```hcl
subnet_id = azurerm_subnet.subnet["subnet-vm02"].id
```

सही

```hcl
subnet_id = azurerm_subnet.subnet["StreamFlix"].id
```

---

# 💡 यह Error क्यों आया?

Terraform हमेशा

```text
for_each
```

की Key से Resource खोजता है।

Azure Portal में दिखाई देने वाले Name से नहीं।

---

# 🔍 Subnet Keys कैसे Check करें?

PowerShell

```powershell
Select-String -Path .\main.tf -Pattern 'for_each|subnet\['
```

यह Command बताएगी

- कहाँ for_each लिखा है
- कहाँ Subnet Reference हो रहा है

---

# 🔍 किसी Resource का Name कैसे खोजें?

PowerShell

```powershell
Select-String -Path .\main.tf -Pattern 'resource'
```

---

# 🔍 किसी Variable को खोजें

PowerShell

```powershell
Select-String -Path .\main.tf -Pattern 'variable'
```

---

# 🔍 किसी Resource का Reference खोजें

PowerShell

```powershell
Select-String -Path .\main.tf -Pattern 'azurerm_subnet'
```

---

# 🔍 Terraform State Check

Command

```bash
terraform state list
```

## इसका उद्देश्य

Terraform State में कौन-कौन से Resources मौजूद हैं यह दिखाता है।

---

# 🔍 Resource Details

Command

```bash
terraform state show azurerm_subnet.subnet["StreamFlix"]
```

## इसका उद्देश्य

किसी एक Resource की पूरी Configuration दिखाता है।

---

# 🔍 Azure Resources Refresh

Command

```bash
terraform refresh
```

## इसका उद्देश्य

Azure Portal और Terraform State को Sync करता है।

---

# 🔍 Dependency Graph

Command

```bash
terraform graph
```

## इसका उद्देश्य

Resources की Dependency दिखाता है।

---

# 🔍 Destroy

Command

```bash
terraform destroy
```

## इसका उद्देश्य

Terraform द्वारा बनाए गए सभी Resources Delete करता है।

---

# 🧠 Debugging Tips

✔ हमेशा Error की आखिरी Line पढ़ें।

✔ Error में Resource Name पहचानें।

✔ Resource का Reference Verify करें।

✔ for_each की Key और Reference एक जैसे होने चाहिए।

✔ Apply करने से पहले हमेशा Plan देखें।

✔ Production में बिना Plan के Apply न करें।

---

# 📚 आपने क्या सीखा?

- ✅ terraform fmt
- ✅ terraform validate
- ✅ terraform plan
- ✅ terraform apply
- ✅ terraform state list
- ✅ terraform state show
- ✅ terraform refresh
- ✅ terraform graph
- ✅ Invalid Index Error Resolve करना
- ✅ for_each Key और Resource Reference समझना

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `26-Deploy-Second-Linux-Virtual-Machine-VM02.md` | `README.md` | `27-Create-Azure-Bastion-and-Secure-VM-Access.md` |

---

> 🚀 **Project Status:** VM-02 Troubleshooting Guide Completed Successfully.

---

