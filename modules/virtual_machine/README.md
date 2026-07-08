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


# 28.8 - Create Animal Care Foundation GitHub Repository (Part-1)

> **Objective**
>
> इस Lab में हम अपनी पहली Website (**Animal Care Foundation**) को Local System पर Proper Project Structure में बनाएंगे और उसे Git Repository में Convert करेंगे।
>
> अगले Part में हम इसे GitHub पर Push करेंगे और फिर Azure VM-02 पर Clone करेंगे।

---

# 📚 Learning Objectives

इस Lab के अंत तक आप सीखेंगे:

- D Drive में Project Structure बनाना
- VS Code में Project Open करना
- Website Files Create करना
- Git Repository Initialize करना
- Git Status समझना
- First Commit करना

---

# Architecture

```text
Windows Laptop
        │
        ▼
D:\Projects
        │
        ▼
Animal-Care-Foundation
        │
        ▼
Git Repository
        │
        ▼
GitHub Repository (Part-2)
```

---

# Step 1 - Open D Drive

Open **File Explorer**

Go to

```text
D:
```

---

# Step 2 - Create Projects Folder

यदि पहले से मौजूद नहीं है तो Create करें

```text
D:\Projects
```

Expected

```text
D:
│
└── Projects
```

---

# Step 3 - Create Website Project Folder

Inside

```text
D:\Projects
```

Create Folder

```text
Animal-Care-Foundation
```

Expected Structure

```text
D:\Projects

└── Animal-Care-Foundation
```

---

# Step 4 - Open VS Code

Open VS Code

Go to

```text
File

↓

Open Folder
```

Select

```text
D:\Projects\Animal-Care-Foundation
```

---

# Step 5 - Verify Empty Folder

Explorer में Folder खाली होना चाहिए।

```text
Animal-Care-Foundation

(empty)
```

---

# Step 6 - Create Website Files

Create

```text
index.html
```

Create

```text
style.css
```

Create

```text
script.js
```

Create

```text
README.md
```

Create Folder

```text
images
```

---

# Step 7 - Final Project Structure

Expected

```text
Animal-Care-Foundation

│

├── images/

├── index.html

├── style.css

├── script.js

└── README.md
```

---

# Why This Structure?

| File | Purpose |
|------|----------|
| index.html | Main Website |
| style.css | Design |
| script.js | JavaScript |
| images | Images |
| README.md | Documentation |

---

# Step 8 - Open Terminal

VS Code

```
Terminal

↓

New Terminal
```

---

# Step 9 - Verify Current Directory

PowerShell

```powershell
pwd
```

Expected

```text
D:\Projects\Animal-Care-Foundation
```

---

# Step 10 - Verify Files

```powershell
dir
```

Expected

```text
images

index.html

style.css

script.js

README.md
```

---

# Step 11 - Initialize Git Repository

```bash
git init
```

Expected

```text
Initialized empty Git repository
```

अब Project के अंदर Hidden Folder बनेगा

```text
.git
```

---

# What is .git Folder?

```text
Animal-Care-Foundation

│

├── .git

├── images

├── index.html

├── style.css

├── script.js

└── README.md
```

यही Folder पूरे Git Repository को Manage करता है।

इसमें

- Commit History
- Branches
- Tags
- Configuration
- Objects

Store होते हैं।

⚠️ इसे कभी Delete नहीं करना चाहिए।

---

# Step 12 - Check Git Status

```bash
git status
```

Expected

```text
No commits yet

Untracked files:
```

---

# Understanding Git Status

अभी Git बोल रहा है

> "मैंने Project देख लिया है लेकिन अभी किसी File को Track नहीं कर रहा।"

यानी

```text
Files Exist

✔

Git Tracking

✘
```

---

# Step 13 - Stage All Files

```bash
git add .
```

`.` का मतलब

```text
Current Folder की सभी Files
```

---

# Step 14 - Verify Again

```bash
git status
```

Expected

```text
Changes to be committed
```

अब Git बोल रहा है

> "मैं Commit करने के लिए तैयार हूँ।"

---

# Git Workflow

```text
Working Directory

        │

git add .

        │

        ▼

Staging Area

        │

git commit

        │

        ▼

Local Repository
```

---

# Step 15 - Create First Commit

```bash
git commit -m "Initial commit - Animal Care Foundation website"
```

Expected

```text
1 file changed...

create mode...
```

---

# Step 16 - Verify Commit

```bash
git log --oneline
```

Expected

```text
a1b2c3 Initial commit - Animal Care Foundation website
```

---

# Current Architecture

```text
Windows Laptop

      │

      ▼

Animal-Care-Foundation

      │

Git Repository

      │

Local Commit Completed
```

---

# Verification Commands

Current Folder

```bash
pwd
```

List Files

```bash
dir
```

Git Status

```bash
git status
```

Git Log

```bash
git log --oneline
```

---

# Common Errors

## Git Not Installed

```text
git is not recognized
```

Solution

Install Git

---

## Wrong Folder

```text
fatal: not a git repository
```

Solution

```bash
cd D:\Projects\Animal-Care-Foundation
```

---

## Nothing to Commit

```text
nothing to commit
```

Reason

पहले से Commit हो चुका है।

---

# Final Checklist

| Task | Status |
|------|--------|
| D Drive Ready | ✅ |
| Project Folder Created | ✅ |
| Website Files Created | ✅ |
| Git Initialized | ✅ |
| Files Staged | ✅ |
| First Commit Completed | ✅ |

---

# Next Lab

```
28.8-Part-2
```

हम सीखेंगे

- GitHub Repository Create करना
- Remote Add करना
- Push करना
- README Update
- GitHub Verification
- Common Push Errors
- Troubleshooting
- Enterprise Best Practices

---

# Documentation Commit

```bash
git add .

git commit -m "Added Lab 28.8 Part-1 - Create Animal Care Foundation local Git repository"

git push origin main
```

---


# 28.8 - Create Animal Care Foundation GitHub Repository (Part-2)

> **Objective**
>
> इस Lab में हम Local Git Repository को GitHub Repository से Connect करेंगे, पहली बार Code Push करेंगे और Repository को Production Ready बनाएंगे।

---

# 📚 Learning Objectives

इस Lab के अंत तक आप सीखेंगे:

- GitHub Repository Create करना
- Local Repository को Remote से Connect करना
- First Push करना
- GitHub Repository Verify करना
- Common Git Errors Fix करना
- Production Git Workflow

---

# Architecture

```text
Windows Laptop

        │

        ▼

Animal-Care-Foundation

        │

Git Repository

        │

git push

        │

        ▼

GitHub Repository

        │

        ▼

Ready for Azure VM Deployment
```

---

# Step 1 - Open GitHub

Browser में जाएँ

```
https://github.com
```

Login करें।

---

# Step 2 - Create New Repository

Click

```
New Repository
```

---

# Step 3 - Repository Name

Repository Name

```
Animal-Care-Foundation
```

Visibility

```
Public
```

---

# Step 4 - Important

इन Options को **Select नहीं करना है**

❌ Add README

❌ Add .gitignore

❌ Add License

क्यों?

क्योंकि Local Repository पहले से बनी हुई है।

यदि GitHub पर README बना दिया तो बाद में Push करते समय Conflict आ सकता है।

---

# Step 5 - Create Repository

Click

```
Create Repository
```

अब GitHub Repository बन जाएगी।

---

# Step 6 - Copy Repository URL

GitHub आपको ऐसा URL देगा

```text
https://github.com/<GitHub-Username>/Animal-Care-Foundation.git
```

इसे Copy करें।

---

# Step 7 - Verify Local Repository

VS Code Terminal

```bash
git status
```

Expected

```text
nothing to commit, working tree clean
```

---

# Step 8 - Add Remote Repository

```bash
git remote add origin https://github.com/<GitHub-Username>/Animal-Care-Foundation.git
```

---

# What is Remote?

Remote मतलब

```
Local Project

↓

GitHub Repository
```

अब Git को पता चल गया कि Code कहाँ भेजना है।

---

# Step 9 - Verify Remote

```bash
git remote -v
```

Expected

```text
origin  https://github.com/<GitHub-Username>/Animal-Care-Foundation.git (fetch)

origin  https://github.com/<GitHub-Username>/Animal-Care-Foundation.git (push)
```

---

# Step 10 - Rename Branch

```bash
git branch -M main
```

---

# Why?

आज लगभग सभी GitHub Repositories

```
main
```

Branch Use करती हैं।

---

# Step 11 - Push Code

```bash
git push -u origin main
```

Expected

```text
Enumerating objects...

Writing objects...

To https://github.com/...

Branch 'main' set up to track 'origin/main'
```

---

# Step 12 - Verify GitHub

GitHub Repository Refresh करें।

अब दिखाई देगा

```text
README.md

index.html

style.css

script.js

images/
```

अब Code Cloud में Store हो चुका है।

---

# Step 13 - Verify Tracking

```bash
git branch
```

Expected

```text
* main
```

---

# Step 14 - Verify Remote Branch

```bash
git branch -vv
```

Expected

```text
* main xxxx [origin/main]
```

इसका मतलब

Local Branch और GitHub Branch Sync हैं।

---

# Git Workflow

```text
Create File

      │

git add

      │

      ▼

Staging Area

      │

git commit

      │

      ▼

Local Repository

      │

git push

      │

      ▼

GitHub Repository
```

---

# Daily Workflow

Website Update

↓

```bash
git add .
```

↓

```bash
git commit -m "Updated homepage"
```

↓

```bash
git push
```

बस।

---

# Common Errors

## Error 1

```text
remote origin already exists
```

Solution

```bash
git remote remove origin
```

फिर

```bash
git remote add origin https://github.com/<GitHub-Username>/Animal-Care-Foundation.git
```

---

## Error 2

```text
Permission denied (publickey)
```

Reason

SSH Key Configure नहीं है।

HTTPS Remote Use करें

या

SSH Key Configure करें।

---

## Error 3

```text
failed to push some refs
```

Reason

GitHub Repository में पहले से Files हैं।

Solution

```bash
git pull origin main --rebase
```

फिर

```bash
git push
```

---

## Error 4

```text
Repository not found
```

Check

- Repository Name
- GitHub Username
- Repository Visibility

---

## Error 5

```text
fatal: not a git repository
```

Wrong Folder

Solution

```bash
cd D:\Projects\Animal-Care-Foundation
```

---

# Final Verification

```bash
git status
```

Expected

```text
Your branch is up to date with 'origin/main'

nothing to commit
```

---

# Enterprise Best Practice

Project Structure

```text
D:\Projects

│

├── Animal-Care-Foundation

├── Save-Trees-Foundation

└── Anmol-Jivan-Foundation
```

हर Website

- अपना Git Repository
- अपना README
- अपना Deployment
- अपना Domain

रखेगी।

---

# Final Architecture

```text
Developer

     │

     ▼

VS Code

     │

     ▼

Git

     │

     ▼

GitHub

     │

     ▼

Azure VM

     │

     ▼

Nginx

     │

     ▼

Browser
```

---

# Final Checklist

| Task | Status |
|------|--------|
| GitHub Repository Created | ✅ |
| Remote Added | ✅ |
| Branch Renamed | ✅ |
| First Push Completed | ✅ |
| Repository Verified | ✅ |
| Ready for Azure VM | ✅ |

---

# Next Lab

```
28.9 - Build Save Trees Foundation Website
```

इस Lab में हम अपनी दूसरी Social Impact Website बनाएँगे और फिर उसे भी GitHub पर Push करेंगे।

---

# Documentation Commit

```bash
git add .

git commit -m "Added Lab 28.8 Part-2 - Connect local repository to GitHub and push source code"

git push origin main
```

---

# 🎉 Congratulations

अब आपकी **Animal Care Foundation Website** केवल Local Project नहीं रही।

अब यह:

- ✅ Git Version Controlled है
- ✅ GitHub पर सुरक्षित है
- ✅ Team Collaboration के लिए Ready है
- ✅ Azure VM पर `git clone` करने के लिए Ready है
- ✅ CI/CD Pipeline और Future Deployments के लिए तैयार है


---



# 28.9 - Build Save Trees Foundation Website (Part-1)

> **Objective**
>
> इस Lab में हम अपनी दूसरी Website **Save Trees Foundation** को Zero से बनाएंगे।
>
> यह Website Environment Awareness के लिए होगी।
>
> आगे चलकर यही Website Azure VM-02 पर Deploy होगी और Nginx Virtual Host से अलग Domain पर चलेगी।

---

# 📚 Learning Objectives

इस Lab के अंत तक आप सीखेंगे:

- नया Website Project Create करना
- Project Folder Structure बनाना
- HTML, CSS, JavaScript Files बनाना
- Git Repository Initialize करना
- First Commit करना
- Azure Deployment के लिए Project तैयार करना

---

# Final Architecture

```text
D:\Projects

│

├── Animal-Care-Foundation

│

└── Save-Trees-Foundation
```

---

# Website Theme

Website Name

```text
Save Trees Foundation
```

Mission

```text
Plant Trees

Protect Nature

Save Earth
```

---

# Step 1 - Open D Drive

Go to

```text
D:\Projects
```

---

# Step 2 - Create Project Folder

Create Folder

```text
Save-Trees-Foundation
```

Expected

```text
Projects

│

├── Animal-Care-Foundation

└── Save-Trees-Foundation
```

---

# Step 3 - Open VS Code

Open Folder

```text
Save-Trees-Foundation
```

---

# Step 4 - Create Files

Create

```text
index.html
```

Create

```text
style.css
```

Create

```text
script.js
```

Create

```text
README.md
```

Create Folder

```text
images
```

---

# Final Folder Structure

```text
Save-Trees-Foundation

│

├── images

├── index.html

├── style.css

├── script.js

└── README.md
```

---

# Step 5 - Create Home Page

Open

```text
index.html
```

Add Basic HTML Structure

```html
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<title>Save Trees Foundation</title>

<link rel="stylesheet" href="style.css">

</head>

<body>

<h1>Save Trees Foundation</h1>

<p>Plant Trees • Save Earth • Protect Nature</p>

<script src="script.js"></script>

</body>

</html>
```

Save

---

# Step 6 - Add CSS

Open

```text
style.css
```

Example

```css
body{

font-family:Arial;

text-align:center;

background:#eef8ee;

}

h1{

color:green;

}
```

---

# Step 7 - Add JavaScript

Open

```text
script.js
```

Example

```javascript
console.log("Save Trees Foundation Loaded");
```

---

# Step 8 - Create README

Open

```text
README.md
```

Example

```text
# Save Trees Foundation

Environment Awareness Website

Built using

HTML

CSS

JavaScript
```

---

# Step 9 - Verify Files

Terminal

```powershell
dir
```

Expected

```text
images

index.html

style.css

script.js

README.md
```

---

# Step 10 - Initialize Git

```bash
git init
```

---

# Step 11 - Verify Status

```bash
git status
```

Expected

```text
Untracked files
```

---

# Step 12 - Stage Files

```bash
git add .
```

---

# Step 13 - Commit

```bash
git commit -m "Initial commit - Save Trees Foundation website"
```

---

# Git Workflow

```text
Create Files

↓

git add .

↓

git commit

↓

Local Repository
```

---

# Verify Commit

```bash
git log --oneline
```

Expected

```text
Initial commit
```

---

# Common Errors

## Git Not Installed

```text
git is not recognized
```

Install Git

---

## Wrong Folder

```text
fatal: not a git repository
```

Go to

```text
D:\Projects\Save-Trees-Foundation
```

---

## Nothing To Commit

```text
nothing to commit
```

Files पहले ही Commit हो चुकी हैं।

---

# Final Checklist

| Task | Status |
|------|--------|
| Project Folder Created | ✅ |
| HTML Created | ✅ |
| CSS Created | ✅ |
| JS Created | ✅ |
| README Created | ✅ |
| Git Initialized | ✅ |
| First Commit Completed | ✅ |

---

# Next Lab

```text
29 - Create GitHub Repository for Save Trees Foundation
```

इस Lab में

- GitHub Repository बनाएंगे
- Remote Add करेंगे
- First Push करेंगे
- फिर Azure VM-02 पर Clone करेंगे।

---

# Documentation Commit

```bash
git add .

git commit -m "Added Lab 28.9 - Build Save Trees Foundation website"

git push origin main
```

---


# 28.1.1 - Create GitHub Repository for Save Trees Foundation

> **Objective**
>
> इस Lab में हम अपनी **Save Trees Foundation** Website को GitHub पर Upload करेंगे ताकि आगे Azure VM-02 पर आसानी से Deploy कर सकें।

---

# 📚 Learning Objectives

इस Lab के अंत तक आप सीखेंगे:

- GitHub Repository Create करना
- Local Repository को GitHub से Connect करना
- Remote Add करना
- First Push करना
- GitHub Repository Verify करना
- Azure Deployment के लिए Repository तैयार करना

---

# Architecture

```text
Windows Laptop

        │

        ▼

Save-Trees-Foundation

        │

Git Repository

        │

git push

        │

        ▼

GitHub Repository

        │

git clone

        │

        ▼

Azure VM-02

        │

Nginx

        │

        ▼

Website Live
```

---

# Step 1 - Open GitHub

Open Browser

```
https://github.com
```

Login करें।

---

# Step 2 - Create Repository

Click

```
New Repository
```

---

# Step 3 - Repository Details

Repository Name

```
Save-Trees-Foundation
```

Visibility

```
Public
```

---

# Step 4 - Do NOT Select

इन Options को Tick मत करें

```
❌ Add README

❌ Add .gitignore

❌ Add License
```

क्योंकि Local Repository पहले से बनी हुई है।

---

# Step 5 - Create Repository

Click

```
Create Repository
```

---

# Step 6 - Copy HTTPS URL

Example

```text
https://github.com/<GitHub-Username>/Save-Trees-Foundation.git
```

Copy करें।

---

# Step 7 - Open VS Code

Open Folder

```
D:\Projects\Save-Trees-Foundation
```

Open Terminal।

---

# Step 8 - Verify Git Repository

```bash
git status
```

Expected

```text
On branch main

nothing to commit
```

---

# Step 9 - Add Remote Repository

```bash
git remote add origin https://github.com/<GitHub-Username>/Save-Trees-Foundation.git
```

---

# Step 10 - Verify Remote

```bash
git remote -v
```

Expected

```text
origin

(fetch)

origin

(push)
```

---

# Step 11 - Rename Branch

```bash
git branch -M main
```

---

# Step 12 - Push Code

```bash
git push -u origin main
```

Expected

```text
Enumerating objects...

Writing objects...

Done

Branch 'main' set up to track origin/main
```

---

# Step 13 - Verify GitHub

Refresh Repository

Expected Files

```text
README.md

index.html

style.css

script.js

images/
```

---

# Step 14 - Verify Tracking

```bash
git branch -vv
```

Expected

```text
* main

[origin/main]
```

---

# Step 15 - Clone Repository on Azure VM-02

Login to VM-02

```bash
cd ~

git clone https://github.com/<GitHub-Username>/Save-Trees-Foundation.git
```

---

# Step 16 - Verify Clone

```bash
ls
```

Expected

```text
Save-Trees-Foundation
```

---

# Step 17 - Verify Files

```bash
cd Save-Trees-Foundation

ls
```

Expected

```text
README.md

index.html

style.css

script.js

images
```

---

# Git Workflow

```text
VS Code

      │

git add .

      │

git commit

      │

git push

      │

GitHub

      │

git clone

      │

Azure VM

      │

Nginx

      │

Website Live
```

---

# Common Errors

## Remote Already Exists

```text
remote origin already exists
```

Solution

```bash
git remote remove origin

git remote add origin https://github.com/<GitHub-Username>/Save-Trees-Foundation.git
```

---

## Permission Denied

```text
Permission denied (publickey)
```

Solution

Use HTTPS Repository

या

SSH Key Configure करें।

---

## Repository Not Found

```text
Repository not found
```

Check

- GitHub Username
- Repository Name
- Repository Visibility

---

## Push Rejected

```text
failed to push some refs
```

Solution

```bash
git pull origin main --rebase

git push
```

---

## Clone Failed

```text
fatal: destination path already exists
```

Solution

```bash
rm -rf Save-Trees-Foundation

git clone https://github.com/<GitHub-Username>/Save-Trees-Foundation.git
```

---

# Final Verification

Local

```bash
git status
```

Expected

```text
nothing to commit

working tree clean
```

GitHub

```
Repository Visible
```

Azure VM

```
Repository Successfully Cloned
```

---

# Final Checklist

| Task | Status |
|------|--------|
| GitHub Repository Created | ✅ |
| Remote Added | ✅ |
| First Push Completed | ✅ |
| GitHub Verified | ✅ |
| VM-02 Clone Successful | ✅ |
| Ready for Nginx Deployment | ✅ |

---

# Next Lab

```text
29 - Deploy Save Trees Foundation Website on Azure VM-02
```

इस Lab में हम:

- Website Files को `/var/www/html` में Copy करेंगे
- Nginx Restart करेंगे
- Browser से Website Verify करेंगे
- फिर Multiple Website Hosting की तैयारी शुरू करेंगे।

---

# Documentation Commit

```bash
git add .

git commit -m "Added Lab 28.1.1 - Create GitHub repository and clone Save Trees Foundation on Azure VM-02"

git push origin main
```

---

# 28.1.2 - Deploy Save Trees Foundation Website on Azure VM-02

> **Objective**
>
> इस Lab में हम GitHub Repository से **Save Trees Foundation** Website को Azure VM-02 पर Deploy करेंगे और Nginx के माध्यम से Live करेंगे।

---

# 📚 Learning Objectives

इस Lab के अंत तक आप सीखेंगे:

- VM-02 में Login करना
- GitHub Repository Clone करना
- Website Files Verify करना
- Nginx Default Website Remove करना
- Website Files Deploy करना
- Nginx Restart करना
- Browser से Website Verify करना

---

# Deployment Architecture

```text
GitHub Repository

        │

git clone

        │

        ▼

Azure VM-02

        │

Save-Trees-Foundation

        │

Copy Files

        │

        ▼

/var/www/html

        │

Nginx

        │

        ▼

Browser
```

---

# Step 1 - Login to VM-02

SSH Login

```bash
ssh azureuser@<VM02-Public-IP>
```

या

Azure Bastion से Login करें।

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

# Step 3 - Clone GitHub Repository

```bash
git clone https://github.com/<GitHub-Username>/Save-Trees-Foundation.git
```

Expected

```text
Cloning into 'Save-Trees-Foundation'...
Receiving objects...
Resolving deltas...
```

---

# Step 4 - Verify Repository

```bash
ls
```

Expected

```text
Save-Trees-Foundation
```

---

# Step 5 - Verify Website Files

```bash
cd Save-Trees-Foundation

ls
```

Expected

```text
README.md

index.html

style.css

script.js

images
```

---

# Step 6 - Go Back

```bash
cd ~
```

---

# Step 7 - Verify Existing Website

```bash
ls /var/www/html
```

यदि Default Nginx Website मौजूद है तो Remove करेंगे।

---

# Step 8 - Remove Existing Website

```bash
sudo rm -rf /var/www/html/*
```

---

# Step 9 - Verify Folder

```bash
ls /var/www/html
```

Expected

```text
(No Output)
```

---

# Step 10 - Copy Website Files

```bash
sudo cp -r ~/Save-Trees-Foundation/* /var/www/html/
```

---

# Step 11 - Verify Deployment

```bash
ls /var/www/html
```

Expected

```text
README.md

index.html

style.css

script.js

images
```

---

# Step 12 - Check File Permissions

```bash
ls -la /var/www/html
```

Expected

```text
index.html

style.css

script.js
```

---

# Step 13 - Restart Nginx

```bash
sudo systemctl restart nginx
```

---

# Step 14 - Verify Nginx Status

```bash
sudo systemctl status nginx
```

Expected

```text
Active: active (running)
```

Exit Status Screen

```text
Press q
```

---

# Step 15 - Verify Browser

Open

```text
http://<VM02-Public-IP>
```

Expected

```text
Save Trees Foundation Website
```

Website Successfully Loaded.

---

# Step 16 - Verify Using Curl

```bash
curl localhost
```

Expected

```html
<!DOCTYPE html>
<html>
...
Save Trees Foundation
...
```

---

# Deployment Flow

```text
GitHub

      │

git clone

      │

VM-02

      │

Copy Files

      │

/var/www/html

      │

Restart Nginx

      │

Browser
```

---

# Common Errors

## Permission Denied

```text
Permission denied
```

Solution

```bash
sudo cp -r ~/Save-Trees-Foundation/* /var/www/html/
```

---

## Repository Already Exists

```text
destination path already exists
```

Solution

```bash
rm -rf ~/Save-Trees-Foundation

git clone https://github.com/<GitHub-Username>/Save-Trees-Foundation.git
```

---

## Repository Not Found

```text
Repository not found
```

Check:

- GitHub Username
- Repository Name
- Repository Visibility (Public)

---

## Nginx Not Running

```text
Failed to connect
```

Check

```bash
sudo systemctl status nginx
```

Start

```bash
sudo systemctl start nginx
```

Enable

```bash
sudo systemctl enable nginx
```

---

## Website Not Updating

Force Refresh Browser

```
Ctrl + F5
```

---

## Default Nginx Page Still Showing

Check Files

```bash
ls /var/www/html
```

Old Files Remove करें

```bash
sudo rm -rf /var/www/html/*
```

Copy Again

```bash
sudo cp -r ~/Save-Trees-Foundation/* /var/www/html/
```

Restart

```bash
sudo systemctl restart nginx
```

---

# Final Checklist

| Task | Status |
|------|--------|
| SSH/Bastion Login | ✅ |
| Repository Cloned | ✅ |
| Website Verified | ✅ |
| Old Files Removed | ✅ |
| New Files Copied | ✅ |
| Nginx Restarted | ✅ |
| Website Live | ✅ |

---

# Next Lab

```text
32 - Configure Nginx Virtual Hosts
```

अगले Lab में हम एक ही VM-02 पर तीन अलग-अलग Websites Host करेंगे:

- 🐾 Animal Care Foundation
- 🌳 Save Trees Foundation
- ❤️ Anmol Jivan Foundation

प्रत्येक Website अपने अलग Domain और अलग Nginx Virtual Host के साथ चलेगी।

---

# Documentation Commit

```bash
git add .

git commit -m "Added Lab 28.1.2 - Deploy Save Trees Foundation website on Azure VM-02"

git push origin main
```

----


# 28.1.3 - Create Animal Care Foundation Website

> **Objective**
>
> इस Lab में हम एक Professional NGO Website तैयार करेंगे जिसका नाम **Animal Care Foundation** होगा।
>
> इस Website को बाद में GitHub पर Push करेंगे और फिर Azure VM-02 पर Nginx Virtual Host के माध्यम से Host करेंगे।

---

# Architecture

```text
Windows Laptop

        │

        ▼

VS Code

        │

        ▼

Animal-Care-Foundation

        │

        ▼

GitHub Repository

        │

        ▼

Azure VM-02

        │

        ▼

Nginx Virtual Host

        │

        ▼

animal.local
```

---

# Step 1 - Go to Projects Folder

```powershell
cd D:\
mkdir Projects -Force
cd Projects
```

Verify

```powershell
pwd
```

Expected

```text
D:\Projects
```

---

# Step 2 - Create Project Folder

```powershell
mkdir Animal-Care-Foundation

cd Animal-Care-Foundation
```

Verify

```powershell
pwd
```

Expected

```text
D:\Projects\Animal-Care-Foundation
```

---

# Step 3 - Create Complete Folder Structure

PowerShell

```powershell
mkdir css,js,images,assets
ni index.html,style.css,script.js,README.md -ItemType File
```

---

# Step 4 - Verify Folder Structure

```powershell
tree /f
```

Expected

```text
Animal-Care-Foundation
│
├── index.html
├── style.css
├── script.js
├── README.md
│
├── assets
├── css
├── images
└── js
```

---

# Step 5 - Open VS Code

```powershell
code .
```

---

# Step 6 - Update index.html

Replace everything with

```html
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Animal Care Foundation</title>

<link rel="stylesheet" href="style.css">

</head>

<body>

<header>

<h1>🐾 Animal Care Foundation</h1>

<p>Every Life Matters</p>

</header>

<nav>

<a href="#">Home</a>

<a href="#">About</a>

<a href="#">Adoption</a>

<a href="#">Volunteer</a>

<a href="#">Donate</a>

<a href="#">Contact</a>

</nav>

<section class="hero">

<h2>Protect Every Animal</h2>

<p>

We rescue abandoned animals, provide medical care,

food, shelter and help them find loving homes.

</p>

<button>Become a Volunteer</button>

</section>

<section class="cards">

<div class="card">

<h3>🐶 Rescue</h3>

<p>Saving injured and abandoned animals.</p>

</div>

<div class="card">

<h3>🏥 Medical Care</h3>

<p>Vaccination, treatment and rehabilitation.</p>

</div>

<div class="card">

<h3>❤️ Adoption</h3>

<p>Connecting rescued animals with caring families.</p>

</div>

</section>

<footer>

<p>

© 2026 Animal Care Foundation

</p>

</footer>

<script src="script.js"></script>

</body>

</html>
```

---

# Step 7 - Update style.css

Replace everything

```css
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,Helvetica,sans-serif;
}

body{
background:#f5fff6;
}

header{
background:#1b5e20;
color:white;
padding:30px;
text-align:center;
}

nav{
background:#2e7d32;
padding:15px;
text-align:center;
}

nav a{
color:white;
text-decoration:none;
margin:15px;
font-weight:bold;
}

.hero{
padding:70px;
text-align:center;
}

.hero h2{
font-size:42px;
color:#1b5e20;
margin-bottom:20px;
}

.hero p{
width:70%;
margin:auto;
line-height:1.8;
}

button{
margin-top:25px;
padding:15px 35px;
background:#1b5e20;
color:white;
border:none;
cursor:pointer;
border-radius:6px;
font-size:16px;
}

.cards{
display:flex;
justify-content:center;
gap:25px;
margin:60px;
flex-wrap:wrap;
}

.card{
width:300px;
background:white;
padding:25px;
border-radius:10px;
box-shadow:0 0 10px rgba(0,0,0,.15);
text-align:center;
}

.card h3{
margin-bottom:15px;
color:#2e7d32;
}

footer{
margin-top:50px;
background:#1b5e20;
color:white;
padding:25px;
text-align:center;
}
```---

# Step 8 - Update script.js

```javascript
console.log("Animal Care Foundation Loaded Successfully");

alert("Welcome to Animal Care Foundation");
```---

# Step 9 - Update README.md

```md
# Animal Care Foundation

## Project

Professional NGO Website

## Technologies

- HTML5
- CSS3
- JavaScript
- Git
- GitHub
- Azure VM
- Ubuntu Linux
- Nginx

## Developed By

Shrikant Nadgauda

GitHub

https://github.com/Shrikant-Nadgauda
```

---

# Step 10 - Test Website

Double Click

```
index.html
```

Expected

```text
Animal Care Foundation Homepage Opens Successfully
```

---

# Step 11 - Verify Files

```powershell
tree /f
```

Expected

```text
Animal-Care-Foundation
│
├── index.html
├── style.css
├── script.js
├── README.md
│
├── assets
├── css
├── images
└── js
```

---

# Lab Summary

इस Lab में हमने

✅ Project Folder बनाया

✅ Folder Structure तैयार किया

✅ Professional NGO Homepage बनाई

✅ CSS जोड़ी

✅ JavaScript जोड़ी

✅ README बनाया

✅ Website Local Machine पर Run की

---

# Next Lab

```text
28.1.4 - Create Anmol Jivan Foundation Website
```

---

# Documentation Commit

```bash
git add .

git commit -m "Added Lab 28.1.3 - Create Animal Care Foundation website"

git push origin main
```

---


# 28.1.4 - Create Anmol Jivan Foundation Website

> **Objective**
>
> इस Lab में हम **Anmol Jivan Foundation** की Professional NGO Website बनाएंगे।
>
> यह Website गरीब बच्चों, अनाथ बच्चों, शिक्षा, भोजन, स्वास्थ्य और समाज सेवा पर आधारित होगी।
>
> आगे यही Website Azure VM-02 पर Host होगी।

---

# Architecture

```text
Windows Laptop

        │

        ▼

VS Code

        │

        ▼

Anmol-Jivan-Foundation

        │

        ▼

GitHub Repository

        │

        ▼

Azure VM-02

        │

        ▼

Nginx

        │

        ▼

anmol.local
```

---

# Step 1 - Go to Projects Folder

```powershell
cd D:\Projects
```

Verify

```powershell
pwd
```

Expected

```text
D:\Projects
```

---

# Step 2 - Create Project Folder

```powershell
mkdir Anmol-Jivan-Foundation

cd Anmol-Jivan-Foundation
```

---

# Step 3 - Create Folder Structure

```powershell
mkdir css,js,images,assets
ni index.html,style.css,script.js,README.md -ItemType File
```

---

# Step 4 - Verify Structure

```powershell
tree /f
```

Expected

```text
Anmol-Jivan-Foundation
│
├── index.html
├── style.css
├── script.js
├── README.md
│
├── assets
├── css
├── images
└── js
```

---

# Step 5 - Open VS Code

```powershell
code .
```

---

# Step 6 - Update index.html

Replace everything

```html

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Anmol Jivan Foundation</title>

<link rel="stylesheet" href="style.css">

</head>

<body>

<header>

<h1>❤️ Anmol Jivan Foundation</h1>

<p>Together We Can Change Lives</p>

</header>

<nav>

<a href="#">Home</a>

<a href="#">About</a>

<a href="#">Education</a>

<a href="#">Volunteer</a>

<a href="#">Donate</a>

<a href="#">Contact</a>

</nav>

<section class="hero">

<h2>Give Hope, Build Future</h2>

<p>

We support orphan children, provide education,
food, healthcare and create opportunities for
a better tomorrow.

</p>

<button>Support Our Mission</button>

</section>

<section class="cards">

<div class="card">

<h3>🎓 Education</h3>

<p>Helping children continue their education.</p>

</div>

<div class="card">

<h3>🍛 Food Program</h3>

<p>Providing healthy meals to needy families.</p>

</div>

<div class="card">

<h3>🏥 Healthcare</h3>

<p>Medical support for poor children and families.</p>

</div>

<div class="card">

<h3>🤝 Volunteer</h3>

<p>Join our mission and become a volunteer.</p>

</div>

</section>

<footer>

<p>

© 2026 Anmol Jivan Foundation

</p>

</footer>

<script src="script.js"></script>

</body>

</html>
```

---

# Step 7 - Update style.css

Replace everything

```css
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,Helvetica,sans-serif;
}

body{
background:#fffdf8;
}

header{
background:#d32f2f;
color:white;
padding:30px;
text-align:center;
}

nav{
background:#f57c00;
padding:15px;
text-align:center;
}

nav a{
color:white;
text-decoration:none;
margin:15px;
font-weight:bold;
}

.hero{
padding:70px;
text-align:center;
}

.hero h2{
font-size:42px;
color:#d32f2f;
margin-bottom:20px;
}

.hero p{
width:70%;
margin:auto;
line-height:1.8;
}

button{
margin-top:25px;
padding:15px 35px;
background:#d32f2f;
color:white;
border:none;
cursor:pointer;
border-radius:6px;
font-size:16px;
}

.cards{
display:flex;
justify-content:center;
flex-wrap:wrap;
gap:25px;
margin:60px;
}

.card{
width:280px;
padding:25px;
background:white;
border-radius:10px;
box-shadow:0 0 12px rgba(0,0,0,.15);
text-align:center;
}

.card h3{
margin-bottom:15px;
color:#d32f2f;
}

footer{
margin-top:50px;
background:#d32f2f;
color:white;
padding:25px;
text-align:center;
}

```

---

# Step 8 - Update script.js

```javascript
console.log("Anmol Jivan Foundation Loaded Successfully");

alert("Welcome to Anmol Jivan Foundation");
```

---

# Step 9 - Update README.md

````md
# ❤️ Anmol Jivan Foundation

## Mission

Helping Poor Children, Orphans and Needy Families.

## Technologies

- HTML5
- CSS3
- JavaScript
- Git
- GitHub
- Ubuntu Linux
- Azure Virtual Machine
- Nginx

## Developed By

Shrikant Nadgauda

GitHub

https://github.com/Shrikant-Nadgauda


-----


# 28.1.5 - Create GitHub Repositories and Push All Three Websites

> **Objective**
>
> इस Lab में हम अपनी तीनों NGO Websites को GitHub पर Upload करेंगे।
>
> इसके बाद यही Repositories Azure VM-02 पर Clone की जाएँगी और Nginx द्वारा Host की जाएँगी।

---

# Websites

```text
✔ Animal Care Foundation

✔ Save Trees Foundation

✔ Anmol Jivan Foundation
```

GitHub Profile

```text
https://github.com/Shrikant-Nadgauda
```

---

# Architecture

```text
Windows Laptop

        │

        ▼

VS Code Projects

        │

        ▼

Git

        │

        ▼

GitHub

        │

        ▼

Azure VM-02

        │

        ▼

Git Clone

        │

        ▼

Nginx
```

---

# Step 1 - Open GitHub

```
https://github.com/Shrikant-Nadgauda
```

Login

---

# Step 2 - Create Repository

Click

```
New Repository
```

---

Repository Name

```
Animal-Care-Foundation
```

Visibility

```
Public
```

Do NOT Select

```
README

.gitignore

License
```

Click

```
Create Repository
```

---

Repeat

Repository Name

```
Save-Trees-Foundation
```

Create

---

Again

Repository Name

```
Anmol-Jivan-Foundation
```

Create

---

Expected

```text
Animal-Care-Foundation

Save-Trees-Foundation

Anmol-Jivan-Foundation
```

---

# Step 3 - Open Animal Care Project

PowerShell

```powershell
cd D:\Projects\Animal-Care-Foundation
```

---

# Step 4 - Initialize Git

```bash
git init

git add .

git commit -m "Initial commit - Animal Care Foundation"
```

---

# Step 5 - Rename Branch

```bash
git branch -M main
```

---

# Step 6 - Add Remote

```bash
git remote add origin https://github.com/Shrikant-Nadgauda/Animal-Care-Foundation.git
```

Verify

```bash
git remote -v
```

Expected

```text
origin

https://github.com/Shrikant-Nadgauda/Animal-Care-Foundation.git
```

---

# Step 7 - Push

```bash
git push -u origin main
```

Expected

```text
Branch 'main' set up to track 'origin/main'
```

---

# Step 8 - Save Trees Foundation

```powershell
cd D:\Projects\Save-Trees-Foundation
```

---

```bash
git init

git add .

git commit -m "Initial commit - Save Trees Foundation"

git branch -M main

git remote add origin https://github.com/Shrikant-Nadgauda/Save-Trees-Foundation.git

git push -u origin main
```

---

# Step 9 - Anmol Jivan Foundation

```powershell
cd D:\Projects\Anmol-Jivan-Foundation
```

---

```bash
git init

git add .

git commit -m "Initial commit - Anmol Jivan Foundation"

git branch -M main

git remote add origin https://github.com/Shrikant-Nadgauda/Anmol-Jivan-Foundation.git

git push -u origin main
```

---

# Step 10 - Verify GitHub

Open

```
https://github.com/Shrikant-Nadgauda
```

Expected

```text
Animal-Care-Foundation

Save-Trees-Foundation

Anmol-Jivan-Foundation
```

All Repositories should contain

```text
index.html

style.css

script.js

README.md
```

---

# Step 11 - Verify Git Status

Run inside each project

```bash
git status
```

Expected

```text
On branch main

Your branch is up to date.

nothing to commit, working tree clean
```

---

# Common Errors

## Repository Already Exists

```text
remote origin already exists
```

Fix

```bash
git remote remove origin

git remote add origin https://github.com/Shrikant-Nadgauda/<repository-name>.git
```

---

## Branch Error

```text
src refspec main does not match any
```

Fix

```bash
git add .

git commit -m "Initial commit"

git branch -M main
```

---

## Authentication Failed

GitHub Password नहीं चलेगा।

Use

```
Personal Access Token (PAT)
```

या

```
SSH Authentication
```

---

## Repository Not Found

Verify Repository Name

```text
Animal-Care-Foundation

Save-Trees-Foundation

Anmol-Jivan-Foundation
```

---

# Final Architecture

```text
GitHub

│

├─────────────── Animal-Care-Foundation

│

├─────────────── Save-Trees-Foundation

│

└─────────────── Anmol-Jivan-Foundation
```

---

# Lab Summary

इस Lab में हमने

✅ तीन GitHub Repositories बनाई

✅ Git Initialize किया

✅ Initial Commit किया

✅ Remote Configure किया

✅ Code Push किया

✅ GitHub Verify किया

---

# Next Lab

```text
29 - Clone All Three Websites on Azure VM-02
```

इस Lab में हम

- SSH से VM-02 Login करेंगे
- Git Install Verify करेंगे
- तीनों Repositories Clone करेंगे
- /var/www में Copy करेंगे
- Nginx Virtual Hosts के लिए Environment तैयार करेंगे

---

# Documentation Commit

```bash
git add .

git commit -m "Added Lab 28.1.5 - Create GitHub repositories and push all NGO websites"

git push origin main
```


-----


# 29 - Clone All Three Websites on Azure VM-02

> **Objective**
>
> इस Lab में हम GitHub पर बनी तीनों NGO Websites को Azure VM-02 पर Clone करेंगे।
>
> इसके बाद सभी Websites `/var/www/` के अंदर Copy होंगी और अगले Lab में Nginx Virtual Hosts से Host की जाएँगी।

---

# Current Architecture

```text
GitHub

│

├────────────── Animal-Care-Foundation

├────────────── Save-Trees-Foundation

└────────────── Anmol-Jivan-Foundation

        │

        ▼

Azure VM-02

        │

        ▼

/var/www

        │

        ▼

Nginx
```

---

# Prerequisites

VM-02 Running

GitHub Repository Ready

SSH Working

Git Installed

---

# Step 1 - Login to VM-02

```bash
ssh azureuser@<VM02_Public_IP>
```

Example

```bash
ssh azureuser@20.212.xxx.xxx
```

Expected

```text
azureuser@vm02:~$
```

---

# Step 2 - Verify Current Directory

```bash
pwd
```

Expected

```text
/home/azureuser
```

---

# Step 3 - Verify Git Installation

```bash
git --version
```

Expected

```text
git version 2.x.x
```

---

# Step 4 - Install Git (If Required)

Ubuntu

```bash
sudo apt update

sudo apt install git -y
```

Verify

```bash
git --version
```

---

# Step 5 - Clone Animal Care Foundation

```bash
git clone https://github.com/Shrikant-Nadgauda/Animal-Care-Foundation.git
```

---

# Step 6 - Clone Save Trees Foundation

```bash
git clone https://github.com/Shrikant-Nadgauda/Save-Trees-Foundation.git
```

---

# Step 7 - Clone Anmol Jivan Foundation

```bash
git clone https://github.com/Shrikant-Nadgauda/Anmol-Jivan-Foundation.git
```

---

# Step 8 - Verify Cloned Repositories

```bash
ls
```

Expected

```text
Animal-Care-Foundation

Save-Trees-Foundation

Anmol-Jivan-Foundation
```

---

# Step 9 - Verify Project Files

Animal Care

```bash
ls Animal-Care-Foundation
```

Expected

```text
index.html

style.css

script.js

README.md
```

---

Save Trees

```bash
ls Save-Trees-Foundation
```

Expected

```text
index.html

style.css

script.js

README.md
```

---

Anmol Jivan

```bash
ls Anmol-Jivan-Foundation
```

Expected

```text
index.html

style.css

script.js

README.md
```

---

# Step 10 - Verify Existing Web Directories

```bash
ls /var/www
```

Expected

```text
animal

trees

anmol

html
```

---

# Step 11 - Copy Animal Care Website

```bash
sudo cp -r ~/Animal-Care-Foundation/* /var/www/animal/
```

Verify

```bash
ls /var/www/animal
```

Expected

```text
index.html

style.css

script.js

README.md
```

---

# Step 12 - Copy Save Trees Website

```bash
sudo cp -r ~/Save-Trees-Foundation/* /var/www/trees/
```

Verify

```bash
ls /var/www/trees
```

---

# Step 13 - Copy Anmol Jivan Website

```bash
sudo cp -r ~/Anmol-Jivan-Foundation/* /var/www/anmol/
```

Verify

```bash
ls /var/www/anmol
```

---

# Step 14 - Verify Complete Web Structure

```bash
tree /var/www

```

Expected

```text
/var/www

├── animal

│   ├── index.html
│   ├── style.css
│   ├── script.js

├── trees

│   ├── index.html
│   ├── style.css
│   ├── script.js

├── anmol

│   ├── index.html
│   ├── style.css
│   ├── script.js

└── html
```

---

# Step 15 - Set Correct Permissions

```bash
sudo chown -R www-data:www-data /var/www

sudo chmod -R 755 /var/www
```

---

# Step 16 - Verify Permissions

```bash
ls -l /var/www
```

Expected

```text
drwxr-xr-x animal

drwxr-xr-x trees

drwxr-xr-x anmol
```

---

# Common Errors

## Repository Not Found

```text
Repository not found
```

Solution

```text
Verify Repository Name

Verify GitHub Username

Verify Repository Visibility
```

---

## Permission Denied

```text
Permission denied
```

Solution

```bash
sudo cp -r ...
```

---

## Git Not Installed

```text
git: command not found
```

Solution

```bash
sudo apt update

sudo apt install git -y
```

---

## Directory Already Exists

```text
destination path already exists
```

Solution

```bash
rm -rf Animal-Care-Foundation

git clone <repository-url>
```

---

# Lab Summary

इस Lab में हमने

✅ VM-02 पर Login किया

✅ Git Verify किया

✅ तीनों GitHub Repositories Clone की

✅ Websites को `/var/www` में Copy किया

✅ Permissions Configure की

✅ Web Root तैयार किया

---

# Current Progress

```text
Laptop
      │
      ▼
GitHub
      │
      ▼
Azure VM-02
      │
      ▼
/var/www
      │
      ▼
Ready for Nginx
```

---

# Next Lab

```text
32 - Configure Nginx Virtual Hosts
```

इस Lab में हम

- animal.local
- trees.local
- anmol.local

के लिए अलग-अलग Nginx Server Blocks बनाएँगे।

---

# Documentation Commit

```bash
git add .

git commit -m "Added Lab 29 - Clone all NGO websites on Azure VM-02"

git push origin main
```



-----


# 32 - Configure Nginx Virtual Hosts

> **Objective**
>
> इस Lab में हम एक ही **Azure VM-02** पर **Multiple Websites** Host करेंगे।
>
> प्रत्येक Website का अपना अलग **Document Root**, **Nginx Virtual Host Configuration** और भविष्य में अपना अलग **Domain Name** होगा।

---

# 📚 Learning Objectives

इस Lab के अंत तक आप सीखेंगे:

- Nginx Virtual Host क्या होता है
- Document Root क्या होता है
- Multiple Websites कैसे Host होती हैं
- Server Block कैसे बनाया जाता है
- Nginx Configuration Verify करना
- Nginx Reload करना

---

# Enterprise Architecture

```text
                    Internet
                        │
                        ▼
                 Azure Public IP
                        │
                        ▼
                    Nginx Server
                        │
        ┌───────────────┼───────────────┐
        │               │               │
        ▼               ▼               ▼
 Animal Care      Save Trees      Anmol Jivan
 Foundation       Foundation      Foundation

/var/www/animal   /var/www/trees  /var/www/anmol
```

---

# Current Situation

अभी

```text
/var/www/html
```

में केवल एक Website चल रही है।

लेकिन Enterprise Environment में प्रत्येक Website का अलग Folder होता है।

---

# Final Folder Structure

```text
/var/www

│

├── animal

│      ├── index.html
│      ├── style.css
│      └── images

│

├── trees

│      ├── index.html
│      ├── style.css
│      └── images

│

└── anmol

       ├── index.html
       ├── style.css
       └── images
```

---

# Final Nginx Structure

```text
/etc/nginx

│

├── nginx.conf

│

├── sites-available

│      ├── animal.conf
│      ├── trees.conf
│      └── anmol.conf

│

└── sites-enabled

       ├── animal.conf
       ├── trees.conf
       └── anmol.conf
```

---

# Step 1 - Login to VM-02

```bash
ssh azureuser@<VM02-IP>
```

या

Azure Bastion

---

# Step 2 - Create Website Directories

```bash
sudo mkdir -p /var/www/animal
```

```bash
sudo mkdir -p /var/www/trees
```

```bash
sudo mkdir -p /var/www/anmol
```

---

# Step 3 - Verify

```bash
ls /var/www
```

Expected

```text
animal

trees

anmol

html
```

---

# Step 4 - Copy Animal Website

```bash
sudo cp -r ~/Animal-Care-Foundation/* /var/www/animal/
```

---

# Step 5 - Copy Save Trees Website

```bash
sudo cp -r ~/Save-Trees-Foundation/* /var/www/trees/
```

---

# Step 6 - Copy Anmol Jivan Website

```bash
sudo cp -r ~/Anmol-Jivan-Foundation/* /var/www/anmol/
```

---

# Step 7 - Verify

```bash
ls /var/www/animal
```

```bash
ls /var/www/trees
```

```bash
ls /var/www/anmol
```

---

# Step 8 - Create Animal Virtual Host

```bash
sudo nano /etc/nginx/sites-available/animal.conf
```

---

Paste

```nginx
server {

    listen 80;

    server_name animal.local;

    root /var/www/animal;

    index index.html;

    location / {

        try_files $uri $uri/ =404;

    }

}
```

Save

```
CTRL + O

Enter

CTRL + X
```

---

# Step 9 - Create Save Trees Virtual Host

```bash
sudo nano /etc/nginx/sites-available/trees.conf
```

Paste

```nginx
server {

    listen 80;

    server_name trees.local;

    root /var/www/trees;

    index index.html;

    location / {

        try_files $uri $uri/ =404;

    }

}
```

Save File.

---

# Step 10 - Create Anmol Jivan Virtual Host

```bash
sudo nano /etc/nginx/sites-available/anmol.conf
```

Paste

```nginx
server {

    listen 80;

    server_name anmol.local;

    root /var/www/anmol;

    index index.html;

    location / {

        try_files $uri $uri/ =404;

    }

}
```

---

# Step 11 - Enable Sites

```bash
sudo ln -s /etc/nginx/sites-available/animal.conf /etc/nginx/sites-enabled/
```

```bash
sudo ln -s /etc/nginx/sites-available/trees.conf /etc/nginx/sites-enabled/
```

```bash
sudo ln -s /etc/nginx/sites-available/anmol.conf /etc/nginx/sites-enabled/
```

---

# Step 12 - Verify Configuration

```bash
sudo nginx -t
```

Expected

```text
syntax is ok

test is successful
```

---

# Step 13 - Reload Nginx

```bash
sudo systemctl reload nginx
```

---

# Step 14 - Verify Service

```bash
sudo systemctl status nginx
```

Expected

```text
Active: active (running)
```

Exit

```text
q
```

---

# Verify Configuration Files

```bash
ls /etc/nginx/sites-available
```

Expected

```text
animal.conf

trees.conf

anmol.conf
```

---

# Verify Enabled Sites

```bash
ls /etc/nginx/sites-enabled
```

Expected

```text
animal.conf

trees.conf

anmol.conf
```

---

# Enterprise Flow

```text
Internet

      │

Public IP

      │

Nginx

      │

Server Name

      │

Virtual Host

      │

Website Folder

      │

index.html
```

---

# Common Errors

## nginx: configuration file test failed

Check

```bash
sudo nginx -t
```

Configuration ठीक करें।

---

## File Not Found

```text
403

404
```

Verify

```bash
ls /var/www/animal
```

---

## Permission Denied

```bash
sudo chown -R www-data:www-data /var/www
```

---

## Symlink Already Exists

```text
File exists
```

Remove

```bash
sudo rm /etc/nginx/sites-enabled/animal.conf
```

Create Again

---

## Default Website Opens

Disable Default Site

```bash
sudo rm /etc/nginx/sites-enabled/default
```

Reload

```bash
sudo systemctl reload nginx
```

---

# Final Checklist

| Task | Status |
|------|--------|
| Website Directories Created | ✅ |
| Animal Website Copied | ✅ |
| Save Trees Website Copied | ✅ |
| Anmol Jivan Website Copied | ✅ |
| Virtual Hosts Created | ✅ |
| Sites Enabled | ✅ |
| Configuration Verified | ✅ |
| Nginx Reloaded | ✅ |

---

# Next Lab

```text
33 - Configure Multiple Domains
```

इस Lab में हम:

- Local DNS Mapping
- Host Header
- Domain Binding
- Multiple Domain Testing
- Production Domain Planning

सीखेंगे।

---

# Documentation Commit

```bash
git add .

git commit -m "Added Lab 32 - Configure Nginx Virtual Hosts"

git push origin main
```


----

# 33 - Configure Multiple Domains

> **Objective**
>
> इस Lab में हम एक ही **Azure VM-02** पर Host की गई Multiple Websites के लिए अलग-अलग Domain Names Configure करेंगे।
>
> अभी हमारे पास Real Domain नहीं है, इसलिए पहले Local Testing करेंगे। बाद में Cloudflare और Public DNS से Production Configuration करेंगे।

---

# 📚 Learning Objectives

इस Lab के अंत तक आप सीखेंगे:

- Domain Name कैसे काम करता है
- DNS Resolution क्या होता है
- Host Header क्या है
- Nginx Server Name कैसे Match करता है
- Windows Hosts File से Local Domain Mapping
- Browser से Multiple Websites Test करना

---

# Enterprise Architecture

```text
                  Browser

                     │

      animal.local
      trees.local
      anmol.local

                     │

               Hosts File

                     │

          20.212.xx.xx (VM-02)

                     │

                  Nginx

         ┌──────────┼──────────┐
         │          │          │
         ▼          ▼          ▼

 animal.conf   trees.conf   anmol.conf

         │          │          │

         ▼          ▼          ▼

 /var/www/animal
 /var/www/trees
 /var/www/anmol
```

---

# Current Situation

हमने पिछले Lab में तीन Virtual Hosts बनाए थे।

```
animal.conf

trees.conf

anmol.conf
```

लेकिन Browser को अभी यह नहीं पता कि

```
animal.local
```

कहाँ है।

उसके लिए DNS चाहिए।

---

# How DNS Works

```text
Browser

      │

animal.local

      │

DNS Lookup

      │

20.212.xx.xx

      │

Azure VM

      │

Nginx

      │

animal.conf

      │

Website
```

---

# Production vs Lab

Production

```text
animal.org

savetrees.org

anmoljivan.org
```

Lab

```text
animal.local

trees.local

anmol.local
```

---

# Step 1 - Verify VM Public IP

Azure Portal

```
VM-02

↓

Overview

↓

Public IP
```

Example

```
20.212.32.210
```

इसी IP का उपयोग करेंगे।

---

# Step 2 - Open Windows Hosts File

Windows Search

```
Notepad
```

Run as Administrator

---

Open File

```
C:\Windows\System32\drivers\etc\hosts
```

---

# Step 3 - Add Domain Mapping

File के अंत में जोड़ें

```text
20.212.32.210    animal.local

20.212.32.210    trees.local

20.212.32.210    anmol.local
```

Save File.

---

# Step 4 - Flush DNS Cache

PowerShell

```powershell
ipconfig /flushdns
```

Expected

```text
Successfully flushed the DNS Resolver Cache.
```

---

# Step 5 - Verify DNS Resolution

PowerShell

```powershell
ping animal.local
```

Expected

```text
Pinging animal.local

20.212.32.210
```

---

Verify

```powershell
ping trees.local
```

---

Verify

```powershell
ping anmol.local
```

---

# Step 6 - Verify Nginx Server Name

VM-02

```bash
sudo cat /etc/nginx/sites-available/animal.conf
```

Expected

```nginx
server_name animal.local;
```

---

Verify

```bash
sudo cat /etc/nginx/sites-available/trees.conf
```

Expected

```nginx
server_name trees.local;
```

---

Verify

```bash
sudo cat /etc/nginx/sites-available/anmol.conf
```

Expected

```nginx
server_name anmol.local;
```

---

# Step 7 - Verify Nginx Configuration

```bash
sudo nginx -t
```

Expected

```text
syntax is ok

test is successful
```

---

# Step 8 - Reload Nginx

```bash
sudo systemctl reload nginx
```

---

# Step 9 - Test Websites

Open Browser

```
http://animal.local
```

Expected

```
Animal Care Foundation
```

---

Open

```
http://trees.local
```

Expected

```
Save Trees Foundation
```

---

Open

```
http://anmol.local
```

Expected

```
Anmol Jivan Foundation
```

---

# Host Header Explained

जब Browser Request भेजता है

```
http://animal.local
```

तो Request कुछ ऐसी होती है

```http
GET /

Host: animal.local
```

Nginx उसी Host Header को पढ़कर सही Website Serve करता है।

---

# Request Flow

```text
Browser

      │

Host: trees.local

      │

Nginx

      │

server_name trees.local

      │

/var/www/trees

      │

index.html
```

---

# Verify Using Curl

Animal

```bash
curl -H "Host: animal.local" http://localhost
```

---

Trees

```bash
curl -H "Host: trees.local" http://localhost
```

---

Anmol

```bash
curl -H "Host: anmol.local" http://localhost
```

---

# Common Errors

## DNS Not Resolving

Check

```powershell
ping animal.local
```

Verify Hosts File।

---

## Wrong Website Opens

Check

```bash
server_name
```

हर Virtual Host में सही होना चाहिए।

---

## Forgot Reload

```bash
sudo systemctl reload nginx
```

---

## Syntax Error

```bash
sudo nginx -t
```

---

## Hosts File Not Saving

Run Notepad

```
Run as Administrator
```

---

# Lab Summary

हमने सीखा

✅ Local DNS Mapping

✅ Hosts File

✅ Host Header

✅ Multiple Domains

✅ Domain Testing

✅ Nginx Server Name

---

# Production Architecture (Next Goal)

```text
Internet

      │

Cloudflare DNS

      │

animal.org

trees.org

anmoljivan.org

      │

Azure Public IP

      │

Nginx

      │

Virtual Hosts

      │

Three Independent Websites
```

---

# Final Checklist

| Task | Status |
|------|--------|
| VM Public IP Verified | ✅ |
| Hosts File Updated | ✅ |
| DNS Cache Flushed | ✅ |
| Domains Resolved | ✅ |
| Nginx Verified | ✅ |
| Websites Tested | ✅ |

---

# Next Lab

```text
34 - Configure Azure Load Balancer
```

इस Lab में हम सीखेंगे:

- Azure Load Balancer क्या है
- Frontend IP
- Backend Pool
- Health Probe
- Load Balancing Rules
- High Availability
- Enterprise Architecture

---

# Documentation Commit

```bash
git add .

git commit -m "Added Lab 33 - Configure Multiple Domains using Windows Hosts File and Nginx"

git push origin main
```


----

# 34 - Configure Azure Load Balancer

> **Objective**
>
> इस Lab में हम Azure Load Balancer Configure करेंगे ताकि भविष्य में हमारी Websites एक से अधिक Web Servers (VMs) पर चल सकें और यदि एक Server Down हो जाए तो दूसरा Server Request Handle कर सके।
>
> यह Enterprise Production Architecture की शुरुआत है।

---

# 📚 Learning Objectives

इस Lab के अंत तक आप सीखेंगे:

- Azure Load Balancer क्या होता है
- Layer-4 Load Balancer कैसे काम करता है
- Frontend IP
- Backend Pool
- Health Probe
- Load Balancing Rule
- High Availability
- Fault Tolerance
- Enterprise Web Architecture

---

# Current Architecture

अभी हमारे पास केवल एक Web Server है।

```text
Internet

      │

Public IP

      │

VM-02

      │

Nginx

      │

3 Websites
```

यदि VM-02 बंद हो गया

↓

सभी Websites बंद हो जाएँगी।

---

# Enterprise Architecture

```text
                    Internet

                        │

                Azure Public IP

                        │

                Azure Load Balancer

              Frontend Public IP

                        │

          ┌─────────────┴─────────────┐

          │                           │

      Backend Pool               Backend Pool

          │                           │

        VM-02                      VM-03

          │                           │

       Nginx                       Nginx

          │                           │

   Same Websites              Same Websites
```

---

# Azure Load Balancer Components

| Component | Purpose |
|-----------|----------|
| Frontend IP | Public IP जिससे Users Connect करेंगे |
| Backend Pool | जिन VMs पर Traffic जाएगा |
| Health Probe | VM Healthy है या नहीं |
| Rule | Port Mapping (80 → 80) |
| Backend VM | Actual Web Servers |

---

# Traffic Flow

```text
User

    │

HTTP Request

    │

Load Balancer

    │

Health Check

    │

Healthy?

    │

 ┌──┴─────┐

 │        │

VM-02   VM-03

 │        │

Response
```

---

# Step 1 - Create Public IP

Azure Portal

```
Create Resource

↓

Public IP
```

---

Settings

```
Name

pip-loadbalancer-dev
```

```
SKU

Standard
```

```
Assignment

Static
```

```
IPv4
```

Click

```
Review + Create
```

---

# Step 2 - Create Load Balancer

Azure Portal

```
Create Resource

↓

Load Balancer
```

---

Configuration

```
Name

lb-dev-web
```

```
SKU

Standard
```

```
Type

Public
```

```
Frontend IP

Select pip-loadbalancer-dev
```

```
Backend Pool

Later
```

Create

---

# Architecture

```text
Internet

      │

pip-loadbalancer-dev

      │

Azure Load Balancer
```

---

# Step 3 - Create Backend Pool

Open

```
Load Balancer

↓

Backend Pools

↓

Add
```

---

Name

```
backend-web
```

Network

```
Select

vnet-dev-southeastasia-audix-001
```

Backend Targets

```
VM-02
```

Save

---

# Step 4 - Create Health Probe

Load Balancer

↓

Health Probe

↓

Add

---

Settings

```
Name

http-probe
```

```
Protocol

HTTP
```

```
Port

80
```

```
Path

/
```

Save

---

# Health Probe Flow

```text
Azure Load Balancer

      │

GET /

      │

VM-02

      │

200 OK

      │

Healthy
```

---

# Step 5 - Create Load Balancing Rule

Load Balancer

↓

Rules

↓

Add

---

Configuration

```
Frontend

LoadBalancerFrontEnd
```

```
Backend Pool

backend-web
```

```
Protocol

TCP
```

```
Frontend Port

80
```

```
Backend Port

80
```

```
Health Probe

http-probe
```

Save

---

# Step 6 - Verify Backend Health

Portal

```
Load Balancer

↓

Backend Pools
```

Expected

```
VM-02

Healthy
```

---

# Step 7 - Test Website

Open Browser

```
http://<LoadBalancer-Public-IP>
```

Expected

```
Website Opens Successfully
```

---

# Current Request Flow

```text
User

     │

Load Balancer Public IP

     │

Azure Load Balancer

     │

Backend Pool

     │

VM-02

     │

Nginx

     │

Website
```

---

# Future Architecture

Next Chapter में

VM-03 जोड़ेंगे

```text
Internet

      │

Azure Load Balancer

      │

 ┌────┴─────┐

 │          │

VM-02     VM-03

 │          │

Nginx     Nginx

 │          │

Same Website
```

अब यदि VM-02 Down हो जाए

↓

Traffic VM-03 पर चला जाएगा।

---

# Verify Using Curl

Linux

```bash
curl http://<LoadBalancer-Public-IP>
```

Expected

```html
<!DOCTYPE html>

<html>

...
```

---

# Common Errors

## Backend Unhealthy

Check

```bash
sudo systemctl status nginx
```

---

## Health Probe Failed

Check

```bash
curl localhost
```

---

## NSG Blocking

Allow

```
TCP 80
```

---

## Website Not Opening

Check

```
VM Public IP

↓

Nginx

↓

Health Probe
```

---

## Backend Pool Empty

Verify

```
VM-02

Added
```

---

## Load Balancer Rule Missing

Verify

```
Frontend Port

80
```

```
Backend Port

80
```

---

# Enterprise Best Practices

✅ Use Standard Load Balancer

✅ Static Public IP

✅ Health Probe

✅ Multiple Backend Servers

✅ Separate Web Tier

✅ Backend Pool Monitoring

---

# Final Checklist

| Task | Status |
|------|--------|
| Public IP Created | ✅ |
| Load Balancer Created | ✅ |
| Backend Pool Created | ✅ |
| VM-02 Added | ✅ |
| Health Probe Configured | ✅ |
| Rule Created | ✅ |
| Website Tested | ✅ |

---

# What's Next?

```text
35 - Configure Cloudflare with Azure Load Balancer
```

इस Chapter में सीखेंगे:

- Buy Domain
- Cloudflare Account
- DNS Records
- Proxy Mode
- SSL/TLS
- WAF
- DDoS Protection
- Domain → Load Balancer → Multiple Azure VMs

---

# Documentation Commit

```bash
git add .

git commit -m "Added Lab 34 - Configure Azure Standard Load Balancer with Backend Pool and Health Probe"

git push origin main
```

---

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

