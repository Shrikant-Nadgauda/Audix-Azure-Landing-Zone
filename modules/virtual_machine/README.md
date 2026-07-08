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

# 💻 MobaXterm - Multiple SSH Sessions and VM Management

> **Document:** `28-MobaXterm-Multiple-SSH-Sessions-and-VM-Management.md`

![MobaXterm](https://img.shields.io/badge/MobaXterm-SSH-orange?style=for-the-badge)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-E95420?style=for-the-badge&logo=ubuntu)
![Azure](https://img.shields.io/badge/Azure-VM-0078D4?style=for-the-badge&logo=microsoftazure)

---

# 📖 Introduction

अब हमारे Azure Environment में दो Linux Virtual Machines हैं।

- VM-01
- VM-02

Enterprise Environment में Engineers एक समय पर कई Servers Manage करते हैं।

इसीलिए Multiple SSH Sessions का उपयोग किया जाता है।

इस Chapter में हम सीखेंगे कि MobaXterm का उपयोग करके दोनों Virtual Machines को एक साथ कैसे Manage किया जाता है।

---

# 🎯 Objective

इस Chapter के अंत तक आप सीखेंगे

- MobaXterm में नया Session बनाना
- Saved Sessions बनाना
- दो SSH Sessions एक साथ खोलना
- Tabs के बीच Switch करना
- Split Terminal का उपयोग करना
- VM-01 और VM-02 को एक साथ Manage करना

---

# 🏗️ Lab Topology

```text
                Azure

        ┌──────────────────┐

              VM-01

        Public IP

        Ubuntu 24.04

──────────────────────────────────

              VM-02

        Public IP

        Ubuntu 24.04
```

---

# Step 1 - Open MobaXterm

Windows में

```text
Start

↓

MobaXterm
```

Open करें।

---

# Step 2 - Create New SSH Session

Click

```text
Session
```

---

Select

```text
SSH
```

---

# Step 3 - Configure VM-01

Remote Host

```text
<VM-01 Public IP>
```

Username

```text
azureuser
```

Port

```text
22
```

यदि Private Key है

```text
Advanced SSH Settings

↓

Use Private Key
```

अपनी Private Key Select करें।

---

# Step 4 - Save Session

Bookmark Name

```text
VM-01
```

Save करें।

अब यह Left Panel में दिखाई देगा।

---

# Step 5 - Create VM-02 Session

फिर से

```text
Session

↓

SSH
```

---

Remote Host

```text
<VM-02 Public IP>
```

Username

```text
azureuser
```

Port

```text
22
```

Private Key वही रहेगी।

Bookmark Name

```text
VM-02
```

Save करें।

---

# Step 6 - Open Both Sessions

अब Left Side में

```text
VM-01

VM-02
```

दोनों Saved Sessions दिखाई देंगी।

Double Click करें।

अब दोनों Tabs Open हो जाएँगी।

---

# Step 7 - Switch Between Tabs

Keyboard Shortcut

```text
Ctrl + Tab
```

या

Mouse से Tab Select करें।

---

# Step 8 - Rename Tabs

Right Click

↓

Rename Session

उदाहरण

```text
Production-VM01

Production-VM02
```

---

# Step 9 - Split Screen

Menu

```text
View

↓

Split Right
```

या

```text
Split Bottom
```

अब

Left Side

```text
VM-01
```

Right Side

```text
VM-02
```

दोनों Servers एक साथ दिखाई देंगे।

---

# Step 10 - Verify Both Servers

VM-01

```bash
hostname
```

Expected Output

```text
vm01
```

---

VM-02

```bash
hostname
```

Expected Output

```text
vm02
```

---

# Step 11 - Check Current User

```bash
whoami
```

Output

```text
azureuser
```

---

# Step 12 - Check Current Directory

```bash
pwd
```

Expected

```text
/home/azureuser
```

---

# Step 13 - Check Server IP

```bash
hostname -I
```

VM-01

```text
10.0.1.x
```

VM-02

```text
10.0.2.x
```

---

# Step 14 - Check OS Version

```bash
cat /etc/os-release
```

Expected

```text
Ubuntu Server 24.04 LTS
```

---

# Step 15 - Keep Both Sessions Active

अब

VM-01

पर Commands चला सकते हैं।

साथ ही

VM-02

पर दूसरी Commands भी चला सकते हैं।

Enterprise Engineers इसी तरीके से कई Servers Manage करते हैं।

---

# Current Architecture

```text
                  Internet

        ┌────────────┴────────────┐

      SSH                      SSH

        │                         │

        ▼                         ▼

      VM-01                   VM-02
```

---

# Future Architecture

```text
                  Internet

                      │

                Azure Bastion

                 /          \

            VM-01          VM-02
```

---

# Best Practices

- प्रत्येक Server के लिए अलग Saved Session रखें।
- Session का Meaningful Name रखें।
- Private Key को सुरक्षित रखें।
- Split View का उपयोग Monitoring के समय करें।
- Public IP हटाने से पहले Saved Sessions Verify करें।

---

# आपने क्या सीखा?

- MobaXterm Install
- SSH Session Create
- Multiple Sessions
- Saved Sessions
- Split Screen
- VM-01 और VM-02 Management

---

# Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `27-Create-Azure-Bastion-and-Secure-VM-Access.md` | `README.md` | `29-Access-VMs-Using-Azure-Bastion.md` |

---

> 🚀 **Project Status:** Multiple SSH Sessions Ready

---

# 🛡️ Access Virtual Machines Using Azure Bastion

> **Document:** `29-Access-Virtual-Machines-Using-Azure-Bastion.md`

![Azure](https://img.shields.io/badge/Azure-Bastion-0078D4?style=for-the-badge&logo=microsoftazure)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-E95420?style=for-the-badge&logo=ubuntu)
![Security](https://img.shields.io/badge/Security-Zero_Trust-success?style=for-the-badge)

---

# 📖 Introduction

अब तक हमने दोनों Virtual Machines को Public IP के माध्यम से SSH किया था।

अब हम Azure Bastion का उपयोग करके बिना Public IP के Secure तरीके से VM Access करना सीखेंगे।

यही Enterprise और Production Environment की Best Practice है।

---

# 🎯 Objective

इस Chapter में हम सीखेंगे

- Azure Bastion Verify करना
- VM-01 Access करना
- VM-02 Access करना
- Browser आधारित SSH
- Private Network Access
- Public IP हटाने की तैयारी

---

# 🏗️ Current Architecture

```text
Internet
     │
     ▼
Azure Bastion
     │
     ├──────────────┐
     │              │
     ▼              ▼
   VM-01         VM-02
```

---

# Step 1 - Verify Bastion

Azure Portal

```text
Resource Groups

↓

rg-dev-southeastasia-audix-001

↓

Azure Bastion
```

Status

```text
Running
```

---

# Step 2 - Open VM-01

Azure Portal

```text
Virtual Machines

↓

vm-dev-southeastasia-audix-001
```

---

# Step 3 - Connect

Top Menu

```text
Connect

↓

Bastion
```

---

# Step 4 - Authentication

Username

```text
azureuser
```

Authentication

```text
SSH Private Key
```

Upload

```text
Audix-vm-001_key.pem
```

Click

```text
Connect
```

---

# Step 5 - Verify Login

Run

```bash
hostname
```

Expected

```text
vm01
```

---

Run

```bash
whoami
```

Expected

```text
azureuser
```

---

Run

```bash
hostname -I
```

Expected

```text
10.0.1.x
```

---

# Step 6 - Access VM-02

Azure Portal

```text
Virtual Machines

↓

vm-dev-southeastasia-audix-002

↓

Connect

↓

Bastion
```

---

Username

```text
azureuser
```

Private Key

```text
Audix-vm-001_key.pem
```

Click

```text
Connect
```

---

# Step 7 - Verify VM-02

Run

```bash
hostname
```

Expected

```text
vm02
```

---

Run

```bash
hostname -I
```

Expected

```text
10.0.2.x
```

---

# Step 8 - Verify Nginx

VM-01

```bash
sudo systemctl status nginx
```

Expected

```text
active (running)
```

---

VM-02

```bash
sudo systemctl status nginx
```

Expected

```text
active (running)
```

---

# Step 9 - Verify Website

VM-01

```bash
curl localhost
```

Website HTML दिखाई देनी चाहिए।

---

VM-02

```bash
curl localhost
```

Website HTML दिखाई देनी चाहिए।

---

# Step 10 - Verify Private Connectivity

VM-01

```bash
ping 10.0.2.4
```

यदि NSG अनुमति देता है तो Reply मिलेगा।

---

VM-02

```bash
ping 10.0.1.4
```

यदि NSG अनुमति देता है तो Reply मिलेगा।

---

# Enterprise Architecture

```text
                    Internet
                        │
                        ▼
               Azure Bastion
                        │
         ┌──────────────┴──────────────┐
         │                             │
         ▼                             ▼
      VM-01                        VM-02
   10.0.1.0/24                  10.0.2.0/24
```

---

# Azure Bastion Advantages

- Public IP की आवश्यकता नहीं रहती।
- Browser से Secure SSH/RDP मिलता है।
- Port 22 और 3389 Internet पर Open नहीं रखने पड़ते।
- Zero Trust Architecture को Support करता है।
- Enterprise Security Standard का हिस्सा है।

---

# Common Issues

### Bastion दिखाई नहीं दे रहा

Azure Bastion का Status Check करें।

---

### Authentication Failed

Username और Private Key Verify करें।

---

### Connection Timeout

- Bastion Running है या नहीं।
- VM Running है या नहीं।
- AzureBastionSubnet सही है या नहीं।

---

### Nginx नहीं चल रहा

```bash
sudo systemctl restart nginx
```

---

# आपने क्या सीखा?

- Azure Bastion से VM-01 Access
- Azure Bastion से VM-02 Access
- Browser आधारित SSH
- Secure Private Connectivity
- Enterprise Best Practice

---

# अगले Chapter में

```text
30-Remove-Public-IP-and-Access-VMs-Privately.md
```

इस Chapter में

- VM-01 की Public IP Remove करेंगे।
- VM-02 की Public IP Remove करेंगे।
- केवल Azure Bastion से Login करेंगे।
- Production जैसा Secure Environment तैयार करेंगे।

---

# Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `28-MobaXterm-Multiple-SSH-Sessions-and-VM-Management.md` | `README.md` | `30-Remove-Public-IP-and-Access-VMs-Privately.md` |

---

> 🚀 **Project Status:** Azure Bastion Access Successfully Verified

---


# 🔒 Remove Public IP and Access VMs Privately

> **Document:** `30-Remove-Public-IP-and-Access-VMs-Privately.md`

![Azure](https://img.shields.io/badge/Azure-Networking-0078D4?style=for-the-badge&logo=microsoftazure)
![Security](https://img.shields.io/badge/Security-Private_Access-success?style=for-the-badge)
![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?style=for-the-badge&logo=terraform)

---

# 📖 Introduction

अब तक हमने

- VM-01
- VM-02

को Public IP के माध्यम से Access किया।

इसके बाद Azure Bastion Configure किया और Browser से Secure Login करना सीख लिया।

अब Production Environment की तरफ एक और महत्वपूर्ण कदम बढ़ाते हैं।

हम दोनों Virtual Machines से Public IP Remove करेंगे और केवल Azure Bastion के माध्यम से Login करेंगे।

यही Enterprise Security की Best Practice है।

---

# 🎯 Objective

इस Chapter में हम सीखेंगे

- Public IP Remove क्यों करते हैं।
- Public IP Remove करने से क्या होगा।
- Terraform में Public IP कैसे Remove करें।
- Azure Bastion से Login Verify करें।
- Private Access Verify करें।

---

# 🏗️ Current Architecture

```text
                    Internet

            ┌────────┴────────┐

       Public IP          Public IP

           │                  │

         VM-01             VM-02

           ▲                  ▲

           └──── Azure Bastion ────┘
```

---

# 🏗️ Target Architecture

```text
                    Internet

                        │

                        ▼

                 Azure Bastion

                        │

        ┌───────────────┴──────────────┐

        │                              │

      VM-01                         VM-02

   Private IP                    Private IP
```

---

# Azure में Public IP क्यों हटाते हैं?

Production Environment में Servers को Internet पर Direct Expose नहीं किया जाता।

यदि किसी VM का Public IP Internet पर उपलब्ध है तो

- Unauthorized Login Attempt हो सकते हैं।
- Port Scanning हो सकती है।
- Brute Force Attack हो सकते हैं।
- Attack Surface बढ़ जाता है।

इसलिए Enterprise Environment में Public IP हटाकर Bastion या VPN के माध्यम से Access किया जाता है।

---

# Step 1 - Verify Bastion

Azure Portal

```text
Azure Bastion

↓

Status

↓

Running
```

यदि Bastion Running नहीं है तो Public IP Remove न करें।

---

# Step 2 - Verify VM Access

पहले

VM-01

और

VM-02

दोनों में Azure Bastion से Login करके Verify करें।

Commands

```bash
hostname
```

```bash
whoami
```

```bash
hostname -I
```

यदि दोनों VM Accessible हैं तभी अगले Step पर जाएँ।

---

# Step 3 - Remove Public IP from VM-01

Terraform में

VM-01 NIC Resource खोजें।

पुराना Code

```hcl
public_ip_address_id = azurerm_public_ip.vm01_pip.id
```

इसे Comment कर दें।

```hcl
# public_ip_address_id = azurerm_public_ip.vm01_pip.id
```

या पूरी Line Remove कर दें।

---

# Step 4 - Remove Public IP from VM-02

VM-02 NIC में

```hcl
public_ip_address_id = azurerm_public_ip.vm02_pip.id
```

को भी Remove करें।

---

# Step 5 - Terraform Plan

```bash
terraform plan
```

Expected

```text
NIC will be updated

Public IP association removed
```

---

# Step 6 - Apply Changes

```bash
terraform apply
```

Terraform केवल NIC Update करेगा।

VM Delete नहीं होगी।

---

# Step 7 - Verify Azure Portal

VM

↓

Networking

↓

Public IP

Expected

```text
None
```

---

# Step 8 - Verify Bastion Login

Azure Portal

↓

Virtual Machine

↓

Connect

↓

Bastion

Login करें।

Expected

```text
Connected Successfully
```

---

# Step 9 - Verify Private Network

VM-01

```bash
hostname -I
```

Expected

```text
10.0.1.x
```

---

VM-02

```bash
hostname -I
```

Expected

```text
10.0.2.x
```

---

# Step 10 - Verify Website

यदि आगे Load Balancer नहीं लगाया है तो

Browser से Public IP द्वारा Website Open नहीं होगी।

यह Expected Behavior है।

अब केवल

Azure Bastion

↓

SSH

↓

Nginx Check

```bash
sudo systemctl status nginx
```

Expected

```text
active (running)
```

---

# Enterprise Architecture

```text
                    Internet

                        │

                        ▼

                 Azure Bastion

                        │

            Private Azure Network

        ┌─────────────┴─────────────┐

        │                           │

      VM-01                     VM-02

     No Public IP             No Public IP
```

---

# Best Practices

- Production VM पर Public IP न रखें।
- Azure Bastion या VPN का उपयोग करें।
- NSG में केवल आवश्यक Rules रखें।
- Bastion Verify किए बिना Public IP Remove न करें।
- SSH Keys सुरक्षित रखें।

---

# Common Mistakes

❌ Bastion Verify किए बिना Public IP Remove करना।

❌ VM Running Verify न करना।

❌ Terraform Plan देखे बिना Apply करना।

❌ Public IP Delete करने के बाद Browser से Website Open करने की कोशिश करना।

---

# आपने क्या सीखा?

- Public IP Remove करना
- NIC Update
- Bastion आधारित Access
- Private Networking
- Enterprise Security Best Practices

---

# अगले Chapter में

```text
31-Host-Multiple-Websites-on-VM02.md
```

इस Chapter में

- VM-02 पर Multiple Website Directories बनाएँगे।
- Nginx Virtual Hosts Configure करेंगे।
- Multiple Domains Host करेंगे।
- Enterprise Web Hosting सीखेंगे।

---

# Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `29-Access-Virtual-Machines-Using-Azure-Bastion.md` | `README.md` | `31-Host-Multiple-Websites-on-VM02.md` |

---

> 🚀 **Project Status:** Public IP Removed Successfully - Secure Private Infrastructure Ready


---

# 28.1 Troubleshooting SSH Authentication Issue (Part-01)

---

# 🎯 Scenario

हमने Terraform की सहायता से दूसरी Linux Virtual Machine (VM-02) Create की।

VM Successfully Create हो गई।

Azure Portal में VM Running थी।

Public IP भी Assigned थी।

लेकिन जब MobaXterm से SSH करने का प्रयास किया तो Login नहीं हुआ।

Error आया:

```text
login as: azureuser

No supported authentication methods available
(server sent: publickey)
```

---

# इसका मतलब क्या है?

इस Error का सीधा अर्थ है:

- VM तक Network पहुँच रहा है।
- Port 22 Open है।
- SSH Service चल रही है।
- लेकिन VM Password Accept नहीं कर रही।
- VM केवल Public Key Authentication Accept कर रही है।

यानी Client सही Private Key नहीं भेज रहा या VM में सही Public Key नहीं है।

---

# Step-1
## सबसे पहले Terraform Configuration Check की

VM-02 का Linux VM Resource देखा।

```hcl
admin_username = "azureuser"

disable_password_authentication = true

admin_ssh_key {

    username = "azureuser"

    public_key = file("~/.ssh/id_rsa.pub")

}
```

---

# इसका मतलब

Password Authentication पूरी तरह Disable है।

```
❌ Password Login नहीं चलेगा

✅ केवल SSH Key से Login होगा
```

---

# सबसे पहले क्या Verify करना चाहिए?

Terraform File में यह Command चलाएँ

```powershell
Select-String -Path .\main.tf -Pattern "disable_password_authentication|admin_ssh_key|admin_password|vm02"
```

---

# इससे क्या पता चलता है?

यह Command पूरे main.tf में Search करती है कि

- Password Enable है या नहीं
- SSH Key Configure है या नहीं
- VM-01 और VM-02 में Authentication अलग है या नहीं

---

# हमारे Project में Result

VM-01

```text
disable_password_authentication = false

admin_password = "P@ssw0rd@123456"
```

इसका मतलब

```
VM-01

Username : azureuser

Password : Available
```

---

VM-02

```text
disable_password_authentication = true

admin_ssh_key {

}
```

इसका मतलब

```
VM-02

Username : azureuser

Password : Disabled

केवल SSH Key Login
```

---

# अगला Verification

अब Check किया कि कौन-सी Public Key VM में भेजी जा रही है।

Command

```powershell
Select-String -Path .\main.tf -Pattern "public_key"
```

Output

```text
public_key = file("~/.ssh/id_rsa.pub")
```

---

# इसका मतलब

Terraform कोई नई Key Generate नहीं कर रहा।

यह Local Laptop की Public Key Read कर रहा है।

```
Laptop

id_rsa
        │
        │ Private Key
        │

id_rsa.pub
        │
        │ Public Key
        │
        ▼

Terraform

        │

Azure VM
```

---

# इसका मतलब

VM में केवल

```
id_rsa.pub
```

Copy होती है।

Login करते समय

```
id_rsa
```

Private Key Use करनी होती है।

---

# अब पहला शक किन चीज़ों पर गया?

✅ MobaXterm में Private Key Select नहीं हुई।

✅ गलत Public Key VM में चली गई।

✅ Username गलत Configure हुआ।

✅ NSG में Port 22 Block है।

✅ Terraform में admin_ssh_key गलत Configure हुआ।

---

# Part-01 Summary

इस Chapter में हमने केवल Terraform Configuration Verify की।

अभी तक हमने SSH Login Attempt नहीं किया।

पहले हमने यह Confirm किया कि

✔ Password Disabled है।

✔ SSH Key Enabled है।

✔ सही Public Key Configure हुई है।

✔ VM Password Accept नहीं करेगी।

---

# आगे क्या सीखेंगे?

Part-02 में

- Local SSH Keys Verify करेंगे।
- Laptop की Public Key Check करेंगे।
- Azure VM की authorized_keys Verify करेंगे।
- MobaXterm Configuration Check करेंगे।
- SSH Login क्यों Fail हो रहा था उसका Root Cause ढूँढेंगे।

----

# 28.2 Troubleshooting SSH Authentication Issue (Part-02)

---

# 🎯 Scenario

Part-01 में हमने Verify किया कि

- VM-02 Password Authentication पर नहीं चल रही।
- केवल SSH Key Authentication Enabled है।
- Terraform सही Public Key VM में भेज रहा है।

अब अगला सवाल था...

```
क्या Laptop वास्तव में VM तक पहुँच भी रहा है?
```

यदि Network ही Fail है,
तो SSH Key कभी Verify ही नहीं होगी।

इसलिए सबसे पहले Network Test किया गया।

---

# Step-01
## Port 22 Connectivity Test

PowerShell में Command चलाई।

```powershell
Test-NetConnection 20.212.32.210 -Port 22
```

---

# यह Command क्या करती है?

यह Windows की Built-in Network Testing Command है।

इससे पता चलता है कि

```
Laptop
      │
      │
      ▼
Azure VM
```

तक Port 22 खुला है या नहीं।

---

# अगर Output ऐसा आए

```text
TcpTestSucceeded : True
```

मतलब

```
Laptop

        │

        ▼

Port-22

        │

        ▼

VM

Connection Successful
```

यानी

Network बिल्कुल ठीक है।

अब अगला Step SSH Authentication होगा।

---

# अगर Output ऐसा आए

```text
TcpTestSucceeded : False
```

मतलब

Laptop VM तक पहुँच ही नहीं पा रहा।

SSH शुरू होने से पहले ही Connection Fail हो गया।

---

# ऐसी स्थिति में किन चीज़ों को Check करना चाहिए?

---

# 1. Public IP Verify करें

Azure Portal

```
VM-02

↓

Overview
```

Check करें

```
Public IP
```

यदि Public IP

```
None
```

दिख रही है

तो इसका मतलब

VM Direct Internet से Accessible नहीं है।

---

# 2. NSG Rule Check करें

Azure Portal

```
VM-02

↓

Networking

↓

Inbound Rules
```

यह Rule होना चाहिए

```
Protocol

TCP

Port

22

Action

Allow
```

---

# यदि Port 22 Block होगा

तो

```
SSH Connection

Failed
```

---

# 3. Public IP NIC पर Attached है या नहीं

Networking में

NIC Open करें।

Check करें

```
Associated Public IP
```

यदि

```
None
```

है

तो Terraform Apply के बाद Public IP Remove हो चुकी है।

---

# 4. Terraform Apply के बाद क्या किया?

हमने Project में एक Chapter बनाया था

```
Remove Public IP
```

उसमें

```hcl
public_ip_address_id
```

Comment किया गया था।

यदि उसके बाद

```
terraform apply
```

चलाया गया

तो Public IP NIC से Detach हो जाएगी।

---

# ऐसी स्थिति में

Laptop

↓

Internet

↓

VM

Connection Impossible

---

# 5. Bastion से Login होता है?

यदि

Azure Bastion Deploy है

तो

```
VM

↓

Connect

↓

Bastion
```

यदि Bastion से Login हो जाता है

तो

VM बिल्कुल Healthy है।

समस्या केवल Public SSH की है।

---

# अगला Step

यदि Network बिल्कुल ठीक है

तो अब हमें SSH Authentication Verify करनी होगी।

यानी

- Laptop कौन-सी Key भेज रहा है।
- VM कौन-सी Key Accept कर रही है।
- दोनों Match कर रही हैं या नहीं।

यह हम अगले Chapter में सीखेंगे।

---

# इस Chapter में क्या सीखा?

✔ Network पहले Verify करना चाहिए।

✔ TcpTestSucceeded हमें Network की वास्तविक स्थिति बताता है।

✔ SSH Fail होने का मतलब हमेशा SSH Key नहीं होता।

✔ Public IP और NSG सबसे पहले Check करने चाहिए।

✔ Bastion Network Troubleshooting का बहुत अच्छा तरीका है।

---

# अगले Chapter में

28.3

SSH Public Key Validation

हम सीखेंगे

- Local SSH Keys
- id_rsa
- id_rsa.pub
- authorized_keys
- Azure VM में कौन-सी Key Install हुई
- Laptop और Azure VM की Keys Compare कैसे करें


-----


# 28.3 - SSH Authentication Deep Dive (id_rsa, id_rsa.pub & authorized_keys)

---

# 🎯 Objective

इस Chapter में हम समझेंगे:

- SSH Key Pair क्या होता है?
- id_rsa और id_rsa.pub में अंतर
- authorized_keys क्या है?
- Terraform Public Key कैसे भेजता है?
- Azure VM Login कैसे Verify करती है?
- Azure Run Command से Verification कैसे करें?
- SSH Authentication Troubleshooting कैसे करें?

---

# Real World Scenario

हमने VM-02 Create की।

Terraform Code में लिखा था:

```hcl
admin_ssh_key {

  username = "azureuser"

  public_key = file("~/.ssh/id_rsa.pub")

}
```

Terraform Successfully Apply हो गया।

लेकिन SSH Login करते समय Error आया:

```text
No supported authentication methods available (server sent: publickey)
```

यहीं से Troubleshooting शुरू हुई।

---

# Step-1
## Local SSH Keys Verify करना

PowerShell

```powershell
Test-Path $HOME\.ssh\id_rsa
```

Output

```text
True
```

मतलब

Private Key मौजूद है।

---

PowerShell

```powershell
Test-Path $HOME\.ssh\id_rsa.pub
```

Output

```text
True
```

मतलब

Public Key भी मौजूद है।

---

पूरी SSH Directory देखें

```powershell
Get-ChildItem $HOME\.ssh
```

Example Output

```text
id_rsa
id_rsa.pub
known_hosts
config
```

---

# SSH Key Pair क्या होता है?

जब SSH Key Generate होती है

तो हमेशा दो Files बनती हैं।

```
C:\Users\ADMIN\.ssh

│

├── id_rsa

└── id_rsa.pub
```

---

## id_rsa

```
Private Key
```

यह Secret होती है।

इसे कभी किसी को नहीं देना चाहिए।

इसी से Login होता है।

---

## id_rsa.pub

```
Public Key
```

यह VM के अंदर Copy होती है।

इसे Share किया जा सकता है।

---

# Terraform क्या करता है?

Terraform यह Line पढ़ता है

```hcl
public_key = file("~/.ssh/id_rsa.pub")
```

इसका मतलब

```
Laptop

id_rsa.pub

      │

Terraform

      │

Azure VM

authorized_keys
```

Terraform केवल Public Key भेजता है।

Private Key कभी Azure में Upload नहीं होती।

---

# Step-2
## Terraform कौन-सी Public Key पढ़ रहा है?

PowerShell

```powershell
Select-String -Path .\main.tf -Pattern "public_key"
```

Output

```text
public_key = file("~/.ssh/id_rsa.pub")
```

मतलब

Terraform Local Laptop की Public Key Read कर रहा है।

---

# Step-3
## Azure VM में Public Key Verify करना

Azure Portal

```
VM-02

↓

Support + Troubleshooting

↓

Run Command

↓

RunShellScript
```

Command

```bash
ls -la /home/azureuser/.ssh
```

Output

```text
authorized_keys
```

मतलब

SSH Directory मौजूद है।

---

अब Public Key देखें

```bash
cat /home/azureuser/.ssh/authorized_keys
```

Output

```text
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQ....
```

---

# Step-4
## Local Laptop की Public Key देखें

PowerShell

```powershell
type $HOME\.ssh\id_rsa.pub
```

Output

```text
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQ....
```

---

# Step-5
## Public Key Compare करना

अब Compare किया

```
Laptop

id_rsa.pub

        ==

VM

authorized_keys
```

Result

```
100% Match
```

इसका मतलब

Terraform ने सही Public Key VM में Install की।

---

# SSH Login वास्तव में कैसे होता है?

पूरा Authentication Process

```
                    Laptop

            id_rsa (Private Key)

                    │

                    │

                    ▼

           SSH Client Request

                    │

                    ▼

        Azure Linux Virtual Machine

                    │

                    ▼

authorized_keys

                    │

      Public Key Match करती है?

          │                     │

         Yes                   No

          │                     │

          ▼                     ▼

 Login Success         Authentication Failed
```

---

# सबसे महत्वपूर्ण Concept

Azure VM कभी Private Key नहीं रखती।

Azure VM केवल Public Key Store करती है।

```
Azure VM

authorized_keys

↓

Public Keys
```

Login करते समय

SSH Client

Private Key भेजता है।

VM उसे Verify करती है।

---

# Authentication कैसे Verify होती है?

```
Laptop

Private Key

↓

Digital Signature

↓

Azure VM

↓

authorized_keys

↓

Public Key

↓

Match?

↓

Login
```

यदि Match नहीं हुई

तो

```text
Permission denied (publickey)
```

या

```text
No supported authentication methods available
```

---

# Azure Run Command क्यों उपयोग किया?

क्योंकि

SSH Login नहीं हो रही थी।

लेकिन Azure Run Command

SSH के बिना भी VM के अंदर Commands Execute कर सकती है।

इससे

- authorized_keys
- SSH Config
- Logs

सब Verify किए जा सकते हैं।

---

# SSH Configuration Verify करना

Run Command

```bash
grep "^PubkeyAuthentication" /etc/ssh/sshd_config
```

Output

```text
PubkeyAuthentication yes
```

मतलब

SSH Key Authentication Enabled है।

---

Command

```bash
grep "^PasswordAuthentication" /etc/ssh/sshd_config
```

Output

```text
PasswordAuthentication no
```

मतलब

Password Login Disabled है।

---

# SSH Logs Check करना

```bash
journalctl -u ssh --no-pager -n 30
```

Example

```text
Disconnected from authenticating user azureuser

No supported authentication methods available
```

मतलब

Server चल रहा था।

लेकिन Authentication Fail हो रही थी।

---

# authorized_keys Permission Verify करना

```bash
ls -l /home/azureuser/.ssh/authorized_keys
```

Output

```text
-rw-------
```

मतलब

Permission सही है।

---

# इस Troubleshooting में हमने क्या Verify किया?

✅ Terraform सही Public Key भेज रहा है।

✅ Azure VM में Public Key मौजूद है।

✅ SSH Service Running है।

✅ Password Authentication Disabled है।

✅ Public Key Authentication Enabled है।

✅ authorized_keys Permission सही है।

---

# Final Root Cause

Infrastructure में कोई समस्या नहीं थी।

समस्या Client Side पर थी।

MobaXterm / SSH Client सही Private Key उपयोग नहीं कर रहा था।

---

# Final Solution

SSH Session में

```
Username

azureuser
```

Private Key

```
C:\Users\ADMIN\.ssh\id_rsa
```

Select की गई।

⚠️

कभी भी

```
id_rsa.pub
```

Select नहीं करनी है।

हमेशा

```
id_rsa
```

Select करनी है।

---

# Complete SSH Authentication Flow

```
                Laptop

        id_rsa (Private Key)

               │

               ▼

SSH Client Generates Digital Signature

               │

               ▼

Azure Linux VM

               │

               ▼

authorized_keys

               │

Public Key Match?

      │                    │

     Yes                  No

      │                    │

      ▼                    ▼

SSH Login Success     Authentication Failed
```

---

# Key Takeaways

- SSH हमेशा Key Pair पर आधारित होती है।
- Terraform केवल Public Key Azure VM में Copy करता है।
- Private Key हमेशा Local Machine पर रहती है।
- Azure VM केवल authorized_keys में Public Keys Store करती है।
- Login हमेशा Matching Private Key से होता है।
- Azure Run Command बिना SSH Login के भी Debugging के लिए उपयोगी है।
- Troubleshooting हमेशा Step-by-Step करनी चाहिए, Guess नहीं करना चाहिए।

---

# Git Commit

```bash
git add .

git commit -m "docs: add SSH authentication deep dive and troubleshooting guide"
```
---

# 28.4 - Connect VM-02 Using SSH & Prepare Web Server

> **Objective**
>
> इस Lab में हम VM-02 पर SSH Login करेंगे, Nginx Install करेंगे, Firewall Verify करेंगे और VM को Multiple Website Hosting के लिए तैयार करेंगे।

---

# 📚 Learning Objectives

इस Lab के अंत तक आप सीखेंगे:

- VM-02 पर SSH Login करना
- MobaXterm से Multiple SSH Sessions खोलना
- Ubuntu Server Update करना
- Nginx Install करना
- Nginx Service Verify करना
- Port 80 Check करना
- Browser से Default Website Access करना
- VM को आगे Multiple Website Hosting के लिए तैयार करना

---

# 🏗 Current Architecture

```text
                    Internet
                        │
                        │
                  Public IP (VM-02)
                        │
                        ▼
                 Ubuntu Linux VM-02
                        │
                 SSH Port 22
                        │
                    MobaXterm
```

---

# Step 1 - Open MobaXterm

अपने Laptop पर

**MobaXterm Open करें।**

---

# Step 2 - Create New SSH Session

Click

```
Session
```

↓

```
SSH
```

---

# Step 3 - Enter VM Details

Fill the following details:

| Setting | Value |
|----------|-------|
| Remote Host | VM-02 Public IP |
| Port | 22 |
| Username | azureuser |

---

# Step 4 - Select SSH Private Key

Click

```
Advanced SSH Settings
```

Enable

```
Use Private Key
```

Select

```
C:\Users\ADMIN\.ssh\id_rsa
```

> **Important**
>
> हमेशा Private Key (`id_rsa`) Select करें।
>
> `id_rsa.pub` कभी Select नहीं करना है।

---

# Step 5 - Connect

Click

```
OK
```

यदि सब सही है तो Login दिखाई देगा।

```text
azureuser@vm02:~$
```

---

# Step 6 - Verify Logged In User

Run

```bash
whoami
```

Expected Output

```text
azureuser
```

---

# Step 7 - Check Hostname

```bash
hostname
```

Example

```text
vm02
```

---

# Step 8 - Verify IP Address

```bash
hostname -I
```

Example

```text
10.0.2.4
```

यही VM का Private IP है।

---

# Step 9 - Update Ubuntu

```bash
sudo apt update
```

फिर

```bash
sudo apt upgrade -y
```

---

# Why?

इससे Operating System के Packages Latest Version पर Update हो जाते हैं।

---

# Step 10 - Install Nginx

```bash
sudo apt install nginx -y
```

---

# Step 11 - Verify Nginx

```bash
nginx -v
```

Example

```text
nginx version: nginx/1.24.x
```

---

# Step 12 - Check Service Status

```bash
sudo systemctl status nginx
```

Expected

```text
Active: active (running)
```

यदि Exit करना हो

```
q
```

---

# Step 13 - Enable Nginx at Boot

```bash
sudo systemctl enable nginx
```

---

# Step 14 - Verify Listening Port

```bash
sudo ss -tulnp | grep 80
```

Expected

```text
LISTEN
```

इसका अर्थ

Nginx Port 80 पर Requests Accept कर रहा है।

---

# Step 15 - Verify Firewall Rules

Ubuntu Firewall Status

```bash
sudo ufw status
```

यदि

```text
inactive
```

दिखे

तो कोई समस्या नहीं।

Azure NSG Firewall पहले से Traffic Control कर रहा है।

---

# Step 16 - Check Web Directory

```bash
ls /var/www/html
```

Expected

```text
index.nginx-debian.html
```

---

# Step 17 - Open Default Website

Browser में जाएँ

```
http://<VM-02-PUBLIC-IP>
```

Example

```
http://20.xxx.xxx.xxx
```

Expected Page

```
Welcome to nginx!
```

---

# Step 18 - Verify Nginx Process

```bash
ps -ef | grep nginx
```

Expected

Master Process

Worker Process

दोनों दिखाई देंगे।

---

# Step 19 - Verify Web Root

```bash
pwd
```

```bash
cd /var/www/html
```

```bash
pwd
```

Expected

```text
/var/www/html
```

यही हमारी Website Files की Default Location है।

---

# Step 20 - Create Project Folder

```bash
mkdir -p ~/projects
```

Check

```bash
ls
```

---

# Why?

आगे Git Repository यहीं Clone करेंगे।

---

# Final Verification Checklist

| Check | Status |
|--------|--------|
| SSH Login | ✅ |
| Ubuntu Updated | ✅ |
| Nginx Installed | ✅ |
| Nginx Running | ✅ |
| Port 80 Listening | ✅ |
| Browser Working | ✅ |
| Web Root Verified | ✅ |
| Project Folder Created | ✅ |

---

# Architecture After This Lab

```text
                    Internet
                        │
                        │
                  Public IP
                        │
                        ▼
                 Ubuntu Linux VM-02
                        │
          ┌────────────────────────┐
          │        Nginx           │
          └────────────────────────┘
                        │
               /var/www/html
                        │
                 Default Website
```

---

# What We Learned

- SSH Login using MobaXterm
- SSH Private Key Authentication
- Ubuntu Package Update
- Nginx Installation
- Nginx Service Management
- Port Verification
- Default Website Testing
- Web Root Directory
- Preparing VM for Website Hosting

---

# Next Lab

```
31-Multiple-Websites-on-VM02.md
```

हम VM-02 पर Multiple Websites Deploy करेंगे और Nginx को Production Web Server की तरह उपयोग करेंगे।

---

# Git Commit

```bash
git add .

git commit -m "Added Lab 28.4 - Connect VM-02 Using SSH and Prepare Web Server"

git push origin main
```

---

# Congratulations 🎉

अब आपकी **VM-02 पूरी तरह Website Hosting के लिए तैयार है।**

अगले Lab में हम इस Server पर Multiple Websites Deploy करेंगे और इसे एक Enterprise Web Hosting Server में बदलेंगे।


---

# 28.5 - Deploy First Website on VM-02 (Animal Care Foundation)

> **Objective**
>
> इस Lab में हम VM-02 पर अपनी पहली Production Website Deploy करेंगे।  
> Website को Nginx के Default Web Directory में Host करेंगे और Browser से Verify करेंगे।

---

# 📚 Learning Objectives

इस Lab के अंत तक आप सीखेंगे:

- Nginx Default Web Root समझना
- पुरानी Website Remove करना
- Git Repository Clone करना
- Website Files Copy करना
- File Permissions समझना
- Browser से Website Verify करना

---

# Current Architecture

```text
                 Internet
                     │
                     ▼
              VM-02 Public IP
                     │
                     ▼
                Ubuntu Linux
                     │
                     ▼
                  Nginx
                     │
                     ▼
              /var/www/html
                     │
          Default Nginx Website
```

आज इसे Replace करेंगे।

---

# Step 1 - Login to VM-02

MobaXterm से VM-02 Login करें।

Expected Prompt

```bash
azureuser@vm02:~$
```

---

# Step 2 - Verify Current Website

```bash
ls /var/www/html
```

Expected Output

```text
index.nginx-debian.html
```

यह Ubuntu की Default Website है।

---

# Step 3 - Remove Default Website

```bash
sudo rm -rf /var/www/html/*
```

Verify

```bash
ls /var/www/html
```

Expected Output

```text
(empty)
```

अब Web Root खाली है।

---

# Step 4 - Move to Home Directory

```bash
cd ~
```

Verify

```bash
pwd
```

Expected

```text
/home/azureuser
```

---

# Step 5 - Clone Website Repository

```bash
git clone https://github.com/devopsinsiders/Animal-Care-Foundation.git
```

> यदि Repository उपलब्ध नहीं है, तो अपनी Website Repository का URL उपयोग करें।

---

# Step 6 - Verify Repository

```bash
ls
```

Expected

```text
Animal-Care-Foundation
```

---

# Step 7 - Verify Website Files

```bash
cd Animal-Care-Foundation
```

```bash
ls
```

Expected

```text
index.html
assets
css
js
images
README.md
```

---

# Step 8 - Copy Website Files

```bash
sudo cp -r * /var/www/html/
```

---

# Step 9 - Verify Files

```bash
ls /var/www/html
```

Expected

```text
index.html
assets
css
js
images
```

---

# Step 10 - Restart Nginx

```bash
sudo systemctl restart nginx
```

---

# Step 11 - Verify Service

```bash
sudo systemctl status nginx
```

Expected

```text
Active: active (running)
```

Exit

```
q
```

---

# Step 12 - Browser Testing

Open Browser

```
http://<VM-02-Public-IP>
```

Example

```
http://20.xxx.xxx.xxx
```

अब आपकी Website दिखाई देनी चाहिए।

---

# Step 13 - Verify Homepage

Check

- Images Loading
- CSS Working
- Icons Visible
- Navigation Working
- Footer Visible

यदि सब सही है

Deployment सफल है।

---

# Directory Structure

```text
/var/www/html

│

├── index.html

├── assets/

├── css/

├── js/

├── images/
```

---

# Understanding the Deployment

```text
GitHub Repository
        │
        ▼
git clone
        │
        ▼
Linux Home Directory
        │
        ▼
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

# Verification Commands

Current Directory

```bash
pwd
```

Website Files

```bash
ls -la /var/www/html
```

Nginx Version

```bash
nginx -v
```

Service Status

```bash
sudo systemctl status nginx
```

Port Listening

```bash
sudo ss -tulnp | grep 80
```

---

# Common Errors

## Error

```text
Permission denied
```

Solution

```bash
sudo cp -r * /var/www/html/
```

---

## Error

```text
404 Not Found
```

Reason

Website Files Copy नहीं हुई।

---

## Error

```text
403 Forbidden
```

Reason

File Permissions गलत हैं।

Fix

```bash
sudo chmod -R 755 /var/www/html
```

---

## Error

```text
Welcome to nginx!
```

Reason

पुरानी Website अभी भी मौजूद है।

Solution

```bash
sudo rm -rf /var/www/html/*
```

फिर

```bash
sudo cp -r * /var/www/html/
```

---

# Final Verification Checklist

| Task | Status |
|------|--------|
| SSH Login | ✅ |
| Default Website Removed | ✅ |
| Repository Cloned | ✅ |
| Files Copied | ✅ |
| Nginx Restarted | ✅ |
| Website Accessible | ✅ |

---

# Architecture After Deployment

```text
Internet
    │
    ▼
Public IP
    │
    ▼
Ubuntu VM-02
    │
    ▼
Nginx
    │
    ▼
Animal Care Foundation Website
```

---

# What We Learned

- Git Clone
- Linux File Management
- Nginx Deployment
- Web Root
- Website Publishing
- Browser Testing
- Troubleshooting Deployment Issues

---

# Next Lab

```
31-Multiple-Websites-on-VM02.md
```

अब हम इसी VM पर **एक से अधिक Websites Host** करेंगे और Nginx को Enterprise Web Server की तरह Configure करेंगे।

---

# Git Commit

```bash
git add .

git commit -m "Added Lab 28.5 - Deploy First Website on VM-02"

git push origin main
```

---

# Congratulations 🎉

अब आपकी पहली Production Website सफलतापूर्वक VM-02 पर Deploy हो चुकी है।

अगले Lab में हम इसी Server पर Multiple Websites Host करेंगे और Enterprise Level Web Hosting सीखेंगे।


----

# 28.6 - Deploy Second Website on VM-02 (StreamFlix)

> **Objective**
>
> इस Lab में हम VM-02 पर दूसरी Website (StreamFlix) Deploy करेंगे।  
> अभी दोनों Websites को एक साथ Host नहीं करेंगे। पहले दूसरी Website Deploy करके Verify करेंगे।
>
> अगले Chapter (31) में Nginx Virtual Hosts की मदद से Multiple Websites Host करेंगे।

---

# 📚 Learning Objectives

इस Lab के अंत तक आप सीखेंगे:

- दूसरी Website Clone करना
- Existing Website का Backup लेना
- StreamFlix Website Deploy करना
- Nginx Reload करना
- Browser से Website Verify करना
- अगले Chapter के लिए Multiple Website Structure तैयार करना

---

# Current Architecture

```text
Internet
    │
    ▼
VM-02
    │
    ▼
Nginx
    │
    ▼
Animal Care Foundation Website
```

अब इसे अस्थायी रूप से Replace करेंगे।

---

# Step 1 - Login to VM-02

MobaXterm से Login करें।

```bash
azureuser@vm02:~$
```

---

# Step 2 - Go to Home Directory

```bash
cd ~
```

Verify

```bash
pwd
```

Expected

```text
/home/azureuser
```

---

# Step 3 - Clone StreamFlix Repository

```bash
git clone https://github.com/devopsinsiders/StreamFlix.git
```

Expected

```text
Cloning into 'StreamFlix'...
```

---

# Step 4 - Verify Repository

```bash
ls
```

Expected

```text
Animal-Care-Foundation

StreamFlix
```

अब दोनों Projects मौजूद हैं।

---

# Step 5 - Verify StreamFlix Files

```bash
cd StreamFlix
```

```bash
ls
```

Expected Output

```text
index.html
assets
favicon.ico
manifest.json
README.md
robots.txt
```

---

# Step 6 - Backup Existing Website

पहले Existing Website का Backup बनाएँ।

```bash
sudo mv /var/www/html /var/www/html-animal-backup
```

नई Web Root बनाएँ।

```bash
sudo mkdir /var/www/html
```

---

# Step 7 - Copy StreamFlix Files

```bash
sudo cp -r * /var/www/html/
```

---

# Step 8 - Verify Files

```bash
ls /var/www/html
```

Expected

```text
index.html
assets
favicon.ico
manifest.json
```

---

# Step 9 - Set Permissions

```bash
sudo chmod -R 755 /var/www/html
```

---

# Step 10 - Restart Nginx

```bash
sudo systemctl restart nginx
```

---

# Step 11 - Verify Service

```bash
sudo systemctl status nginx
```

Expected

```text
Active: active (running)
```

Exit

```
q
```

---

# Step 12 - Browser Testing

Open Browser

```
http://<VM02-Public-IP>
```

Expected

StreamFlix Homepage दिखाई देगी।

---

# Step 13 - Verify Website

Check

- Images
- CSS
- JavaScript
- Banner
- Navigation
- Movie Cards

यदि सब दिखाई दे रहा है

Deployment सफल है।

---

# Current Directory Structure

```text
/home/azureuser

│

├── Animal-Care-Foundation

│

└── StreamFlix
```

---

# Current Web Root

```text
/var/www/html

│

├── index.html

├── assets

├── favicon.ico

├── manifest.json
```

---

# Why Did We Replace the Website?

अभी हमारा उद्देश्य केवल यह Verify करना है कि

- Git Clone
- File Copy
- Nginx Deployment

सही तरीके से काम कर रहे हैं।

अगले Chapter में हम दोनों Websites को एक साथ Host करेंगे।

---

# Architecture

```text
GitHub

    │

    ▼

StreamFlix Repository

    │

git clone

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

# Verification Commands

Current Directory

```bash
pwd
```

List Files

```bash
ls -la
```

Web Root

```bash
ls -la /var/www/html
```

Nginx Status

```bash
sudo systemctl status nginx
```

Listening Port

```bash
sudo ss -tulnp | grep 80
```

---

# Common Errors

## Permission Denied

```text
Permission denied
```

Solution

```bash
sudo cp -r * /var/www/html/
```

---

## Git Clone Failed

```text
fatal: could not create work tree
```

Reason

Repository `/var/www/html` में Clone करने की कोशिश की।

Correct

```bash
cd ~

git clone https://github.com/devopsinsiders/StreamFlix.git
```

---

## Welcome to nginx Page

Reason

Files Replace नहीं हुईं।

Solution

```bash
sudo rm -rf /var/www/html/*
```

फिर

```bash
sudo cp -r * /var/www/html/
```

---

## CSS Not Loading

Reason

assets Folder Copy नहीं हुआ।

Verify

```bash
ls /var/www/html/assets
```

---

# Final Verification Checklist

| Task | Status |
|------|--------|
| SSH Login | ✅ |
| StreamFlix Clone | ✅ |
| Existing Website Backup | ✅ |
| Files Copied | ✅ |
| Nginx Restarted | ✅ |
| Browser Working | ✅ |

---

# What We Learned

- Git Clone
- Website Backup
- Replace Existing Website
- Deploy Static Website
- Nginx Deployment
- Browser Testing
- Basic Rollback Concept

---

# Next Lab

```
31-Multiple-Websites-on-VM02.md
```

अब हम दोनों Websites (**Animal Care Foundation** और **StreamFlix**) को एक ही Nginx Server पर **Virtual Hosts** की मदद से एक साथ Host करेंगे।

---

# Git Commit

```bash
git add .

git commit -m "Added Lab 28.6 - Deploy StreamFlix Website on VM-02"

git push origin main
```

---

# Congratulations 🎉

अब आपने VM-02 पर दूसरी Website भी सफलतापूर्वक Deploy कर ली है।

अगले Lab में हम Enterprise तरीके से एक ही Server पर Multiple Websites Host करेंगे।

---

# 28.7 - Rollback to Animal Care Foundation Website & Prepare for Multiple Website Hosting

> **Objective**
>
> इस Lab में हम StreamFlix Website का परीक्षण पूरा होने के बाद अपनी पहली Website (Animal Care Foundation) को Restore करेंगे।
>
> साथ ही VM-02 को अगले Chapter (**31 - Multiple Websites on VM-02**) के लिए तैयार करेंगे।

---

# 📚 Learning Objectives

इस Lab के अंत तक आप सीखेंगे:

- Rollback क्या होता है
- Website Backup Restore करना
- Production Rollback Process
- Nginx Restart करना
- Website Verification
- Multiple Website Hosting की तैयारी करना

---

# Why Rollback?

हमने पिछले Lab में

```
Animal Care Foundation
```

को Replace करके

```
StreamFlix
```

Deploy किया था।

अब Production में वापस पहली Website Restore करेंगे।

---

# Current Architecture

```text
Internet
     │
     ▼
VM-02
     │
     ▼
Nginx
     │
     ▼
StreamFlix Website
```

अब इसे Restore करेंगे।

---

# Step 1 - Login to VM-02

```bash
ssh azureuser@<VM02-Public-IP>
```

या

MobaXterm से Login करें।

---

# Step 2 - Verify Current Website

```bash
ls /var/www/html
```

Expected

```text
index.html
assets
favicon.ico
manifest.json
```

यह StreamFlix Website है।

---

# Step 3 - Remove Current Website

```bash
sudo rm -rf /var/www/html/*
```

Verify

```bash
ls /var/www/html
```

Expected

```text
(empty)
```

---

# Step 4 - Restore Animal Website

यदि Backup बनाया था

```bash
sudo cp -r /var/www/html-animal-backup/* /var/www/html/
```

यदि Backup नहीं बनाया था

तो

```bash
cd ~

cd Animal-Care-Foundation

sudo cp -r * /var/www/html/
```

---

# Step 5 - Verify Files

```bash
ls /var/www/html
```

Expected

```text
index.html
assets
css
js
images
```

---

# Step 6 - Restart Nginx

```bash
sudo systemctl restart nginx
```

---

# Step 7 - Verify Service

```bash
sudo systemctl status nginx
```

Expected

```text
Active: active (running)
```

Exit

```
q
```

---

# Step 8 - Browser Testing

Open

```
http://<VM02-Public-IP>
```

अब

Animal Care Foundation Website

दिखनी चाहिए।

---

# Step 9 - Verify Website

Check

- Images
- CSS
- Hero Section
- Donate Button
- Contact Section
- Footer

सब सही होना चाहिए।

---

# Step 10 - Verify Both Projects

```bash
cd ~

ls
```

Expected

```text
Animal-Care-Foundation

StreamFlix
```

दोनों Projects Server पर मौजूद हैं।

---

# Final Directory Structure

```text
/home/azureuser

│

├── Animal-Care-Foundation/

│

└── StreamFlix/
```

---

# Current Web Root

```text
/var/www/html

│

├── index.html

├── assets/

├── css/

├── js/

└── images/
```

---

# Understanding Rollback

Production Environment में यदि

नई Website

Problem करती है

तो

पुरानी Stable Website

Restore कर दी जाती है।

इसे

```
Rollback
```

कहते हैं।

---

# Production Rollback Flow

```text
Deploy New Website

        │

        ▼

Testing

        │

        ▼

Problem Found

        │

        ▼

Rollback

        │

        ▼

Previous Stable Website
```

---

# Verification Commands

Current Directory

```bash
pwd
```

Website Files

```bash
ls -la /var/www/html
```

Check Nginx

```bash
sudo systemctl status nginx
```

Restart

```bash
sudo systemctl restart nginx
```

Listening Port

```bash
sudo ss -tulnp | grep 80
```

---

# Common Errors

## Website Not Loading

Restart

```bash
sudo systemctl restart nginx
```

---

## CSS Missing

Verify

```bash
ls /var/www/html/assets
```

---

## Blank Page

Verify

```bash
ls /var/www/html/index.html
```

---

## Permission Error

```bash
sudo chmod -R 755 /var/www/html
```

---

# Final Verification Checklist

| Task | Status |
|------|--------|
| StreamFlix Removed | ✅ |
| Animal Website Restored | ✅ |
| Nginx Restarted | ✅ |
| Browser Working | ✅ |
| Projects Available | ✅ |

---

# Architecture After Rollback

```text
Internet

      │

      ▼

Public IP

      │

      ▼

Ubuntu VM-02

      │

      ▼

Nginx

      │

      ▼

Animal Care Foundation Website
```

---

# What We Learned

- Rollback
- Backup Restore
- Production Recovery
- Nginx Restart
- Website Verification
- Preparing Server for Multiple Website Hosting

---

# What's Next?

## 🚀 Chapter 31

```
31-Multiple-Websites-on-VM02.md
```

अब तक हमने

- एक Website Deploy की
- दूसरी Website Deploy की
- Rollback किया

अब अगला Step है:

✅ एक ही VM पर दोनों Websites को एक साथ चलाना।

यहीं से हम सीखेंगे:

- Nginx Virtual Hosts
- sites-available
- sites-enabled
- server_name
- Multiple Domains
- Production Web Hosting

---

# Git Commit

```bash
git add .

git commit -m "Added Lab 28.7 - Rollback Website and Prepare for Multiple Website Hosting"

git push origin main
```

---

# 🎉 Congratulations

अब VM-02 Production Ready है।

आपने सफलतापूर्वक:

- Website Deploy की
- Website Replace की
- Rollback किया
- Production Recovery सीखी

अब अगले Chapter में हम **एक ही Nginx Server पर Multiple Websites Host** करेंगे, जो Linux System Administrator और DevOps Engineer दोनों के लिए एक महत्वपूर्ण Skill है।

---

