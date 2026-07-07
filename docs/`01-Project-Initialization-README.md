# 📖 Project Initialization

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 01 - Project Initialization

---

## 🎯 Objective

इस चरण में हम अपने पूरे Terraform Project की Foundation तैयार करेंगे।

अभी हम कोई Azure Resource Create नहीं करेंगे।

सबसे पहले हम एक Professional Project Structure बनाएंगे ताकि आगे का पूरा Project Industry Standard के अनुसार विकसित किया जा सके।

---

## 🏢 Real World Scenario

किसी भी कंपनी में Infrastructure Create करने से पहले सबसे पहला काम होता है—

- Project Repository बनाना
- Folder Structure तैयार करना
- Version Control Enable करना
- Documentation लिखना
- Naming Convention Define करना

यही प्रक्रिया हम इस Project में Follow करेंगे।

---

# 📁 Step 1 — D Drive में Project Folder Create करें

अपने Windows System में **D Drive** Open करें।

अब नीचे दिए गए नाम से नया Folder Create करें।

```text
D:\Audix-Azure-Landing-Zone-Terraform
```

---

### 📂 Final Folder

```text
D:\
│
└── Audix-Azure-Landing-Zone-Terraform
```

---

## 💡 यह Folder क्यों बनाया?

यही Folder आगे चलकर हमारे पूरे Terraform Infrastructure का Root Directory होगा।

इसी Folder के अंदर—

- Terraform Code
- Documentation
- Git Repository
- Screenshots
- Architecture Diagram

सभी Files रहेंगी।

---

## ✅ Step Complete

अब आपका Project Workspace तैयार है।

अगले Chapter में हम इसी Folder को Visual Studio Code में Open करेंगे और Git Repository Initialize करेंगे।

---

## 📌 Best Practice

✅ हमेशा Project का नाम Meaningful रखें।

✅ Project Name में Spaces की जगह Hyphen (`-`) का उपयोग करें।

✅ Root Folder का नाम बाद में Change न करें।

✅ सभी Terraform Files इसी Root Folder में रखें।

---

## 🎯 Chapter Summary

इस Chapter में हमने सीखा—

- Project Folder क्यों बनाते हैं।
- Root Directory क्या होती है।
- Enterprise Project Structure की शुरुआत कैसे होती है।

---

# 💻 VS Code and Git Initialization (Part 2)

> **Document:** `02-VSCode-and-Git-Initialization.md`

![Visual Studio Code](https://img.shields.io/badge/VS_Code-Editor-007ACC?style=for-the-badge&logo=visualstudiocode&logoColor=white)
![Git](https://img.shields.io/badge/Git-Version%20Control-F05032?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github)
![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)

---

# 📖 VS Code और Git Initialization

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 01 - Project Initialization

---

# 🎯 Objective

इस Chapter में हम अपना Project Visual Studio Code में Open करेंगे, Git Repository Initialize करेंगे और GitHub Repository से Connect करेंगे।

---

# 📁 Step 1 - Project Folder Open करें

Visual Studio Code Open करें।

**File → Open Folder**

Project Folder Select करें।

```text
D:\Audix-Azure-Landing-Zone-Terraform
```

अब पूरा Project VS Code में Open हो जाएगा।

---

# 📁 Step 2 - Terminal Open करें

VS Code में

```text
Terminal → New Terminal
```

या Shortcut

```text
Ctrl + `
```

---

# 📁 Step 3 - Current Directory Verify करें

Command चलाएँ

```bash
pwd
```

या

```bash
cd
```

Expected Path

```text
D:\Audix-Azure-Landing-Zone-Terraform
```

---

# 📁 Step 4 - Git Initialize करें

Command

```bash
git init
```

Output

```text
Initialized empty Git repository
```

अब आपका Project Git Repository बन चुका है।

---

# 📁 Step 5 - Default Branch Rename करें

Command

```bash
git branch -M main
```

Verify

```bash
git branch
```

Output

```text
* main
```

---

# 📁 Step 6 - Git Status Check करें

Command

```bash
git status
```

Output

```text
On branch main

No commits yet
```

---

# 📁 Step 7 - GitHub Repository Create करें

GitHub पर जाएँ।

Repository Name

```text
audix-azure-landing-zone-terraform
```

Repository Type

```text
Public
```

**README**, **License** और **.gitignore** Create **मत** करें।

Create Repository पर Click करें।

---

# 📁 Step 8 - GitHub Remote Add करें

Command

```bash
git remote add origin https://github.com/<YOUR_USERNAME>/audix-azure-landing-zone-terraform.git
```

Verify

```bash
git remote -v
```

Expected Output

```text
origin    https://github.com/<YOUR_USERNAME>/audix-azure-landing-zone-terraform.git
origin    https://github.com/<YOUR_USERNAME>/audix-azure-landing-zone-terraform.git
```

---

# 📁 Step 9 - First Commit

Project Files Add करें

```bash
git add .
```

Commit करें

```bash
git commit -m "Initial project structure"
```

---

# 📁 Step 10 - GitHub पर Push करें

Command

```bash
git push -u origin main
```

Push Complete होने के बाद GitHub Refresh करें।

अब आपका पहला Commit दिखाई देगा।

---

# ✅ Best Practices

- हमेशा `main` Branch का उपयोग करें।
- Meaningful Commit Messages लिखें।
- Repository Create करते समय README Initialize न करें।
- हर Step के बाद `git status` Check करें।

---

# 🎯 आपने क्या सीखा?

- ✅ VS Code में Project Open करना
- ✅ Git Repository Initialize करना
- ✅ Main Branch Create करना
- ✅ GitHub Repository Connect करना
- ✅ पहला Commit करना
- ✅ पहला Push करना

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `01-Project-Initialization.md` | `README.md` | `03-Terraform-Installation-and-Azure-Login.md` |

---

> 🚀 **Project Status:** Git Repository Ready

# ☁️ Terraform Installation and Azure Login (Part 3)

> **Document:** `03-Terraform-Installation-and-Azure-Login.md`

![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Microsoft Azure](https://img.shields.io/badge/Microsoft%20Azure-Cloud-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Azure CLI](https://img.shields.io/badge/Azure_CLI-Authentication-blue?style=for-the-badge)
![DevOps](https://img.shields.io/badge/DevOps-Best%20Practices-success?style=for-the-badge)

---

# 📖 Terraform Installation and Azure Login

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 01 - Project Initialization

---

# 🎯 Objective

इस Chapter में हम Verify करेंगे कि हमारे System में Terraform और Azure CLI सही तरीके से Install हैं या नहीं।

इसके बाद Azure Subscription में Login करेंगे ताकि Terraform Azure Resources Create कर सके।

---

# 🏗️ Step 1 - Terraform Installation Verify करें

VS Code Terminal Open करें।

Command

```bash
terraform version
```

Expected Output

```text
Terraform v1.x.x
```

यदि Version दिखाई देता है तो Terraform Successfully Install है।

---

# 🏗️ Step 2 - Azure CLI Installation Verify करें

Command

```bash
az version
```

Expected Output

```text
azure-cli
```

यदि Azure CLI Version दिखाई देता है तो Installation Successful है।

---

# 🏗️ Step 3 - Azure Login करें

Command

```bash
az login
```

Browser Open होगा।

अपना Azure Account Select करें।

Login Complete होने के बाद Terminal में Subscription Details दिखाई देंगी।

---

# 🏗️ Step 4 - Azure Subscription Verify करें

Command

```bash
az account show
```

Expected Output

```text
{
  "id": "...",
  "name": "...",
  "tenantId": "...",
  "user": {
      "name": "your-email@example.com"
  }
}
```

---

# 🏗️ Step 5 - यदि Multiple Subscription हों

Command

```bash
az account list --output table
```

Output Example

```text
Name                  SubscriptionId                    State
-------------------------------------------------------------
Production            xxxxxxxxxxxxxxxxxxxxxxxxx
Development           yyyyyyyyyyyyyyyyyyyyyyyyy
```

---

# 🏗️ Step 6 - सही Subscription Select करें

Command

```bash
az account set --subscription "<Subscription Name>"
```

या

```bash
az account set --subscription "<Subscription ID>"
```

Verify

```bash
az account show
```

---

# 🏗️ Step 7 - Current Logged-in User Verify करें

Command

```bash
az account show --query user
```

Expected Output

```text
{
  "name": "your-email@example.com",
  "type": "user"
}
```

---

# 🏗️ Step 8 - Installed Terraform Providers Check (Optional)

Command

```bash
terraform providers
```

अभी कोई Provider दिखाई नहीं देगा क्योंकि हमने अभी Configuration नहीं बनाई है।

यह बिल्कुल Normal है।

---

# ✅ Best Practices

- Terraform का Latest Stable Version उपयोग करें।
- Azure CLI को Updated रखें।
- हमेशा सही Subscription Verify करें।
- Production Subscription में Deploy करने से पहले दो बार Check करें।
- Login करने के बाद `az account show` अवश्य चलाएँ।

---

# 📌 Common Commands

Terraform Version

```bash
terraform version
```

Azure CLI Version

```bash
az version
```

Azure Login

```bash
az login
```

Current Subscription

```bash
az account show
```

All Subscriptions

```bash
az account list --output table
```

Change Subscription

```bash
az account set --subscription "<Subscription Name>"
```

---

# 🎯 आपने क्या सीखा?

- ✅ Terraform Installation Verify करना
- ✅ Azure CLI Verify करना
- ✅ Azure Login करना
- ✅ Azure Subscription Verify करना
- ✅ Subscription Change करना
- ✅ Authentication Process समझना

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `02-VSCode-and-Git-Initialization.md` | `README.md` | `04-Create-Terraform-Project-Files.md` |

---

> 🚀 **Project Status:** Environment Ready for Terraform Development

---

# 📂 Create Terraform Project Files (Part 4)

> **Document:** `04-Create-Terraform-Project-Files.md`

![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Infrastructure](https://img.shields.io/badge/Infrastructure-Code-success?style=for-the-badge)
![Project](https://img.shields.io/badge/Project-Structure-blue?style=for-the-badge)
![Best Practices](https://img.shields.io/badge/Enterprise-Best%20Practices-orange?style=for-the-badge)

---

# 📖 Create Terraform Project Files

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 01 - Project Initialization

---

# 🎯 Objective

इस Chapter में हम Terraform Project की सभी आवश्यक Files Create करेंगे।

अभी हम किसी भी File में Code नहीं लिखेंगे।

हम केवल Project Structure तैयार करेंगे ताकि आगे Infrastructure आसानी से Develop किया जा सके।

---

# 🏗️ Step 1 - Project Folder Verify करें

Project Folder

```text
D:\Audix-Azure-Landing-Zone-Terraform
```

---

# 🏗️ Step 2 - निम्न Files Create करें

Root Folder में नीचे दी गई Files Create करें।

```text
README.md

.gitignore

versions.tf

provider.tf

main.tf

variables.tf

terraform.tfvars

outputs.tf
```

---

# 🏗️ Step 3 - Documentation Folder Create करें

Project के अंदर नया Folder बनाएं।

```text
docs
```

---

# 🏗️ Step 4 - Screenshots Folder Create करें

```text
screenshots
```

---

# 🏗️ Step 5 - Diagrams Folder Create करें

```text
diagrams
```

---

# 🏗️ Step 6 - Final Project Structure

```text
Audix-Azure-Landing-Zone-Terraform
│
├── README.md
├── .gitignore
├── versions.tf
├── provider.tf
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
│
├── docs
│
├── diagrams
│
└── screenshots
```

---

# 📄 प्रत्येक File का उद्देश्य

## README.md

Project Documentation

---

## .gitignore

Git को बताएगी कि किन Files को Ignore करना है।

---

## versions.tf

Terraform Version और Provider Version Define करेंगे।

---

## provider.tf

Azure Provider Configure करेंगे।

---

## main.tf

मुख्य Infrastructure Resources इसी File में लिखे जाएंगे।

---

## variables.tf

सभी Input Variables यहीं Define होंगे।

---

## terraform.tfvars

Variables की Values यहीं Store होंगी।

---

## outputs.tf

Deployment के बाद महत्वपूर्ण Information Display होगी।

---

# 💡 Real World Example

Production Environment में Terraform Project इसी प्रकार अलग-अलग Files में Divide किया जाता है।

इससे—

- Code Maintain करना आसान होता है।
- Team Collaboration बेहतर होती है।
- Troubleshooting आसान होती है।
- Reusability बढ़ती है।

---

# ✅ Best Practices

- प्रत्येक File का एक ही Purpose रखें।
- Root Folder में केवल Terraform Files रखें।
- Documentation हमेशा `docs` Folder में रखें।
- Architecture Diagram हमेशा `diagrams` Folder में रखें।
- Screenshots को अलग Folder में रखें।

---

# 🎯 आपने क्या सीखा?

- ✅ Terraform Project Files Create करना
- ✅ Standard Folder Structure बनाना
- ✅ प्रत्येक File का उद्देश्य समझना
- ✅ Enterprise Project Layout तैयार करना

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `03-Terraform-Installation-and-Azure-Login.md` | `README.md` | `05-Understanding-Terraform-Project-Files.md` |

---

> 🚀 **Project Status:** Project Structure Ready
```
---

# 📁 Understanding Terraform Project Files (Part 5)

> **Document:** `05-Understanding-Terraform-Project-Files.md`

![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-Automation-5391FE?style=for-the-badge&logo=powershell&logoColor=white)
![Git](https://img.shields.io/badge/Git-Version%20Control-F05032?style=for-the-badge&logo=git&logoColor=white)
![Best Practices](https://img.shields.io/badge/Enterprise-Best%20Practices-success?style=for-the-badge)

---

# 📖 Understanding Terraform Project Files

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 01 - Project Initialization

---

# 🎯 Objective

इस Chapter में हम सभी Terraform Files और Folders एक ही Command से Create करना सीखेंगे।

Production Project में कोई भी Engineer एक-एक File Manually Create नहीं करता।

हम भी वही तरीका अपनाएंगे।

---

# 💻 Method 1 - PowerShell (Recommended)

Project Folder में जाएँ।

```powershell
cd D:\Audix-Azure-Landing-Zone-Terraform
```

अब नीचे दिया गया Command Run करें।

```powershell
mkdir docs,diagrams,screenshots

New-Item README.md -ItemType File

New-Item .gitignore -ItemType File

New-Item versions.tf -ItemType File

New-Item provider.tf -ItemType File

New-Item main.tf -ItemType File

New-Item variables.tf -ItemType File

New-Item terraform.tfvars -ItemType File

New-Item outputs.tf -ItemType File
```

---

# 💻 Method 2 - Git Bash

Project Folder में जाएँ।

```bash
cd /d/Audix-Azure-Landing-Zone-Terraform
```

अब नीचे दिया गया Command Run करें।

```bash
mkdir docs diagrams screenshots

touch README.md \
.gitignore \
versions.tf \
provider.tf \
main.tf \
variables.tf \
terraform.tfvars \
outputs.tf
```

---

# 📁 Final Folder Structure

```text
Audix-Azure-Landing-Zone-Terraform
│
├── README.md
├── .gitignore
├── versions.tf
├── provider.tf
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
│
├── docs
├── diagrams
└── screenshots
```

---

# 📄 अब इन Files का काम समझते हैं

## 📘 README.md

पूरे Project की Documentation।

GitHub पर सबसे पहले यही दिखाई देती है।

---

## 📘 .gitignore

Git को बताती है कि कौन-कौन सी Files GitHub पर Upload नहीं करनी हैं।

---

## 📘 versions.tf

Terraform Version और Azure Provider Version यहीं Define करेंगे।

---

## 📘 provider.tf

Azure Provider की Configuration यहीं लिखेंगे।

---

## 📘 main.tf

Infrastructure Create करने वाला मुख्य Terraform Code।

---

## 📘 variables.tf

सभी Input Variables की Definition।

---

## 📘 terraform.tfvars

Variables की Values Store करेंगे।

---

## 📘 outputs.tf

Deployment Complete होने के बाद Important Information Display करेंगे।

---

# 🌍 Real World Example

मान लीजिए Project में—

- 300 Terraform Files
- 40 Modules
- 25 Developers

हैं।

ऐसे में कोई भी Engineer एक-एक File Manually Create नहीं करता।

हमेशा Automation या Commands का उपयोग किया जाता है।

---

# ✅ Best Practices

- हमेशा Command Line से Project Initialize करें।
- Folder Structure शुरुआत में ही तैयार करें।
- Documentation Folder अलग रखें।
- Screenshots और Diagrams अलग Folder में रखें।
- Terraform Files Root Directory में रखें।

---

# 💡 आने वाले Chapters में हम कौन-कौन सी Files बनाएंगे?

अब आगे से हम Manual File Create नहीं करेंगे।

जब भी नई File की आवश्यकता होगी, हम PowerShell या Git Bash से एक साथ Create करेंगे।

उदाहरण—

```powershell
New-Item locals.tf -ItemType File

New-Item backend.tf -ItemType File

mkdir modules
```

या

```bash
touch locals.tf backend.tf

mkdir modules
```

---

# 🎯 आपने क्या सीखा?

- ✅ PowerShell से Files Create करना
- ✅ Git Bash से Files Create करना
- ✅ Terraform Project Structure
- ✅ प्रत्येक File का उद्देश्य
- ✅ Enterprise Project Initialization

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `04-Create-Terraform-Project-Files.md` | `README.md` | `06-Understanding-versions.tf.md` |

---

> 🚀 **Project Status:** Terraform Project Ready

---

