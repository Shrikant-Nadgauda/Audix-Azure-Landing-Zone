
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