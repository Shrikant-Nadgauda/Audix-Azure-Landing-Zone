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

```
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
# 📘 Understanding `versions.tf` (Part 6)

> **Document:** `06-Understanding-versions.tf.md`

![Terraform](https://img.shields.io/badge/Terraform-v1.x-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-Provider-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Versioning](https://img.shields.io/badge/Version-Control-success?style=for-the-badge)
![Best Practices](https://img.shields.io/badge/Enterprise-Best%20Practices-orange?style=for-the-badge)

---

# 📖 Understanding `versions.tf`

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 02 - Terraform Configuration

---

# 🎯 Objective

इस Chapter में हम `versions.tf` File को समझेंगे।

यह File Terraform Project की सबसे महत्वपूर्ण Files में से एक होती है क्योंकि इसी में हम Terraform Version और Provider Version Define करते हैं।

---

# 🤔 `versions.tf` क्या है?

`versions.tf` Terraform को बताती है—

- कौन सा Terraform Version Use करना है।
- कौन सा Provider Use करना है।
- Provider का कौन सा Version Install करना है।

यदि यह File सही नहीं होगी तो अलग-अलग Machines पर अलग-अलग Version के कारण Errors आ सकते हैं।

---

# 🌍 Real World Scenario

मान लीजिए—

Developer A

```text
Terraform v1.8
```

Developer B

```text
Terraform v1.11
```

CI/CD Pipeline

```text
Terraform v1.9
```

यदि Version Lock नहीं होगा तो तीनों जगह अलग-अलग Behaviour हो सकता है।

इसीलिए Enterprise Projects में Version Lock करना Mandatory होता है।

---

# 📄 Create `versions.tf`

Open

```text
versions.tf
```

अब नीचे दिया गया Code लिखें।

```terraform
terraform {

  required_version = ">= 1.13.0"

  required_providers {

    azurerm = {

      source  = "hashicorp/azurerm"

      version = "~> 4.0"

    }

  }

}
```

---

# 🔍 Code Explanation

## terraform

```terraform
terraform {

}
```

यह Terraform Project की Root Configuration Block है।

---

## required_version

```terraform
required_version = ">= 1.13.0"
```

इसका अर्थ—

Project केवल Terraform Version **1.13.0** या उससे ऊपर पर चलेगा।

---

## required_providers

```terraform
required_providers {

}
```

Terraform को बताता है कि कौन-कौन से Providers इस Project में उपयोग होंगे।

---

## azurerm

```terraform
azurerm
```

Azure Cloud का Official Terraform Provider।

---

## source

```terraform
source = "hashicorp/azurerm"
```

Provider Download होगा—

```text
registry.terraform.io/hashicorp/azurerm
```

---

## version

```terraform
version = "~> 4.0"
```

इसका अर्थ—

Terraform Azure Provider का Stable 4.x Version Use करेगा।

---

# 📌 क्यों `~>` Use करते हैं?

यदि लिखा जाए—

```terraform
version = "4.0.0"
```

तो केवल वही Version चलेगा।

लेकिन

```terraform
version = "~> 4.0"
```

तो

```text
4.0

4.1

4.2

4.5

4.9
```

सब Allowed होंगे।

लेकिन

```text
5.x
```

Install नहीं होगा।

यही Enterprise Best Practice है।

---

# 💡 Version Operators

Exact Version

```terraform
version = "4.0.0"
```

Greater Than

```terraform
version = ">= 4.0"
```

Less Than

```terraform
version = "< 5.0"
```

Compatible Version

```terraform
version = "~> 4.0"
```

---

# 🚀 Verify Configuration

Terminal में Command चलाएँ।

```bash
terraform init
```

Expected Output

```text
Initializing the backend...

Initializing provider plugins...

Terraform has been successfully initialized!
```

---

# 📂 `terraform init` क्या करता है?

यह Command—

- Provider Download करता है।
- `.terraform` Folder Create करता है।
- Provider Plugins Install करता है।
- Project Initialize करता है।

---

# 📁 Project Structure

```text
Audix-Azure-Landing-Zone-Terraform
│
├── versions.tf
├── .terraform
├── .terraform.lock.hcl
│
├── provider.tf
├── main.tf
├── variables.tf
├── terraform.tfvars
└── outputs.tf
```

---

# ⚠️ Important Files

`terraform init` के बाद दो नई चीजें बनेंगी—

```text
.terraform/
```

और

```text
.terraform.lock.hcl
```

इनके बारे में अगले Chapters में विस्तार से सीखेंगे।

---

# ✅ Best Practices

- हमेशा `required_version` Define करें।
- हमेशा Provider Version Lock करें।
- Official HashiCorp Provider ही Use करें।
- हर नए Project में सबसे पहले `terraform init` चलाएँ।

---

# 🎯 आपने क्या सीखा?

- ✅ `versions.tf` क्या है।
- ✅ Terraform Version Lock क्यों करते हैं।
- ✅ Provider Version Lock क्यों करते हैं।
- ✅ `required_providers` क्या है।
- ✅ `terraform init` क्या करता है।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `05-Understanding-Terraform-Project-Files.md` | `README.md` | `07-Terraform-Init-and-Project-Initialization.md` |

---

> 🚀 **Project Status:** Terraform Version Configuration Completed

---

# ⚙️ Terraform Init and Project Initialization (Part 7)

> **Document:** `07-Terraform-Init-and-Project-Initialization.md`

![Terraform](https://img.shields.io/badge/Terraform-Initialization-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-IaC-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![CLI](https://img.shields.io/badge/CLI-Terminal-success?style=for-the-badge)
![DevOps](https://img.shields.io/badge/DevOps-Best%20Practices-orange?style=for-the-badge)

---

# 📖 Terraform Init and Project Initialization

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 02 - Terraform Configuration

---

# 🎯 Objective

इस Chapter में हम अपने Terraform Project को पहली बार Initialize करेंगे।

जब भी नया Terraform Project बनाया जाता है, सबसे पहला Command हमेशा `terraform init` होता है।

---

# 🤔 `terraform init` क्या है?

`terraform init` Terraform Project का Initialization Command है।

यह Command Project को Deploy नहीं करता।

यह केवल Project को Run होने के लिए तैयार करता है।

---

# 🌍 Real World Example

मान लीजिए आपने नया Laptop लिया।

Terraform Install कर लिया।

GitHub से Project Clone कर लिया।

अब सबसे पहला Command क्या होगा?

```bash
terraform init
```

बिना `terraform init` के Terraform Project आगे नहीं चल सकता।

---

# 🏗️ Step 1 - Project Folder Verify करें

```powershell
cd D:\Audix-Azure-Landing-Zone-Terraform
```

---

# 🏗️ Step 2 - Current Files Verify करें

PowerShell

```powershell
dir
```

Git Bash

```bash
ls
```

Expected Output

```text
README.md

versions.tf

provider.tf

main.tf

variables.tf

terraform.tfvars

outputs.tf
```

---

# 🏗️ Step 3 - Terraform Initialize करें

Command

```bash
terraform init
```

---

# 🏗️ Expected Output

```text
Initializing the backend...

Initializing provider plugins...

Finding hashicorp/azurerm versions...

Installing hashicorp/azurerm...

Terraform has been successfully initialized!
```

यदि यह Message दिखाई देता है तो आपका Project Successfully Initialize हो चुका है।

---

# 📂 `terraform init` के दौरान क्या होता है?

Terraform निम्न कार्य करता है—

- Project को Initialize करता है।
- Required Providers Download करता है।
- Provider Plugins Install करता है।
- Working Directory तैयार करता है।
- Lock File Generate करता है।

---

# 📁 Initialization के बाद Project Structure

```text
Audix-Azure-Landing-Zone-Terraform
│
├── .terraform
│
├── .terraform.lock.hcl
│
├── README.md
├── versions.tf
├── provider.tf
├── main.tf
├── variables.tf
├── terraform.tfvars
└── outputs.tf
```

---

# 📂 `.terraform` Folder क्या है?

यह Folder Terraform द्वारा Automatically Create किया जाता है।

इसके अंदर Download किए गए Providers Store होते हैं।

उदाहरण

```text
.terraform
│
└── providers
    │
    └── registry.terraform.io
```

इस Folder को कभी भी Manually Edit नहीं करना चाहिए।

---

# 📄 `.terraform.lock.hcl` क्या है?

यह Lock File होती है।

इसमें Installed Providers की Version Information Store होती है।

इससे Team के सभी Developers एक ही Provider Version Use करते हैं।

---

# 🔍 Verify करें कि Initialization सफल हुआ है

Command

```bash
terraform version
```

फिर

```bash
terraform providers
```

Expected Output

```text
Providers required by configuration:

hashicorp/azurerm
```

---

# ❌ Common Errors

## Error

```text
terraform: command not found
```

कारण

Terraform Install नहीं है।

---

## Error

```text
Failed to query available provider packages
```

कारण

Internet Connection या Firewall Issue।

---

## Error

```text
Unsupported Terraform Core Version
```

कारण

Installed Terraform Version, `versions.tf` में दिए गए Version से Match नहीं करती।

---

# 🛠️ Useful Commands

Initialize Project

```bash
terraform init
```

Reconfigure Project

```bash
terraform init -reconfigure
```

Upgrade Providers

```bash
terraform init -upgrade
```

Show Providers

```bash
terraform providers
```

Terraform Version

```bash
terraform version
```

---

# 💡 Best Practices

- प्रत्येक नए Project में सबसे पहले `terraform init` चलाएँ।
- `terraform init` केवल एक बार नहीं, आवश्यकता पड़ने पर दोबारा भी चलाया जा सकता है।
- Provider Upgrade करने के लिए `terraform init -upgrade` उपयोग करें।
- `.terraform` Folder को Manually Modify न करें।
- `.terraform.lock.hcl` File को GitHub में Commit करें।

---

# 🎯 आपने क्या सीखा?

- ✅ `terraform init` क्या है।
- ✅ Project Initialization कैसे होता है।
- ✅ `.terraform` Folder का उपयोग।
- ✅ `.terraform.lock.hcl` क्या है।
- ✅ Common Errors और उनके कारण।
- ✅ Useful Terraform Commands।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `06-Understanding-versions.tf.md` | `README.md` | `08-Understanding-.terraform-and-Lock-File.md` |

---

> 🚀 **Project Status:** Terraform Project Successfully Initialized

---

# 🔐 Understanding `.terraform` Folder and Lock File (Part 8)

> **Document:** `08-Understanding-.terraform-and-Lock-File.md`

![Terraform](https://img.shields.io/badge/Terraform-Working%20Directory-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Git](https://img.shields.io/badge/Git-Version%20Control-F05032?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-181717?style=for-the-badge&logo=github)
![DevOps](https://img.shields.io/badge/DevOps-Industry%20Practice-success?style=for-the-badge)

---

# 📖 Understanding `.terraform` Folder and Lock File

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 02 - Terraform Configuration

---

# 🎯 Objective

इस Chapter में हम Terraform द्वारा Automatically Create होने वाले `.terraform` Folder और `.terraform.lock.hcl` File को विस्तार से समझेंगे।

इसके बाद आज का काम GitHub पर Push करेंगे और पहली Git Tag भी Create करेंगे।

---

# 🤔 `.terraform` Folder क्या है?

जब हम पहली बार

```bash
terraform init
```

चलाते हैं, तब Terraform एक Hidden Folder Create करता है।

```text
.terraform
```

यह Folder Terraform की Working Directory होती है।

---

# 📂 `.terraform` Folder के अंदर क्या होता है?

```text
.terraform
│
└── providers
    │
    └── registry.terraform.io
        │
        └── hashicorp
            │
            └── azurerm
```

इसके अंदर Download किए गए Providers Store होते हैं।

---

# 🤔 `.terraform.lock.hcl` क्या है?

यह Terraform की Dependency Lock File होती है।

इसमें Installed Provider की Exact Version Store रहती है।

उदाहरण

```text
hashicorp/azurerm

Version : 4.x.x

Checksum : XXXXXXX
```

---

# 🌍 Real World Scenario

Developer A

```text
Windows Laptop
```

Developer B

```text
MacBook
```

Developer C

```text
Linux Build Server
```

यदि Lock File Commit नहीं होगी तो तीनों अलग-अलग Provider Version Download कर सकते हैं।

इसीलिए Enterprise Projects में

```text
.terraform.lock.hcl
```

को हमेशा GitHub में Commit किया जाता है।

---

# ❌ क्या `.terraform` Folder GitHub पर Push करना चाहिए?

**नहीं।**

कभी भी नहीं।

यह Folder प्रत्येक System पर दोबारा Generate हो जाता है।

---

# 📄 `.gitignore` में क्या Add करेंगे?

Open

```text
.gitignore
```

नीचे दिया गया Content Add करें।

```gitignore

```
# Terraform Working Directory
.terraform/

# Terraform State Files
*.tfstate
*.tfstate.*

# Crash Logs
crash.log

# Variable Files
*.auto.tfvars

# Sensitive Files
*.tfvars.json

# Terraform Override Files
override.tf
override.tf.json
*_override.tf
*_override.tf.json

# CLI Configuration
.terraformrc
terraform.rc

```

अब Git `.terraform` Folder को Ignore करेगा।

---

# 🏗️ Verify करें

Command

```bash
git status
```

अब `.terraform` Folder दिखाई नहीं देना चाहिए।

---

# 🚀 GitHub पर Project Push करें

Stage Files

```bash
git add .
```

Commit

```bash
git commit -m "Configure Terraform initialization and project foundation"
```

Push

```bash
git push origin main
```

---

# 🏷️ Industry Practice - Git Tag

Enterprise Projects में Milestones Mark करने के लिए Git Tag का उपयोग किया जाता है।

आज हमारा पहला Milestone Complete हुआ है।

---

## Current Tags देखें

```bash
git tag
```

यदि कोई Output नहीं आता है तो अभी कोई Tag नहीं है।

---

## पहला Tag Create करें

```bash
git tag -a v0.1.0 -m "Project foundation completed"
```

---

## Tag Verify करें

```bash
git tag
```

Output

```text
v0.1.0
```

---

## GitHub पर Tag Push करें

```bash
git push origin v0.1.0
```

अब GitHub Repository के **Releases / Tags** Section में यह Tag दिखाई देगा।

---

# 💡 Version Naming Convention

```text
v0.1.0 → Project Foundation

v0.2.0 → Resource Group

v0.3.0 → Networking

v0.4.0 → Security

v0.5.0 → Virtual Machines

v1.0.0 → Production Ready
```

इसी प्रकार हम पूरे Project में Real Industry Versioning Follow करेंगे।

---

# ✅ Best Practices

- `.terraform/` Folder कभी Commit न करें।
- `.terraform.lock.hcl` हमेशा Commit करें।
- प्रत्येक Major Milestone पर Git Tag Create करें।
- Meaningful Commit Message लिखें।
- Push करने से पहले `git status` अवश्य Check करें।

---

# 🎯 आपने क्या सीखा?

- ✅ `.terraform` Folder क्या है।
- ✅ `.terraform.lock.hcl` क्या है।
- ✅ `.gitignore` Configure करना।
- ✅ GitHub पर Project Push करना।
- ✅ Git Tag Create करना।
- ✅ Industry Standard Versioning।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `07-Terraform-Init-and-Project-Initialization.md` | `README.md` | `09-Understanding-provider.tf.md` |

---

## 📝 Git Commit

```bash
git add .

git commit -m "Configure Terraform initialization and project foundation"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v0.1.0 -m "Project foundation completed"

git push origin v0.1.0
```

---

> 🚀 **Project Status:** Phase 01 Completed • Version **v0.1.0** Released

---

# 🌐 Understanding `provider.tf` (Part 9)

> **Document:** `09-Understanding-provider.tf.md`

![Terraform](https://img.shields.io/badge/Terraform-Provider-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Microsoft%20Azure-Provider-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Infrastructure](https://img.shields.io/badge/Infrastructure-IaC-success?style=for-the-badge)
![DevOps](https://img.shields.io/badge/Enterprise-Best%20Practices-orange?style=for-the-badge)

---

# 📖 Understanding `provider.tf`

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 03 - Azure Provider Configuration

---

# 🎯 Objective

इस Chapter में हम `provider.tf` File को समझेंगे।

यही File Terraform को बताती है कि Infrastructure किस Cloud Provider पर Create करना है।

हमारे Project में Cloud Provider **Microsoft Azure** है।

---

# 🤔 Provider क्या होता है?

Terraform स्वयं कोई Cloud Resource Create नहीं कर सकता।

Terraform को Azure, AWS, GCP या VMware से बात करने के लिए एक Provider की आवश्यकता होती है।

Provider एक Plugin होता है जो Terraform और Cloud Platform के बीच Communication करता है।

---

# 🌍 Real World Example

```text
Terraform
      │
      │
      ▼
Azure Provider
      │
      │
      ▼
Microsoft Azure
      │
      ▼
Virtual Machine

Virtual Network

Storage Account

Resource Group
```

यदि Provider नहीं होगा तो Terraform Azure को कोई Request नहीं भेज पाएगा।

---

# 📄 Open File

```text
provider.tf
```

---

# ✍️ नीचे दिया गया Code लिखें

```terraform
provider "azurerm" {

  features {}

}
```

---

# 🔍 Code Explanation

## Provider Block

```terraform
provider "azurerm" {

}
```

यह Terraform को बताता है कि हम Azure Cloud के साथ काम करेंगे।

---

## features {}

```terraform
features {}
```

यह AzureRM Provider का Mandatory Block है।

इसके बिना Provider Initialize नहीं होगा।

अभी हम इसमें कोई Configuration नहीं करेंगे।

Default Settings का उपयोग करेंगे।

---

# 💡 Azure Authentication कैसे होगी?

हमने पहले ही Azure CLI से Login किया था।

```bash
az login
```

Terraform Automatically उसी Login Session का उपयोग करेगा।

हमें Username या Password लिखने की आवश्यकता नहीं है।

---

# 🔍 Authentication Verify करें

Command

```bash
az account show
```

Expected Output

```text
{
    "name": "Your Subscription",
    "user": {
        "name": "your-email@company.com"
    }
}
```

यदि Output दिखाई देता है तो Terraform Azure में Authenticate हो जाएगा।

---

# 🧠 Terraform कैसे काम करेगा?

जब हम

```bash
terraform apply
```

चलाएंगे,

Terraform सबसे पहले

```text
provider.tf
```

पढ़ेगा।

फिर Azure CLI से Login Information लेगा।

फिर Azure Resource Manager (ARM) API को Request भेजेगा।

फिर Azure Resources Create होंगे।

---

# 🌍 Communication Flow

```text
Terraform Code

        │

        ▼

provider.tf

        │

        ▼

Azure Provider

        │

        ▼

Azure CLI Login

        │

        ▼

Azure Resource Manager (ARM)

        │

        ▼

Azure Resources
```

---

# 📌 Current Project Files

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

# 🚀 Validate Configuration

Command

```bash
terraform validate
```

Expected Output

```text
Success! The configuration is valid.
```

---

# 🔍 Format Terraform Code

Command

```bash
terraform fmt
```

यह Command पूरे Project की Formatting Automatic कर देता है।

Production Project में Commit करने से पहले इसे हमेशा चलाना चाहिए।

---

# ✅ Best Practices

- हमेशा Official Azure Provider Use करें।
- Authentication के लिए Azure CLI Login Prefer करें।
- Provider Block को अलग File (`provider.tf`) में रखें।
- Commit करने से पहले `terraform fmt` चलाएँ।
- उसके बाद `terraform validate` अवश्य चलाएँ।

---

# 🎯 आपने क्या सीखा?

- ✅ Provider क्या होता है।
- ✅ AzureRM Provider क्या है।
- ✅ `features {}` Block क्यों आवश्यक है।
- ✅ Terraform Azure से कैसे Connect करता है।
- ✅ `terraform fmt` और `terraform validate` का उपयोग।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `08-Understanding-.terraform-and-Lock-File.md` | `README.md` | `10-Understanding-main.tf-and-Create-Resource-Group.md` |

---

## 📝 Git Commit

```bash
git add .

git commit -m "Configure Azure provider and validate Terraform configuration"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v0.2.0 -m "Azure provider configuration completed"

git push origin v0.2.0
```

---

> 🚀 **Project Status:** Azure Provider Configured • Version **v0.2.0**

---

# 🏗️ Understanding `main.tf` and Create Azure Resource Group (Part 10)

> **Document:** `10-Understanding-main.tf-and-Create-Resource-Group.md`

![Terraform](https://img.shields.io/badge/Terraform-main.tf-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Microsoft%20Azure-Resource%20Group-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![IaC](https://img.shields.io/badge/Infrastructure-as%20Code-success?style=for-the-badge)
![DevOps](https://img.shields.io/badge/Enterprise-Best%20Practices-orange?style=for-the-badge)

---

# 📖 Understanding `main.tf` and Create Azure Resource Group

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 03 - Deploy First Azure Resource

---

# 🎯 Objective

इस Chapter में हम अपने Project का पहला Azure Resource Create करेंगे।

यही हमारा पहला Infrastructure as Code (IaC) Deployment होगा।

आज हम सीखेंगे—

- `main.tf` क्या है।
- Resource Block क्या होता है।
- Azure Resource Group क्या है।
- Terraform से Resource Group Create करना।
- Deployment Verify करना।

---

# 🤔 `main.tf` क्या है?

`main.tf` Terraform Project की सबसे महत्वपूर्ण File होती है।

यहीं पर हम Infrastructure Resources Define करते हैं।

उदाहरण—

- Resource Group
- Virtual Network
- Subnet
- Public IP
- Network Security Group
- Virtual Machine

सभी Resources धीरे-धीरे इसी File में बनाए जाएंगे।

---

# 🌍 Real World Example

मान लीजिए Client ने नया Azure Subscription खरीदा।

Infrastructure Create करने का पहला Step क्या होगा?

✅ Resource Group

क्योंकि Azure में लगभग सभी Resources किसी न किसी Resource Group के अंदर Create होते हैं।

---

# 🏢 Resource Group क्या है?

Resource Group Azure का Logical Container होता है।

इसके अंदर हम Related Resources Store करते हैं।

उदाहरण

```text
Resource Group

│

├── Virtual Network

├── Subnet

├── Public IP

├── Network Security Group

├── Bastion

└── Virtual Machines
```

---

# 📝 Naming Convention

हम पूरे Project में नीचे दिया गया Naming Standard Follow करेंगे।

| Resource | Name |
|----------|------|
| Resource Group | `rg-dev-eastus-audix-001` |

---

# 📄 Open File

```text
main.tf
```

---

# ✍️ नीचे दिया गया Code लिखें

```terraform
resource "azurerm_resource_group" "rg" {

  name     = "rg-dev-eastus-audix-001"

  location = "East US"

}
```

---

# 🔍 Code Explanation

## Resource Block

```terraform
resource {

}
```

Terraform में किसी भी Infrastructure को Create करने के लिए `resource` Block का उपयोग किया जाता है।

---

## Resource Type

```terraform
azurerm_resource_group
```

यह Azure Resource Group का Official Terraform Resource Type है।

---

## Local Name

```terraform
rg
```

यह Terraform का Internal Reference Name है।

आगे इसी Name का उपयोग दूसरे Resources करेंगे।

उदाहरण

```terraform
azurerm_resource_group.rg.name
```

---

## Name

```terraform
name = "rg-dev-eastus-audix-001"
```

Azure Portal में दिखाई देने वाला Resource Group Name।

---

## Location

```terraform
location = "East US"
```

Resource किस Azure Region में Create होगा।

---

# 🏗️ Validate Configuration

Command

```bash
terraform validate
```

Expected Output

```text
Success! The configuration is valid.
```

---

# 🎨 Format Code

```bash
terraform fmt
```

---

# 🔍 Deployment Preview

Command

```bash
terraform plan
```

Expected Output

```text
Plan: 1 to add, 0 to change, 0 to destroy.
```

अभी Resource Create नहीं होगा।

Terraform केवल बताएगा कि क्या Create होने वाला है।

---

# 🚀 Resource Group Deploy करें

Command

```bash
terraform apply
```

Confirmation

```text
Enter a value:
```

Type करें

```text
yes
```

---

# ✅ Expected Output

```text
Apply complete!

Resources: 1 added, 0 changed, 0 destroyed.
```

---

# 🌐 Azure Portal Verification

Azure Portal Open करें।

Search करें—

```text
Resource Groups
```

Expected Resource

```text
rg-dev-eastus-audix-001
```

यदि दिखाई देता है तो Deployment सफल है।

---

# 🔍 Terraform State Verify करें

Command

```bash
terraform state list
```

Expected Output

```text
azurerm_resource_group.rg
```

---

# 💡 Important Commands

Format Code

```bash
terraform fmt
```

Validate

```bash
terraform validate
```

Preview

```bash
terraform plan
```

Deploy

```bash
terraform apply
```

Show State

```bash
terraform state list
```

---

# ✅ Best Practices

- Resource Name हमेशा Naming Convention के अनुसार रखें।
- Deploy करने से पहले `terraform fmt` चलाएँ।
- उसके बाद `terraform validate` करें।
- फिर `terraform plan` देखकर Changes Verify करें।
- अंत में `terraform apply` करें।

Production में कभी भी सीधे `terraform apply` नहीं चलाया जाता।

---

# 🎯 आपने क्या सीखा?

- ✅ `main.tf` क्या है।
- ✅ Resource Block क्या होता है।
- ✅ Azure Resource Group क्या है।
- ✅ पहला Azure Resource Deploy करना।
- ✅ `terraform plan` और `terraform apply` का उपयोग।
- ✅ Azure Portal में Resource Verify करना।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `09-Understanding-provider.tf.md` | `README.md` | `11-Understanding-variables.tf.md` |

---

## 📝 Git Commit

```bash
git add .

git commit -m "Deploy Azure Resource Group using Terraform"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v0.3.0 -m "Azure Resource Group deployment completed"

git push origin v0.3.0
```

---

> 🚀 **Project Status:** Azure Resource Group Successfully Deployed • Version **v0.3.0**

---

# 🗄️ Create Storage Account, Understand Backend Block & Terraform State (Part 10)

> **Document:** `10-Create-Storage-Account-and-Backend-Block.md`

![Terraform](https://img.shields.io/badge/Terraform-Backend-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure Storage](https://img.shields.io/badge/Azure-Storage%20Account-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Terraform State](https://img.shields.io/badge/Terraform-State-success?style=for-the-badge)
![Git](https://img.shields.io/badge/Git-Workflow-F05032?style=for-the-badge&logo=git)

---

# 📖 Create Storage Account, Understand Backend Block & Terraform State

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 03 - Terraform Backend Foundation

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Azure Storage Account क्यों बनाते हैं?
- Terraform State File क्या होती है?
- Backend Block क्या होता है?
- Local Backend और Remote Backend में अंतर
- Storage Account Create करना
- Backend Block लिखना
- Git Status का महत्व
- Industry Workflow

---

# 🌍 Real World Scenario

मान लीज़िए आपकी Company में 8 DevOps Engineers एक ही Terraform Project पर काम कर रहे हैं।

अगर सभी Developers अपनी Local Machine की State File Use करेंगे तो—

- किसी का Resource Delete हो सकता है।
- किसी का Infrastructure Overwrite हो सकता है।
- Drift आ सकता है।
- Team Collaboration खराब हो जाएगी।

इसीलिए Enterprise Projects में Terraform State हमेशा Remote Backend में Store की जाती है।

---

# 🤔 Terraform State File क्या है?

जब Terraform कोई Resource Create करता है,

तो वह उसकी पूरी Information एक File में Save करता है।

उस File का नाम होता है—

```text
terraform.tfstate
```

---

उदाहरण

```text
Terraform

      │

      ▼

Create Resource

      │

      ▼

Azure

      │

      ▼

terraform.tfstate
```

यही File Terraform को बताती है—

- कौन सा Resource पहले से बना हुआ है।
- कौन सा Resource Update करना है।
- कौन सा Resource Delete करना है।

---

# 🤔 Backend क्या होता है?

Backend वह Location होती है जहाँ Terraform अपनी State File Store करता है।

---

## Local Backend

```text
Developer Laptop

│

└── terraform.tfstate
```

केवल Learning Project के लिए ठीक है।

---

## Remote Backend

```text
Developer

        │

        ▼

Azure Storage Account

        │

        ▼

terraform.tfstate
```

Production Projects में हमेशा यही उपयोग होता है।

---

# 🏗️ Step 1 - पहले Resource Group Deploy करें

यदि Resource Group पहले से Deploy नहीं है तो—

```bash
terraform apply
```

---

# 🏗️ Step 2 - Azure Storage Account Create करें

Azure Portal

```
Storage Accounts

↓

Create

↓

Resource Group

↓

Storage Account Name

↓

Region

↓

Review + Create
```

---

## Naming Convention

| Resource | Name |
|----------|------|
| Storage Account | `staudixtfstate001` |
| Container | `tfstate` |

> ⚠️ Storage Account Name पूरी Azure में Unique होना चाहिए।

---

# 🏗️ Step 3 - Blob Container Create करें

Storage Account

↓

Containers

↓

Create

Container Name

```text
tfstate
```

---

# 🤔 Backend Block क्या होता है?

Terraform को यह बताता है कि State File कहाँ Store करनी है।

---

Open

```text
provider.tf
```

या

```text
backend.tf
```

> **Industry Best Practice:** Backend Configuration को हमेशा अलग `backend.tf` File में रखें।

Create करें

```text
backend.tf
```

---

अब नीचे दिया गया Code लिखें।

```terraform
terraform {

  backend "azurerm" {

    resource_group_name  = "rg-dev-eastus-audix-001"

    storage_account_name = "staudixtfstate001"

    container_name       = "tfstate"

    key                  = "landing-zone.tfstate"

  }

}
```

---

# 🔍 Code Explanation

## backend "azurerm"

Terraform Azure Storage Account को Backend की तरह Use करेगा।

---

## resource_group_name

Storage Account किस Resource Group में है।

---

## storage_account_name

Azure Storage Account का नाम।

---

## container_name

Blob Container का नाम।

---

## key

State File का नाम।

```text
landing-zone.tfstate
```

Production में अक्सर अलग-अलग Environment के लिए अलग-अलग State Files होती हैं।

उदाहरण

```text
dev.tfstate

uat.tfstate

prod.tfstate
```

---

# 🏗️ Step 4 - Backend Initialize करें

Command

```bash
terraform init
```

Terraform पूछेगा—

```text
Do you want to copy existing state?
```

Type करें

```text
yes
```

अब आपकी Local State Azure Storage में चली जाएगी।

---

# 🔍 Verify करें

Azure Portal

↓

Storage Account

↓

Container

↓

tfstate

↓

Expected File

```text
landing-zone.tfstate
```

---

# 🤔 Git Status इतना Important क्यों है?

हर Professional Engineer किसी भी काम की शुरुआत और अंत में यही Command चलाता है।

```bash
git status
```

यह Command बताती है—

- कौन सी File बदली है।
- कौन सी नई File बनी है।
- कौन सी File Commit नहीं हुई।
- कौन सी File Git Ignore कर रहा है।

---

## Example

```bash
git status
```

Output

```text
Changes not staged for commit:

modified:

provider.tf

new file:

backend.tf
```

अब हमें पता चल गया कि कौन-कौन सी Files GitHub पर जाने वाली हैं।

---

# 💡 Daily Git Workflow

```bash
git status

↓

terraform fmt

↓

terraform validate

↓

terraform plan

↓

git add .

↓

git status

↓

git commit

↓

git push
```

> 🚀 यही Workflow लगभग हर DevOps Engineer Follow करता है।

---

# 🛠️ Important Commands

Terraform Initialize

```bash
terraform init
```

Format

```bash
terraform fmt
```

Validate

```bash
terraform validate
```

Preview

```bash
terraform plan
```

Git Status

```bash
git status
```

---

# ✅ Best Practices

- Backend Configuration हमेशा अलग `backend.tf` File में रखें।
- State File को कभी Delete न करें।
- State File को GitHub पर Commit न करें।
- Storage Account के लिए Globally Unique Name रखें।
- प्रत्येक Commit से पहले `git status` चलाएँ।
- `terraform fmt` और `terraform validate` बिना Commit किए कभी Push न करें।

---

# 🎯 आपने क्या सीखा?

- ✅ Terraform State क्या है।
- ✅ Backend क्या है।
- ✅ Local और Remote Backend में अंतर।
- ✅ Azure Storage Account का उपयोग।
- ✅ Backend Block Configure करना।
- ✅ Git Status का महत्व।
- ✅ Professional Terraform Workflow।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `09-Understanding-provider.tf.md` | `README.md` | `11-Understanding-Terraform-Plan-Apply-and-Destroy.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git status

git commit -m "Configure remote backend for Terraform state management"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v0.3.0 -m "Terraform remote backend configured"

git push origin v0.3.0
```

---

> 🚀 **Project Status:** Remote Backend Configured • Version **v0.3.0**

---

# 🚀 Understanding Terraform Plan, Apply and Destroy (Part 11)

> **Document:** `11-Understanding-Terraform-Plan-Apply-and-Destroy.md`

![Terraform](https://img.shields.io/badge/Terraform-Execution-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-Infrastructure-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![DevOps](https://img.shields.io/badge/DevOps-Workflow-success?style=for-the-badge)
![Git](https://img.shields.io/badge/Git-Best%20Practices-F05032?style=for-the-badge&logo=git)

---

# 📖 Understanding Terraform Plan, Apply and Destroy

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 04 - Terraform Execution Workflow

---

# 🎯 Objective

इस Chapter में हम Terraform के तीन सबसे महत्वपूर्ण Commands सीखेंगे।

- `terraform plan`
- `terraform apply`
- `terraform destroy`

यदि ये तीन Commands अच्छे से समझ आ गईं, तो Terraform का लगभग 60% Workflow समझ में आ जाएगा।

---

# 🌍 Real World Workflow

किसी भी Company में DevOps Engineer सीधे Infrastructure Create नहीं करता।

हमेशा नीचे दिया गया Workflow Follow किया जाता है।

```text
Write Code

      │

      ▼

terraform fmt

      │

      ▼

terraform validate

      │

      ▼

terraform plan

      │

      ▼

Code Review

      │

      ▼

terraform apply

      │

      ▼

Verification

      │

      ▼

Git Commit

      │

      ▼

Git Push
```

> **🚫 Production Environment में बिना `terraform plan` देखे कभी भी `terraform apply` नहीं किया जाता।**

---

# 🧠 Command 1 - terraform plan

Command

```bash
terraform plan
```

---

## यह क्या करता है?

Terraform Azure में कोई भी Resource Create नहीं करता।

यह केवल Preview दिखाता है कि—

- कौन सा Resource Create होगा।
- कौन सा Resource Update होगा।
- कौन सा Resource Delete होगा।

---

## Example Output

```text
Terraform will perform the following actions:

+ azurerm_resource_group.rg

Plan: 1 to add, 0 to change, 0 to destroy.
```

मतलब—

Terraform केवल बता रहा है कि एक नया Resource बनने वाला है।

---

# 🧠 Command 2 - terraform apply

Command

```bash
terraform apply
```

Terraform Confirmation मांगेगा।

```text
Do you want to perform these actions?

Enter a value:
```

Type करें

```text
yes
```

---

## Example Output

```text
Apply complete!

Resources: 1 added, 0 changed, 0 destroyed.
```

अब Azure में वास्तव में Resource Create हो चुका है।

---

# 🧠 Command 3 - terraform destroy

Command

```bash
terraform destroy
```

Confirmation

```text
Enter a value:
```

Type करें

```text
yes
```

---

## Example Output

```text
Destroy complete!

Resources: 1 destroyed.
```

Azure से Resource Delete हो जाएगा।

---

# 🧠 Plan बनाम Apply

| Command | Resource Create होगा? |
|----------|-----------------------|
| `terraform plan` | ❌ नहीं |
| `terraform apply` | ✅ हाँ |
| `terraform destroy` | ❌ Create नहीं, Delete करेगा |

---

# 💡 Real Interview Question

## Question

**यदि आपने Code बदल दिया लेकिन `terraform apply` नहीं चलाया तो क्या होगा?**

### Answer

Terraform केवल Local Code Update करेगा।

Azure Infrastructure में कोई Change नहीं होगा।

जब तक `terraform apply` नहीं चलेगा, Azure में कोई Resource Create, Update या Delete नहीं होगा।

---

# 📄 Plan File Generate करना

Production Projects में Plan File Generate की जाती है।

Command

```bash
terraform plan -out=tfplan
```

अब एक Plan File बनेगी।

```text
tfplan
```

---

## उसी Plan को Apply करें

```bash
terraform apply tfplan
```

इससे वही Approved Plan Deploy होगा।

यही Enterprise Best Practice है।

---

# 📂 Useful Commands

Format Code

```bash
terraform fmt
```

Validate Configuration

```bash
terraform validate
```

Preview Changes

```bash
terraform plan
```

Save Plan

```bash
terraform plan -out=tfplan
```

Deploy Infrastructure

```bash
terraform apply
```

Deploy Saved Plan

```bash
terraform apply tfplan
```

Destroy Infrastructure

```bash
terraform destroy
```

---

# 🌍 Complete Terraform Workflow

```text
Developer

      │

      ▼

terraform fmt

      │

      ▼

terraform validate

      │

      ▼

terraform plan

      │

      ▼

terraform apply

      │

      ▼

Azure Infrastructure Updated

      │

      ▼

git status

      │

      ▼

git add .

      │

      ▼

git commit

      │

      ▼

git push
```

---

# ⚠️ Common Mistakes

❌ बिना `terraform plan` देखे Apply करना।

❌ `terraform destroy` Production Environment में चलाना।

❌ `terraform validate` Skip करना।

❌ Code Format (`terraform fmt`) न करना।

❌ `git status` Check किए बिना Commit करना।

---

# ✅ Best Practices

- हमेशा `terraform fmt` चलाएँ।
- उसके बाद `terraform validate` करें।
- फिर `terraform plan` देखें।
- Production में `terraform plan -out=tfplan` उपयोग करें।
- Approved Plan को ही Apply करें।
- Apply के बाद Azure Portal में Verification करें।
- Commit से पहले `git status` अवश्य देखें।

---

# 🎯 आपने क्या सीखा?

- ✅ `terraform plan` क्या करता है।
- ✅ `terraform apply` कैसे काम करता है।
- ✅ `terraform destroy` कब उपयोग करते हैं।
- ✅ Plan File क्या होती है।
- ✅ Enterprise Deployment Workflow।
- ✅ Industry Best Practices।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `10-Create-Storage-Account-and-Backend-Block.md` | `README.md` | `12-Understanding-Terraform-State-and-State-Commands.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git status

git commit -m "Document Terraform execution workflow and deployment lifecycle"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v0.4.0 -m "Terraform execution workflow documented"

git push origin v0.4.0
```

---

> 🚀 **Project Status:** Terraform Execution Workflow Completed • Version **v0.4.0**

# 📂 Understanding Terraform State and State Commands (Part 12)

> **Document:** `12-Understanding-Terraform-State-and-State-Commands.md`

![Terraform](https://img.shields.io/badge/Terraform-State-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-State%20Management-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![DevOps](https://img.shields.io/badge/DevOps-Infrastructure-success?style=for-the-badge)
![Git](https://img.shields.io/badge/Git-Workflow-F05032?style=for-the-badge&logo=git)

---

# 📖 Understanding Terraform State and State Commands

> **Document:** `12-Understanding-Terraform-State-and-State-Commands.md`

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 05 - Terraform State Management

---

# 🎯 Objective

इस Chapter में हम Terraform State को गहराई से समझेंगे।

यह Terraform का सबसे महत्वपूर्ण Concept है।

यदि आपको Terraform State समझ आ गई तो Terraform Debugging और Production Support काफी आसान हो जाएगी।

---

# 🤔 Terraform State क्या है?

Terraform जब भी कोई Resource Create करता है तो उसकी पूरी जानकारी State File में Store करता है।

State File का Default नाम होता है

```text
terraform.tfstate
```

Terraform इसी File को देखकर निर्णय लेता है—

- कौन सा Resource पहले से मौजूद है।
- कौन सा Resource Update करना है।
- कौन सा Resource Delete करना है।
- कौन सा Resource Import करना है।

---

# 🌍 Real World Example

मान लीजिए आपने Terraform से एक Resource Group Create किया।

Terraform उसे Azure में Create करेगा।

साथ ही उसकी जानकारी State File में Save करेगा।

```text
Terraform

      │

      ▼

Azure Resource Group

      │

      ▼

terraform.tfstate
```

यदि State File Delete हो जाए तो Azure में Resource रहेगा लेकिन Terraform उसे पहचान नहीं पाएगा।

---

# 🧠 Terraform State क्यों जरूरी है?

State File के बिना Terraform को यह नहीं पता चलेगा कि कौन-कौन से Resources पहले से Deploy हैं।

यही कारण है कि Production Environment में State File सबसे महत्वपूर्ण Asset होती है।

---

# 📄 State File कहाँ होती है?

यदि Local Backend Use कर रहे हैं

```text
terraform.tfstate
```

यदि Remote Backend Use कर रहे हैं

```text
Azure Storage Account

↓

Blob Container

↓

landing-zone.tfstate
```

---

# 🏗️ State File में क्या-क्या Store होता है?

- Resource IDs
- Resource Names
- Azure Region
- Resource Dependencies
- Outputs
- Metadata

---

# 🔍 State List

Command

```bash
terraform state list
```

Example

```text
azurerm_resource_group.rg

azurerm_storage_account.tfstate
```

यह Command सभी Managed Resources दिखाती है।

---

# 🔍 State Show

Command

```bash
terraform state show azurerm_resource_group.rg
```

Output

```text
id

location

name

tags
```

यह किसी एक Resource की पूरी जानकारी दिखाता है।

---

# 🔍 Terraform Show

Command

```bash
terraform show
```

यह वर्तमान State File की पूरी Information दिखाता है।

---

# 🔍 State Pull

यदि Remote Backend Use कर रहे हैं

```bash
terraform state pull
```

यह Azure Storage से Current State Download करके Terminal में दिखाता है।

---

# 🔍 State Move

Command

```bash
terraform state mv
```

इसका उपयोग State के अंदर Resource का Address बदलने के लिए किया जाता है।

Production Refactoring में बहुत उपयोगी Command है।

---

# 🔍 State Remove

Command

```bash
terraform state rm
```

यह Resource को केवल Terraform State से हटाता है।

Azure से Resource Delete नहीं होता।

---

# 🔍 State Replace Provider

Command

```bash
terraform state replace-provider
```

Provider Migration के समय उपयोग किया जाता है।

---

# 📊 Important State Commands

| Command | Purpose |
|----------|----------|
| `terraform state list` | सभी Managed Resources देखें |
| `terraform state show` | किसी Resource की Details देखें |
| `terraform show` | पूरी State देखें |
| `terraform state pull` | Remote State Download करें |
| `terraform state mv` | Resource Rename / Move करें |
| `terraform state rm` | State से Resource Remove करें |

---

# 🌍 Enterprise Workflow

```text
Terraform Code

        │

        ▼

terraform plan

        │

        ▼

terraform apply

        │

        ▼

Azure Resources

        │

        ▼

Terraform State Updated

        │

        ▼

Azure Storage Backend
```

---

# ⚠️ Common Mistakes

❌ State File Delete करना

❌ State File Manually Edit करना

❌ Remote Backend Disable करना

❌ State File GitHub पर Upload करना

❌ Multiple Developers द्वारा Local Backend Use करना

---

# 💡 Interview Questions

## Question

Terraform State क्या होती है?

**Answer**

Terraform State वह File है जिसमें Terraform सभी Managed Infrastructure Resources की वर्तमान स्थिति (Current Infrastructure State) Store करता है।

---

## Question

यदि State File Delete हो जाए तो क्या होगा?

**Answer**

Azure Resources Delete नहीं होंगे।

लेकिन Terraform उनका Management खो देगा।

---

## Question

Production में State कहाँ Store करनी चाहिए?

**Answer**

Azure Storage Account Remote Backend में।

---

# ✅ Best Practices

- State File कभी Manually Edit न करें।
- हमेशा Remote Backend Use करें।
- State File का Backup रखें।
- Sensitive Information को Secure रखें।
- State Commands केवल आवश्यकता होने पर ही चलाएँ।

---

# 🎯 आपने क्या सीखा?

- ✅ Terraform State क्या है।
- ✅ State File का महत्व।
- ✅ State Commands।
- ✅ Remote Backend का उपयोग।
- ✅ Enterprise State Management।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `11-Understanding-Terraform-Plan-Apply-and-Destroy.md` | `README.md` | `13-Understanding-terraform-fmt-validate-and-workflow.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git status

git commit -m "Add Terraform state management documentation"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v0.5.0 -m "Terraform state management completed"

git push origin v0.5.0
```

---

> 🚀 **Project Status:** Terraform State Management Completed • Version **v0.5.0**

---

# ⚙️ Terraform Workflow (`fmt`, `validate` & Best Practices) (Part 13)

> **Document:** `13-Understanding-terraform-fmt-validate-and-workflow.md`

![Terraform](https://img.shields.io/badge/Terraform-Workflow-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-Landing%20Zone-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![DevOps](https://img.shields.io/badge/DevOps-Best%20Practices-success?style=for-the-badge)

---

# 📖 Terraform Workflow

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 05 - Standard Terraform Workflow

---

# 🎯 Objective

इस Chapter में हम Terraform का Daily Workflow सीखेंगे।

यह वही Workflow है जिसे लगभग हर DevOps Engineer Production Environment में Follow करता है।

---

# 📚 अब तक हमने क्या बनाया?

✅ Resource Group

➡️ Azure Storage Account

➡️ Blob Container

➡️ Remote Backend

➡️ Terraform State

अब हमारा Foundation तैयार हो चुका है।

अब अगले Chapter से हम Actual Landing Zone Infrastructure Build करना शुरू करेंगे।

---

# 🔄 Terraform Workflow

```text
Write Code
    │
    ▼
terraform fmt
    │
    ▼
terraform validate
    │
    ▼
terraform plan
    │
    ▼
terraform apply
    │
    ▼
Verify in Azure Portal
    │
    ▼
git status → git add . → git commit → git push
```

---

# 🛠️ terraform fmt

Command

```bash
terraform fmt
```

### Purpose

Terraform Code को Automatically Format करता है।

---

# 🛠️ terraform validate

Command

```bash
terraform validate
```

### Purpose

Terraform Configuration सही है या नहीं, यह Check करता है।

---

# 🛠️ terraform plan

Command

```bash
terraform plan
```

### Purpose

Azure में क्या Change होने वाला है उसका Preview दिखाता है।

---

# 🛠️ terraform apply

Command

```bash
terraform apply
```

### Purpose

Terraform Code को Azure में Deploy करता है।

---

# 🛠️ git status

Command

```bash
git status
```

### Purpose

बताता है कि कौन-सी Files Modified, New या Untracked हैं।

Commit करने से पहले यह Command हमेशा चलाएँ।

---

# 🌍 Daily DevOps Workflow

```text
VS Code
   │
   ▼
Write Terraform Code
   │
   ▼
fmt → validate → plan → apply
   │
   ▼
Azure Verification
   │
   ▼
git status
   │
   ▼
git add .
   │
   ▼
git commit
   │
   ▼
git push
```

---

# 💡 Quick Commands

```bash
terraform fmt

terraform validate

terraform plan

terraform apply

git status

git add .

git commit -m "Your Commit Message"

git push
```

---

# ✅ Best Practices

- `terraform fmt` हमेशा पहले चलाएँ।
- `terraform validate` से Syntax Check करें।
- `terraform plan` देखकर ही Apply करें।
- Deploy के बाद Azure Portal Verify करें।
- Commit से पहले `git status` अवश्य देखें।

---

# 🎯 आपने क्या सीखा?

- ✅ Standard Terraform Workflow
- ✅ `terraform fmt`
- ✅ `terraform validate`
- ✅ `terraform plan`
- ✅ `terraform apply`
- ✅ `git status`

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `12-Understanding-Terraform-State-and-State-Commands.md` | `README.md` | `14-Create-Azure-Virtual-Network.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Document standard Terraform development workflow"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v0.6.0 -m "Terraform workflow documentation completed"

git push origin v0.6.0
```

---

> 🚀 **Project Status:** Terraform Foundation Completed • Next Phase: Azure Virtual Network

---

# 🌐 Create Azure Virtual Network (Part 14)

> **Document:** `14-Create-Azure-Virtual-Network.md`

![Terraform](https://img.shields.io/badge/Terraform-Virtual%20Network-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-VNet-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Networking](https://img.shields.io/badge/Networking-Landing%20Zone-success?style=for-the-badge)
![DevOps](https://img.shields.io/badge/Enterprise-Best%20Practices-orange?style=for-the-badge)

---

# 🌐 Create Azure Virtual Network

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 06 - Networking

---

# 🎯 Objective

अब तक हमने Terraform की Foundation तैयार कर ली है।

अब हम Azure Landing Zone का पहला Networking Resource बनाएंगे।

इस Chapter में हम सीखेंगे—

- Virtual Network (VNet) क्या है?
- VNet की आवश्यकता क्यों होती है?
- Address Space क्या होता है?
- Terraform से Azure Virtual Network Create करना

---

# 📚 अब तक हमारा Infrastructure

```text
Azure Subscription
        │
        ▼
Resource Group
        │
        ▼
Storage Account
        │
        ▼
Blob Container
        │
        ▼
Terraform Remote Backend
```

अब इसमें Networking जोड़ेंगे।

---

# 🤔 Virtual Network (VNet) क्या है?

Virtual Network (VNet) Azure का Private Network होता है।

Azure में बनने वाले सभी Resources इसी Network के अंदर Communicate करते हैं।

यदि VNet नहीं होगा तो—

- Virtual Machine नहीं बन सकती।
- Subnet नहीं बन सकता।
- Bastion काम नहीं करेगा।
- Private Communication संभव नहीं होगी।

---

# 🌍 Real World Example

मान लीजिए आपने एक Office बनाया।

अब उस Office में—

- Meeting Room
- HR Department
- Server Room
- Finance Department

सबको जोड़ने के लिए Internal Network चाहिए।

Azure में वही Internal Network **Virtual Network (VNet)** कहलाता है।

---

# 🏗️ Landing Zone Network Architecture

```text
Internet
    │
    ▼
Azure Subscription
    │
    ▼
Resource Group
    │
    ▼
Virtual Network (10.0.0.0/16)
    │
    ├──────────────┬──────────────┬──────────────┐
    ▼              ▼              ▼
Netflix       StreamFlix   AzureBastionSubnet
10.0.1.0/24   10.0.2.0/24     10.0.3.0/26
```

> अभी इस Chapter में केवल **Virtual Network** बनाएंगे।

---

# 📛 Naming Convention

| Resource | Name |
|----------|------|
| Virtual Network | `vnet-dev-eastus-audix-001` |

---

# 📄 Open File

```text
main.tf
```

---

# ✍️ नीचे दिया गया Code Add करें

```terraform
resource "azurerm_virtual_network" "vnet" {

  name                = "vnet-dev-eastus-audix-001"

  location            = azurerm_resource_group.rg.location

  resource_group_name = azurerm_resource_group.rg.name

  address_space = [
    "10.0.0.0/16"
  ]

}
```

---

# 🔍 Code Explanation

## Resource Type

```terraform
azurerm_virtual_network
```

Azure Virtual Network Create करता है।

---

## Local Name

```terraform
vnet
```

Terraform का Internal Reference Name।

---

## Name

```terraform
name = "vnet-dev-eastus-audix-001"
```

Azure Portal में दिखाई देने वाला Name।

---

## Location

```terraform
location = azurerm_resource_group.rg.location
```

Resource Group की Location Automatically Use करेगा।

---

## Resource Group

```terraform
resource_group_name = azurerm_resource_group.rg.name
```

Virtual Network किस Resource Group में बनेगा।

---

## Address Space

```terraform
address_space = [
    "10.0.0.0/16"
]
```

पूरे Network का IP Range।

इसी Address Space के अंदर आगे Subnets बनाए जाएंगे।

---

# 💡 CIDR Explanation

```text
10.0.0.0/16
```

मतलब—

- Network Start : 10.0.0.0
- Network End : 10.0.255.255

यही पूरा Address Space हमारे Landing Zone के लिए Reserved रहेगा।

---

# 🚀 Terraform Workflow

Format

```bash
terraform fmt
```

Validate

```bash
terraform validate
```

Preview

```bash
terraform plan
```

Deploy

```bash
terraform apply
```

---

# 🌐 Azure Portal Verification

Azure Portal

↓

Resource Groups

↓

rg-dev-eastus-audix-001

↓

Virtual Network

Expected Name

```text
vnet-dev-eastus-audix-001
```

---

# 📊 Current Landing Zone

```text
Azure Subscription
        │
        ▼
Resource Group
        │
        ▼
Virtual Network
        │
        ▼
10.0.0.0/16
```

---

# 📌 Best Practices

- VNet का Address Space भविष्य को ध्यान में रखकर रखें।
- Production में Address Space बाद में बदलना कठिन होता है।
- Resource Name हमेशा Naming Convention के अनुसार रखें।
- Location Hardcode करने के बजाय Resource Group से Reference लें।

---

# 🎯 आपने क्या सीखा?

- ✅ Virtual Network क्या है।
- ✅ VNet क्यों आवश्यक है।
- ✅ Address Space क्या होता है।
- ✅ Azure VNet Create करना।
- ✅ Terraform से Networking शुरू करना।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `13-Understanding-Terraform-Workflow.md` | `README.md` | `15-Understanding-CIDR-and-Create-Subnets.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Create Azure Virtual Network for landing zone"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v0.7.0 -m "Azure Virtual Network created"

git push origin v0.7.0
```

---

> 🚀 **Project Status:** Azure Virtual Network Successfully Deployed • Version **v0.7.0**

# 🌐 Create Multiple Azure Subnets using `for_each` (Part 16)

> **Document:** `16-Create-Multiple-Subnets-Using-for_each.md`

![Terraform](https://img.shields.io/badge/Terraform-for__each-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-Subnets-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Networking](https://img.shields.io/badge/Networking-Landing%20Zone-success?style=for-the-badge)
![DevOps](https://img.shields.io/badge/Enterprise-Best%20Practices-orange?style=for-the-badge)

---

# 🌐 Create Multiple Azure Subnets using `for_each`

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 06 - Networking

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- `for_each` क्या होता है?
- `count` और `for_each` में अंतर
- Multiple Subnets एक ही Code से कैसे बनाते हैं
- Azure Bastion Subnet का Special Name क्यों होता है
- Azure Bastion के लिए `/26` Subnet क्यों आवश्यक है

---

# 📚 हमारा वर्तमान Architecture

```text
Internet
    │
    ▼
Azure Subscription
    │
    ▼
Resource Group
    │
    ▼
Virtual Network (10.0.0.0/16)
```

अब इसके अंदर Multiple Subnets बनाएंगे।

---

# 🏗️ Final Network Architecture

```text
Internet
    │
    ▼
Virtual Network (10.0.0.0/16)
    │
    ├──────────────┬──────────────────┬────────────────────┐
    ▼              ▼                  ▼
Netflix       StreamFlix      AzureBastionSubnet
10.0.1.0/24   10.0.2.0/24        10.0.3.0/26
```

---

# 🤔 `for_each` क्या होता है?

`for_each` Terraform का Loop है।

यदि एक जैसा Resource कई बार बनाना हो,

तो बार-बार Code लिखने की आवश्यकता नहीं होती।

एक ही Resource Block कई Objects Create कर सकता है।

---

# ❌ Without `for_each`

तीन Subnet बनाने के लिए—

```terraform
resource "azurerm_subnet" "subnet1" {}

resource "azurerm_subnet" "subnet2" {}

resource "azurerm_subnet" "subnet3" {}
```

यह तरीका बड़े Project में Maintain करना कठिन होता है।

---

# ✅ With `for_each`

```terraform
resource "azurerm_subnet" "subnet" {

    for_each = local.subnets

}
```

बस एक ही Resource Block।

Terraform स्वयं सभी Subnets Create कर देगा।

यही Enterprise Standard है।

---

# 📄 Open File

```text
locals.tf
```

---

# ✍️ Step 1 - Local Variable Create करें

```terraform
locals {

  subnets = {

    Netflix = {

      address_prefix = "10.0.1.0/24"

    }

    StreamFlix = {

      address_prefix = "10.0.2.0/24"

    }

    AzureBastionSubnet = {

      address_prefix = "10.0.3.0/26"

    }

  }

}
```

---

# 🤔 हमने `locals` क्यों Use किया?

यदि भविष्य में

- HR
- Finance
- Production
- Database

जैसे नए Subnets जोड़ने हों,

तो केवल Local Variable में एक नया Block Add करना होगा।

Terraform Automatically नया Subnet Create कर देगा।

---

# 📄 Open File

```text
main.tf
```

---

# ✍️ Step 2 - Create Multiple Subnets

```terraform
resource "azurerm_subnet" "subnet" {

  for_each = local.subnets

  name = each.key

  resource_group_name = azurerm_resource_group.rg.name

  virtual_network_name = azurerm_virtual_network.vnet.name

  address_prefixes = [

    each.value.address_prefix

  ]

}
```

---

# 🔍 Code Explanation

## `for_each`

```terraform
for_each = local.subnets
```

Terraform Local Variable के प्रत्येक Object पर Loop चलाएगा।

---

## `each.key`

```terraform
name = each.key
```

Subnet का Name बनेगा।

Output

```text
Netflix

StreamFlix

AzureBastionSubnet
```

---

## `each.value.address_prefix`

```terraform
address_prefixes = [

    each.value.address_prefix

]
```

हर Subnet का अपना CIDR Automatically Assign होगा।

---

# 🧠 Terraform अंदर क्या करता है?

```text
Read local.subnets
        │
        ▼
for_each Loop Start
        │
        ▼
Netflix
        │
        ▼
Create Subnet
        │
        ▼
StreamFlix
        │
        ▼
Create Subnet
        │
        ▼
AzureBastionSubnet
        │
        ▼
Create Subnet
```

---

# 🤔 AzureBastionSubnet का नाम यही क्यों होना चाहिए?

Azure Bastion एक Managed Service है।

Azure केवल उसी Subnet को पहचानता है जिसका नाम बिल्कुल यही हो—

```text
AzureBastionSubnet
```

यदि नाम बदल दिया—

```text
Bastion

Subnet-Bastion

MyBastion
```

तो Azure Bastion Deploy नहीं होगा।

> **यह Azure की Mandatory Requirement है।**

---

# 🤔 `/26` Subnet क्यों?

Azure Bastion के लिए Microsoft Minimum `/26` Size Recommend करता है।

```text
AzureBastionSubnet

10.0.3.0/26
```

इससे Bastion भविष्य में Scale हो सकता है।

यदि `/27` या उससे छोटा Subnet होगा,

तो Bastion Deployment Fail हो सकता है।

---

# 🚀 Terraform Workflow

```text
main.tf + locals.tf
        │
        ▼
terraform fmt
        │
        ▼
terraform validate
        │
        ▼
terraform plan
        │
        ▼
terraform apply
        │
        ▼
Azure Portal
        │
        ▼
3 Subnets Created
```

---

# 🌐 Azure Portal Verification

```
Resource Group

↓

Virtual Network

↓

Subnets
```

Expected Output

```text
Netflix

StreamFlix

AzureBastionSubnet
```

---

# 💡 Enterprise Benefits of `for_each`

✅ कम Code

✅ आसान Maintenance

✅ Future Scalability

✅ Dynamic Infrastructure

✅ Production Standard

---

# 📌 Best Practices

- Multiple Resources के लिए हमेशा `for_each` Prefer करें।
- `AzureBastionSubnet` का नाम कभी Change न करें।
- Bastion के लिए Minimum `/26` रखें।
- Naming Convention पूरे Project में एक जैसा रखें।
- Subnet CIDR Planning पहले करें, बाद में बदलना कठिन होता है।

---

# 🎯 आपने क्या सीखा?

- ✅ `for_each` क्या है।
- ✅ Multiple Subnets कैसे Create करते हैं।
- ✅ `each.key` और `each.value` क्या हैं।
- ✅ AzureBastionSubnet का Mandatory Name।
- ✅ Bastion के लिए `/26` क्यों आवश्यक है।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `15-Understanding-CIDR-and-Create-Subnets.md` | `README.md` | `17-Create-Network-Security-Group.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Create Azure subnets using for_each"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v0.9.0 -m "Azure subnets deployed using for_each"

git push origin v0.9.0
```

---

> 🚀 **Project Status:** Multiple Azure Subnets Successfully Deployed • Version **v0.9.0**

---

# 🔒 Create Azure Network Security Group (Part 17)

> **Document:** `17-Create-Network-Security-Group.md`

![Terraform](https://img.shields.io/badge/Terraform-NSG-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-Network%20Security%20Group-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Security](https://img.shields.io/badge/Security-Landing%20Zone-success?style=for-the-badge)
![DevOps](https://img.shields.io/badge/Enterprise-Best%20Practices-orange?style=for-the-badge)

---

# 🔒 Create Azure Network Security Group (NSG)

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 07 - Network Security

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Network Security Group (NSG) क्या होता है?
- Azure में NSG क्यों जरूरी है?
- NSG कैसे Traffic Control करता है?
- Terraform से NSG Create करना

---

# 📚 अभी तक हमारा Architecture

```text
Internet
    │
    ▼
Virtual Network (10.0.0.0/16)
    │
    ├──────────────┬──────────────────┬────────────────────┐
    ▼              ▼                  ▼
Netflix       StreamFlix      AzureBastionSubnet
10.0.1.0/24   10.0.2.0/24        10.0.3.0/26
```

अब तक Network बन चुका है।

लेकिन अभी कोई Security नहीं है।

---

# 🤔 NSG क्या होता है?

Network Security Group (NSG) Azure का Firewall है।

यह Decide करता है—

- कौन अंदर आ सकता है।
- कौन बाहर जा सकता है।
- कौन सा Port Open रहेगा।
- कौन सा Port Block रहेगा।

---

# 🌍 Real World Example

मान लीजिए आपकी Company की Building है।

Building के Gate पर Security Guard खड़ा है।

वह हर व्यक्ति से पूछता है—

- आप कौन हैं?
- कहाँ जा रहे हैं?
- आपके पास Permission है या नहीं?

Azure में यही काम **Network Security Group (NSG)** करता है।

---

# 🏗️ Architecture after NSG

```text
Internet
    │
    ▼
Network Security Group (NSG)
    │
    ▼
Virtual Network
    │
    ├──────────────┬──────────────────┬────────────────────┐
    ▼              ▼                  ▼
Netflix       StreamFlix      AzureBastionSubnet
```

---

# 📛 Naming Convention

| Resource | Name |
|----------|------|
| Network Security Group | `nsg-dev-eastus-audix-001` |

---

# 📄 Open File

```text
main.tf
```

---

# ✍️ Step 1 - Create NSG

```terraform
resource "azurerm_network_security_group" "nsg" {

  name = "nsg-dev-eastus-audix-001"

  location = azurerm_resource_group.rg.location

  resource_group_name = azurerm_resource_group.rg.name

}
```

---

# 🔍 Code Explanation

## Resource Type

```terraform
azurerm_network_security_group
```

Azure में नया NSG Create करता है।

---

## Local Name

```terraform
nsg
```

Terraform का Internal Reference।

---

## Name

```terraform
name = "nsg-dev-eastus-audix-001"
```

Azure Portal में दिखाई देने वाला Name।

---

## Location

```terraform
location = azurerm_resource_group.rg.location
```

Resource Group की Location Automatically Use होगी।

---

## Resource Group

```terraform
resource_group_name = azurerm_resource_group.rg.name
```

NSG इसी Resource Group में Create होगा।

---

# 🚀 Terraform Workflow

```text
main.tf
    │
    ▼
terraform fmt
    │
    ▼
terraform validate
    │
    ▼
terraform plan
    │
    ▼
terraform apply
    │
    ▼
Azure Portal
```

---

# 🌐 Azure Portal Verification

```
Resource Group

↓

Network Security Group
```

Expected Output

```text
nsg-dev-eastus-audix-001
```

---

# ❓ अभी Rule क्यों नहीं बनाए?

अभी हमने केवल NSG Resource Create किया है।

Rules अगले Chapter में बनाएंगे क्योंकि—

- पहले NSG समझना जरूरी है।
- फिर Inbound और Outbound Rules समझेंगे।
- उसके बाद NSG को Subnet के साथ Associate करेंगे।

यही तरीका Enterprise Projects में Follow किया जाता है।

---

# 📌 Best Practices

- NSG का नाम Naming Convention के अनुसार रखें।
- NSG Create और Rules Create अलग-अलग Steps में करें।
- Default Rules को समझे बिना Delete न करें।
- Production में "Allow Any" Rule Avoid करें।

---

# 🎯 आपने क्या सीखा?

- ✅ NSG क्या है।
- ✅ Azure में NSG क्यों जरूरी है।
- ✅ Terraform से NSG Create करना।
- ✅ NSG और Firewall का संबंध।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `16-Create-Multiple-Subnets-Using-for_each.md` | `README.md` | `18-Create-NSG-Rules-and-Associate-with-Subnets.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Create Azure Network Security Group"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v1.0.0 -m "Azure Network Security Group created"

git push origin v1.0.0
```

---

> 🚀 **Project Status:** Network Security Group Created • Next Step: Configure NSG Rules and Associate with Subnets

---
# 🛡️ Create NSG Rules and Associate with Subnets (Part 18)

> **Document:** `18-Create-NSG-Rules-and-Associate-with-Subnets.md`

![Terraform](https://img.shields.io/badge/Terraform-NSG%20Rules-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-Network%20Security%20Group-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Security](https://img.shields.io/badge/Security-Access%20Control-success?style=for-the-badge)
![Networking](https://img.shields.io/badge/Landing%20Zone-Networking-orange?style=for-the-badge)

---

# 🛡️ Create NSG Rules and Associate with Subnets

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 07 - Network Security

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- NSG Rule क्या होती है?
- Azure Packet किस प्रकार NSG Rule Check करता है?
- Priority क्या होती है?
- Allow और Deny कैसे काम करते हैं?
- NSG को Subnet के साथ Associate कैसे करते हैं?
- Terraform से NSG Rules Create करना

---

# 📚 अभी तक हमारा Architecture

```text
Internet
    │
    ▼
Virtual Network (10.0.0.0/16)
    │
    ├──────────────┬──────────────────┬────────────────────┐
    ▼              ▼                  ▼
Netflix       StreamFlix      AzureBastionSubnet
10.0.1.0/24   10.0.2.0/24        10.0.3.0/26
```

लेकिन अभी कोई Security Policy लागू नहीं हुई है।

---

# 🌍 NSG Rule कहाँ काम करती है?

```text
Internet
    │
    ▼
Incoming Packet
    │
    ▼
Network Security Group
    │
    ▼
Rule Evaluation
    │
    ├─────────────► Allow
    │
    └─────────────► Deny
    │
    ▼
Subnet
    │
    ▼
Virtual Machine
```

हर Packet सबसे पहले NSG तक आता है।

NSG Decide करता है—

- Packet अंदर जाएगा।
- या Block होगा।

---

# 🤔 NSG Rule क्या होती है?

NSG केवल एक Container है।

असल Security उसके अंदर बनी हुई Rules करती हैं।

Rule में लिखा होता है—

- Source कौन है?
- Destination कौन है?
- कौन सा Port है?
- कौन सा Protocol है?
- Action क्या है?

---

# 🌍 Real World Example

मान लीजिए Company के Gate पर Security Guard खड़ा है।

Visitor आता है।

Guard सबसे पहले पूछता है—

```text
आप कौन हैं?

कहाँ जा रहे हैं?

किससे मिलने आए हैं?

Permission है?
```

यदि Permission है

```text
Allow
```

अन्यथा

```text
Deny
```

Azure NSG बिल्कुल इसी प्रकार काम करता है।

---

# 🔎 NSG Rule Components

```text
Source
    │
    ▼
Destination
    │
    ▼
Protocol
    │
    ▼
Port
    │
    ▼
Priority
    │
    ▼
Action
```

---

# 🤔 Priority क्या होती है?

Azure Rules ऊपर से नीचे Check नहीं करता।

वह सबसे पहले सबसे छोटी Priority Number देखता है।

Example

| Priority | Rule |
|----------|------|
|100|Allow SSH|
|200|Allow HTTP|
|300|Allow HTTPS|
|4096|Default Deny|

पहले 100 Check होगा।

फिर 200।

फिर 300।

सबसे अंत में Default Rule।

---

# 💡 Important Rule

**छोटी Priority Number = पहले Execute होगी**

```text
100

↓

200

↓

300

↓

4096
```

---

# 📝 Rule Planning

हम अभी केवल SSH Allow करेंगे।

बाकी Traffic Azure Default Rules Handle करेंगे।

---

# 📄 Open File

```text
main.tf
```

---

# ✍️ Create SSH Rule

```terraform
resource "azurerm_network_security_rule" "allow_ssh" {

  name = "Allow-SSH"

  priority = 100

  direction = "Inbound"

  access = "Allow"

  protocol = "Tcp"

  source_port_range = "*"

  destination_port_range = "22"

  source_address_prefix = "*"

  destination_address_prefix = "*"

  resource_group_name = azurerm_resource_group.rg.name

  network_security_group_name = azurerm_network_security_group.nsg.name

}
```

---

# 🔍 Code Explanation

## name

```terraform
Allow-SSH
```

Rule Name

---

## priority

```terraform
100
```

सबसे पहले यही Rule Check होगी।

---

## direction

```terraform
Inbound
```

Internet से आने वाला Traffic।

---

## access

```terraform
Allow
```

Traffic Permit होगा।

---

## protocol

```terraform
Tcp
```

SSH TCP Protocol पर चलता है।

---

## destination_port_range

```terraform
22
```

SSH Port

---

## source_address_prefix

```terraform
*
```

किसी भी Source से SSH Allow।

> Production Environment में Public IP Restriction लगानी चाहिए।

---

# 🛡️ NSG Rule Flow

```text
Internet
    │
    ▼
TCP Port 22
    │
    ▼
NSG Rule (Priority 100)
    │
    ▼
ALLOW
    │
    ▼
Subnet
    │
    ▼
Linux VM
```

---

# 🔗 NSG को Subnet से Associate करना

NSG Create करने से Security लागू नहीं होती।

उसे किसी Subnet या NIC के साथ Associate करना पड़ता है।

---

# 📄 Add Below Code

```terraform
resource "azurerm_subnet_network_security_group_association" "subnet_association" {

  for_each = azurerm_subnet.subnet

  subnet_id = each.value.id

  network_security_group_id = azurerm_network_security_group.nsg.id

}
```

---

# 🔍 Code Explanation

## for_each

```terraform
for_each = azurerm_subnet.subnet
```

सभी Existing Subnets पर Loop चलेगा।

---

## subnet_id

```terraform
subnet_id = each.value.id
```

Current Subnet का ID।

---

## network_security_group_id

```terraform
network_security_group_id =
azurerm_network_security_group.nsg.id
```

उसी NSG को सभी Subnets पर Attach करेगा।

---

# 🌍 Final Architecture

```text
Internet
    │
    ▼
Network Security Group
    │
    ▼
Allow SSH (22)
    │
    ▼
Virtual Network
    │
    ├──────────────┬──────────────────┬────────────────────┐
    ▼              ▼                  ▼
Netflix       StreamFlix      AzureBastionSubnet
    │              │                  │
    └──────────────┴──────────────────┘
                 Protected by NSG
```

---

# 🚀 Terraform Workflow

```text
main.tf
    │
    ▼
terraform fmt
    │
    ▼
terraform validate
    │
    ▼
terraform plan
    │
    ▼
terraform apply
    │
    ▼
Azure Portal
    │
    ▼
NSG Rules Applied
```

---

# 🌐 Azure Portal Verification

```
Resource Group

↓

Network Security Group

↓

Security Rules

↓

Allow-SSH

↓

Subnets

↓

Associated Subnets
```

---

# ⚠️ Production Best Practices

❌ Source IP कभी `*` न रखें।

✅ Office Public IP Allow करें।

---

❌ Priority Random न रखें।

✅ 100, 200, 300, 400 जैसे Gap रखें।

---

❌ सभी Ports Open न करें।

✅ केवल Required Ports ही Allow करें।

---

❌ NSG बिना Association के न छोड़ें।

✅ हमेशा Subnet या NIC के साथ Associate करें।

---

# 🎯 आपने क्या सीखा?

- ✅ NSG Rule क्या है।
- ✅ Priority कैसे काम करती है।
- ✅ Allow और Deny Process।
- ✅ SSH Rule Create करना।
- ✅ NSG को सभी Subnets पर Associate करना।
- ✅ Enterprise Security Best Practices।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `17-Create-Network-Security-Group.md` | `README.md` | `19-Create-Public-IP-and-Network-Interface.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Configure NSG rules and subnet associations"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v1.1.0 -m "Network security rules configured"

git push origin v1.1.0
```

---

> 🚀 **Project Status:** Network Security Completed • Next Step: Create Public IP and Network Interface

---

# 🌍 Create Public IP and Network Interface (Part 19)

> **Document:** `19-Create-Public-IP-and-Network-Interface.md`

![Terraform](https://img.shields.io/badge/Terraform-Public%20IP-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-Network%20Interface-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Networking](https://img.shields.io/badge/Networking-Connectivity-success?style=for-the-badge)
![LandingZone](https://img.shields.io/badge/Landing%20Zone-Infrastructure-orange?style=for-the-badge)

---

# 🌍 Create Public IP and Network Interface

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 08 - Virtual Machine Networking

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Public IP क्या होता है?
- Network Interface (NIC) क्या होती है?
- NIC क्यों जरूरी है?
- Public IP और NIC का संबंध
- Terraform से Public IP Create करना
- Terraform से Network Interface Create करना

---

# 📚 अभी तक हमारा Infrastructure

```text
Internet
    │
    ▼
Network Security Group
    │
    ▼
Virtual Network
    │
    ├──────────────┬──────────────────┬────────────────────┐
    ▼              ▼                  ▼
Netflix       StreamFlix      AzureBastionSubnet
```

अब तक Network तैयार हो चुका है।

लेकिन अभी कोई Virtual Machine Network से जुड़ी नहीं है।

---

# 🤔 Public IP क्या होता है?

Public IP वह Address होता है जिससे Internet आपकी Azure Resources तक पहुँचता है।

यदि Public IP नहीं होगा,

तो Internet आपकी VM को Locate नहीं कर पाएगा।

---

# 🌍 Real World Example

```text
Home Address

↓

Courier Boy

↓

आपका घर
```

यदि आपका Address नहीं होगा,

तो Courier कभी आपके घर नहीं पहुँच पाएगा।

Azure में यही Address Public IP कहलाता है।

---

# 🤔 Network Interface (NIC) क्या होती है?

NIC (Network Interface Card) Virtual Machine का Network Adapter होता है।

VM कभी भी सीधे Virtual Network से Connect नहीं होती।

हमेशा बीच में एक Network Interface होती है।

---

# 🌍 Real World Example

```text
Internet Cable

↓

Network Card

↓

Computer
```

Computer बिना Network Card के Internet से Connect नहीं हो सकता।

Azure Virtual Machine भी NIC के बिना Network से Connect नहीं हो सकती।

---

# 🏗️ Architecture

```text
Internet
    │
    ▼
Public IP
    │
    ▼
Network Interface (NIC)
    │
    ▼
Subnet
    │
    ▼
Virtual Machine
```

---

# 🔄 Complete Azure Flow

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
Network Security Group
    │
    ▼
Subnet
    │
    ▼
Virtual Machine
```

---

# 📛 Naming Convention

| Resource | Name |
|----------|------|
| Public IP | `pip-dev-eastus-audix-001` |
| Network Interface | `nic-dev-eastus-audix-001` |

---

# 📄 Step 1 - Create Public IP

Open

```text
main.tf
```

Add

```terraform
resource "azurerm_public_ip" "pip" {

  name = "pip-dev-eastus-audix-001"

  location = azurerm_resource_group.rg.location

  resource_group_name = azurerm_resource_group.rg.name

  allocation_method = "Static"

  sku = "Standard"

}
```

---

# 🔍 Code Explanation

## allocation_method

```terraform
Static
```

Public IP हमेशा Same रहेगी।

Production में यही Recommended है।

---

## sku

```terraform
Standard
```

Azure का Recommended SKU

Production Environment में हमेशा Standard Use करें।

---

# 📄 Step 2 - Create Network Interface

```terraform
resource "azurerm_network_interface" "nic" {

  name = "nic-dev-eastus-audix-001"

  location = azurerm_resource_group.rg.location

  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {

    name = "internal"

    subnet_id = azurerm_subnet.subnet["Netflix"].id

    private_ip_address_allocation = "Dynamic"

    public_ip_address_id = azurerm_public_ip.pip.id

  }

}
```

---

# 🔍 Code Explanation

## subnet_id

```terraform
subnet_id =
azurerm_subnet.subnet["Netflix"].id
```

NIC को Netflix Subnet से Connect किया गया है।

---

## private_ip_address_allocation

```terraform
Dynamic
```

Azure Automatically Private IP देगा।

---

## public_ip_address_id

```terraform
public_ip_address_id =
azurerm_public_ip.pip.id
```

NIC के साथ Public IP Attach होगी।

---

# 🧠 Azure Resource Relationship

```text
Public IP
    │
    ▼
Network Interface
    │
    ▼
Subnet
    │
    ▼
Virtual Machine
```

---

# 🌍 Resource Dependency

Terraform Automatically समझ जाता है—

```text
Public IP
      │
      ▼
Network Interface
      │
      ▼
Virtual Machine
```

इसलिए Resources सही Order में Create होते हैं।

---

# 🚀 Terraform Workflow

```text
main.tf
    │
    ▼
terraform fmt
    │
    ▼
terraform validate
    │
    ▼
terraform plan
    │
    ▼
terraform apply
    │
    ▼
Azure Portal
```

---

# 🌐 Azure Portal Verification

```text
Resource Group
        │
        ▼
Public IP Address
        │
        ▼
Network Interface
        │
        ▼
IP Configuration
```

---

# 💡 Enterprise Best Practices

✅ Public IP हमेशा Static रखें।

✅ Standard SKU Use करें।

✅ NIC का Naming Convention Follow करें।

✅ एक NIC केवल उसी Subnet में रहे जहाँ VM Deploy होगी।

✅ NIC Create होने के बाद ही VM Create करें।

---

# 🎯 आपने क्या सीखा?

- ✅ Public IP क्या है।
- ✅ Network Interface क्या है।
- ✅ VM सीधे VNet से क्यों नहीं जुड़ती।
- ✅ Public IP और NIC का संबंध।
- ✅ Terraform से Public IP Create करना।
- ✅ Terraform से Network Interface Create करना।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `18-Create-NSG-Rules-and-Associate-with-Subnets.md` | `README.md` | `20-Create-Linux-Virtual-Machine.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Create Azure Public IP and Network Interface"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v1.2.0 -m "Public IP and Network Interface created"

git push origin v1.2.0
```

---

> 🚀 **Project Status:** Network Connectivity Completed • Next Step: Create Linux Virtual Machine

---

# 🐧 Create Azure Linux Virtual Machine (Part 20)

> **Document:** `20-Create-Linux-Virtual-Machine.md`

![Terraform](https://img.shields.io/badge/Terraform-Linux%20VM-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-Virtual%20Machine-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-success?style=for-the-badge&logo=ubuntu)
![LandingZone](https://img.shields.io/badge/Landing%20Zone-Compute-orange?style=for-the-badge)

---

# 🐧 Create Azure Linux Virtual Machine

> **Document:** `20-Create-Linux-Virtual-Machine.md`

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 09 - Compute

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Virtual Machine (VM) क्या होती है?
- Azure VM किन Resources पर निर्भर करती है?
- Terraform से Ubuntu Linux VM Create करना
- VM बनने के बाद SSH से Login करना

---

# 📚 अभी तक हमारा Infrastructure

```text
Internet
    │
    ▼
Public IP
    │
    ▼
Network Interface
    │
    ▼
Network Security Group
    │
    ▼
Subnet
```

अब केवल Virtual Machine जोड़नी बाकी है।

---

# 🤔 Virtual Machine (VM) क्या होती है?

Virtual Machine एक Software Based Computer है।

Physical Laptop या Server की तरह ही इसमें भी—

- CPU
- RAM
- Storage
- Operating System
- Network Interface

होते हैं।

Azure इन्हें Virtual रूप में उपलब्ध कराता है।

---

# 🌍 Real World Example

```text
Physical Server
       │
       ▼
Hypervisor
       │
       ▼
Ubuntu VM
```

Azure का Datacenter Physical Hardware Manage करता है।

हम केवल Virtual Machine Create करते हैं।

---

# 🏗️ Complete Azure Flow

```text
Internet
    │
    ▼
Public IP
    │
    ▼
Network Interface
    │
    ▼
Network Security Group
    │
    ▼
Subnet
    │
    ▼
Ubuntu Linux VM
```

---

# 📛 Naming Convention

| Resource | Name |
|----------|------|
| Virtual Machine | `vm-dev-eastus-audix-001` |
| Computer Name | `audix-linux-001` |

---

# 📄 Open File

```text
main.tf
```

---

# ✍️ Add Linux Virtual Machine

```terraform
resource "azurerm_linux_virtual_machine" "vm" {

  name                = "vm-dev-eastus-audix-001"

  resource_group_name = azurerm_resource_group.rg.name

  location            = azurerm_resource_group.rg.location

  size                = "Standard_B2s"

  admin_username      = "azureadmin"

  network_interface_ids = [

    azurerm_network_interface.nic.id

  ]

  disable_password_authentication = false

  admin_password = "P@ssw0rd@123456"

  os_disk {

    caching              = "ReadWrite"

    storage_account_type = "Standard_LRS"

  }

  source_image_reference {

    publisher = "Canonical"

    offer     = "0001-com-ubuntu-server-jammy"

    sku       = "22_04-lts"

    version   = "latest"

  }

}
```

---

# 🔍 Code Explanation

## name

```terraform
name = "vm-dev-eastus-audix-001"
```

Azure Portal में दिखाई देने वाला VM Name।

---

## size

```terraform
Standard_B2s
```

VM का Size।

इससे CPU और RAM Decide होती है।

---

## admin_username

```terraform
azureadmin
```

Linux Login Username।

---

## admin_password

```terraform
admin_password = "********"
```

VM Login Password।

> **Production में Password की जगह SSH Key Recommended है।**

---

## network_interface_ids

```terraform
network_interface_ids = [

azurerm_network_interface.nic.id

]
```

VM को Network से Connect करता है।

VM बिना NIC के Create नहीं हो सकती।

---

## os_disk

```terraform
Standard_LRS
```

VM का Operating System Disk।

---

## source_image_reference

```terraform
Canonical

Ubuntu 22.04 LTS
```

Azure Marketplace से Ubuntu Download होगा।

---

# 🧠 Resource Dependency

Terraform Automatically समझता है—

```text
Resource Group
        │
        ▼
Virtual Network
        │
        ▼
Subnet
        │
        ▼
Network Security Group
        │
        ▼
Public IP
        │
        ▼
Network Interface
        │
        ▼
Linux Virtual Machine
```

इसी क्रम में Resources Deploy होंगे।

---

# 🚀 Terraform Workflow

```text
main.tf
    │
    ▼
terraform fmt
    │
    ▼
terraform validate
    │
    ▼
terraform plan
    │
    ▼
terraform apply
    │
    ▼
Azure Portal
```

---

# 🌐 Azure Portal Verification

```text
Resource Group
        │
        ▼
Virtual Machine
        │
        ▼
Networking
        │
        ▼
Public IP
```

---

# 🔑 SSH Login

Public IP प्राप्त करें

```bash
terraform output
```

फिर SSH करें

```bash
ssh azureadmin@<Public-IP>
```

Example

```bash
ssh azureadmin@20.120.xxx.xxx
```

---

# 💡 Enterprise Best Practices

✅ Ubuntu LTS Version Use करें।

✅ VM Size आवश्यकता अनुसार चुनें।

✅ NIC हमेशा अलग Resource रखें।

✅ Password की जगह SSH Key Authentication Use करें।

✅ Production में Secrets को Terraform Code में Hardcode न करें।

---

# 🎯 आपने क्या सीखा?

- ✅ Azure Virtual Machine क्या है।
- ✅ VM किन Resources पर निर्भर करती है।
- ✅ Terraform से Ubuntu VM Create करना।
- ✅ NIC और VM का संबंध।
- ✅ SSH द्वारा VM Login करना।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `19-Create-Public-IP-and-Network-Interface.md` | `README.md` | `21-SSH-Login-and-Install-Nginx.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Create Ubuntu Linux virtual machine"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v1.3.0 -m "Linux virtual machine deployed"

git push origin v1.3.0
```

---

> 🚀 **Project Status:** Compute Layer Completed • Next Step: SSH Login and Install Nginx

---

# 🌐 SSH Login and Install Nginx (Part 21)

> **Document:** `21-SSH-Login-and-Install-Nginx.md`

![Azure](https://img.shields.io/badge/Azure-Virtual%20Machine-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-SSH-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Nginx](https://img.shields.io/badge/Nginx-Web%20Server-009639?style=for-the-badge&logo=nginx&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-Deployment-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)

---

# 🌐 SSH Login and Install Nginx

> **Document:** `21-SSH-Login-and-Install-Nginx.md`

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 10 - Server Configuration

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Azure VM में SSH कैसे करें
- Linux Server Verify करना
- Nginx Install करना
- Nginx Service Start करना
- Browser से Website Access करना

---

# 📚 अभी तक हमारा Infrastructure

```text
Internet
    │
    ▼
Public IP
    │
    ▼
Network Interface
    │
    ▼
Network Security Group
    │
    ▼
Subnet
    │
    ▼
Ubuntu Linux VM
```

अब VM तैयार है।

अब इसे एक Web Server बनाएंगे।

---

# 🌍 Deployment Flow

```text
Developer Laptop
        │
        ▼
SSH
        │
        ▼
Ubuntu VM
        │
        ▼
Install Nginx
        │
        ▼
Start Service
        │
        ▼
Open Browser
        │
        ▼
Welcome to Nginx
```

---

# 🔑 Step 1 - Public IP प्राप्त करें

```bash
terraform output
```

Example

```text
public_ip = 20.120.15.25
```

---

# 🔑 Step 2 - SSH Login

```bash
ssh azureadmin@20.120.15.25
```

यदि पहली बार Connect कर रहे हैं

```text
Are you sure you want to continue connecting?
```

Type करें

```text
yes
```

---

# 🔍 Step 3 - Verify Server

Current User

```bash
whoami
```

Current Directory

```bash
pwd
```

Operating System

```bash
cat /etc/os-release
```

Hostname

```bash
hostname
```

IP Address

```bash
ip a
```

---

# 📦 Step 4 - Update Packages

```bash
sudo apt update
```

---

# 📦 Step 5 - Install Nginx

```bash
sudo apt install nginx -y
```

---

# ▶️ Step 6 - Start Nginx

```bash
sudo systemctl start nginx
```

---

# 🔄 Step 7 - Enable Nginx

Server Restart होने के बाद भी Nginx Automatically Start होगा।

```bash
sudo systemctl enable nginx
```

---

# 🔍 Step 8 - Verify Service

```bash
sudo systemctl status nginx
```

Expected Output

```text
Active: active (running)
```

---

# 🌐 Step 9 - Verify Port 80

```bash
sudo ss -tulnp | grep :80
```

Expected Output

```text
LISTEN
```

---

# 🌍 Step 10 - Open Browser

Browser में VM का Public IP Open करें

```text
http://20.120.15.25
```

Expected Page

```text
Welcome to nginx!
```

---

# 🧠 Nginx कैसे काम करता है?

```text
Browser
    │
    ▼
Public IP
    │
    ▼
NSG (Port 80)
    │
    ▼
Ubuntu VM
    │
    ▼
Nginx Service
    │
    ▼
index.html
```

---

# 📂 Default Website Location

```text
/var/www/html
```

---

# 📄 Default Page

```text
/var/www/html/index.html
```

यहीं से Nginx Website Serve करता है।

---

# 🛠️ Edit Default Page

```bash
sudo nano /var/www/html/index.html
```

Example

```html
<h1>Welcome to Audix Azure Landing Zone</h1>
```

Save करें

```
CTRL + O

ENTER

CTRL + X
```

Browser Refresh करें।

---

# 🚀 Useful Commands

Restart Nginx

```bash
sudo systemctl restart nginx
```

Stop Nginx

```bash
sudo systemctl stop nginx
```

Reload Configuration

```bash
sudo systemctl reload nginx
```

Check Version

```bash
nginx -v
```

---

# ⚠️ यदि Website Open नहीं हो रही

सबसे पहले Check करें—

✅ VM Running है

✅ Public IP Assigned है

✅ Nginx Running है

✅ NSG में Port **80** Allow है

---

# 💡 Enterprise Best Practices

✅ Password Login की जगह SSH Key Use करें।

✅ केवल Required Ports Open रखें।

✅ Nginx Service Enable करें।

✅ Default Page बदलकर Company Landing Page रखें।

✅ Production में HTTPS Enable करें।

---

# 🎯 आपने क्या सीखा?

- ✅ SSH Login करना।
- ✅ Linux Server Verify करना।
- ✅ Nginx Install करना।
- ✅ Nginx Service Manage करना।
- ✅ Browser से Website Access करना।
- ✅ Default Website Location समझना।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `20-Create-Linux-Virtual-Machine.md` | `README.md` | `22-Create-Custom-Web-Page-and-Test-Deployment.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Configure Ubuntu VM and install Nginx"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v1.4.0 -m "Ubuntu server configured with Nginx"

git push origin v1.4.0
```

---

> 🚀 **Project Status:** Web Server Successfully Configured • Next Step: Deploy a Custom Landing Page

---

# 🌐 SSH Login and Install Nginx (Part 21)

> **Document:** `21-SSH-Login-and-Install-Nginx.md`

![Azure](https://img.shields.io/badge/Azure-Virtual%20Machine-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-SSH-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Nginx](https://img.shields.io/badge/Nginx-Web%20Server-009639?style=for-the-badge&logo=nginx&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-Deployment-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)

---

# 🌐 SSH Login and Install Nginx

> **Document:** `21-SSH-Login-and-Install-Nginx.md`

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 10 - Server Configuration

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Azure VM में SSH कैसे करें
- Linux Server Verify करना
- Nginx Install करना
- Nginx Service Start करना
- Browser से Website Access करना

---

# 📚 अभी तक हमारा Infrastructure

```text
Internet
    │
    ▼
Public IP
    │
    ▼
Network Interface
    │
    ▼
Network Security Group
    │
    ▼
Subnet
    │
    ▼
Ubuntu Linux VM
```

अब VM तैयार है।

अब इसे एक Web Server बनाएंगे।

---

# 🌍 Deployment Flow

```text
Developer Laptop
        │
        ▼
SSH
        │
        ▼
Ubuntu VM
        │
        ▼
Install Nginx
        │
        ▼
Start Service
        │
        ▼
Open Browser
        │
        ▼
Welcome to Nginx
```

---

# 🔑 Step 1 - Public IP प्राप्त करें

```bash
terraform output
```

Example

```text
public_ip = 20.120.15.25
```

---

# 🔑 Step 2 - SSH Login

```bash
ssh azureadmin@20.120.15.25
```

यदि पहली बार Connect कर रहे हैं

```text
Are you sure you want to continue connecting?
```

Type करें

```text
yes
```

---

# 🔍 Step 3 - Verify Server

Current User

```bash
whoami
```

Current Directory

```bash
pwd
```

Operating System

```bash
cat /etc/os-release
```

Hostname

```bash
hostname
```

IP Address

```bash
ip a
```

---

# 📦 Step 4 - Update Packages

```bash
sudo apt update
```

---

# 📦 Step 5 - Install Nginx

```bash
sudo apt install nginx -y
```

---

# ▶️ Step 6 - Start Nginx

```bash
sudo systemctl start nginx
```

---

# 🔄 Step 7 - Enable Nginx

Server Restart होने के बाद भी Nginx Automatically Start होगा।

```bash
sudo systemctl enable nginx
```

---

# 🔍 Step 8 - Verify Service

```bash
sudo systemctl status nginx
```

Expected Output

```text
Active: active (running)
```

---

# 🌐 Step 9 - Verify Port 80

```bash
sudo ss -tulnp | grep :80
```

Expected Output

```text
LISTEN
```

---

# 🌍 Step 10 - Open Browser

Browser में VM का Public IP Open करें

```text
http://20.120.15.25
```

Expected Page

```text
Welcome to nginx!
```

---

# 🧠 Nginx कैसे काम करता है?

```text
Browser
    │
    ▼
Public IP
    │
    ▼
NSG (Port 80)
    │
    ▼
Ubuntu VM
    │
    ▼
Nginx Service
    │
    ▼
index.html
```

---

# 📂 Default Website Location

```text
/var/www/html
```

---

# 📄 Default Page

```text
/var/www/html/index.html
```

यहीं से Nginx Website Serve करता है।

---

# 🛠️ Edit Default Page

```bash
sudo nano /var/www/html/index.html
```

Example

```html
<h1>Welcome to Audix Azure Landing Zone</h1>
```

Save करें

```
CTRL + O

ENTER

CTRL + X
```

Browser Refresh करें।

---

# 🚀 Useful Commands

Restart Nginx

```bash
sudo systemctl restart nginx
```

Stop Nginx

```bash
sudo systemctl stop nginx
```

Reload Configuration

```bash
sudo systemctl reload nginx
```

Check Version

```bash
nginx -v
```

---

# ⚠️ यदि Website Open नहीं हो रही

सबसे पहले Check करें—

✅ VM Running है

✅ Public IP Assigned है

✅ Nginx Running है

✅ NSG में Port **80** Allow है

---

# 💡 Enterprise Best Practices

✅ Password Login की जगह SSH Key Use करें।

✅ केवल Required Ports Open रखें।

✅ Nginx Service Enable करें।

✅ Default Page बदलकर Company Landing Page रखें।

✅ Production में HTTPS Enable करें।

---

# 🎯 आपने क्या सीखा?

- ✅ SSH Login करना।
- ✅ Linux Server Verify करना।
- ✅ Nginx Install करना।
- ✅ Nginx Service Manage करना।
- ✅ Browser से Website Access करना।
- ✅ Default Website Location समझना।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `20-Create-Linux-Virtual-Machine.md` | `README.md` | `22-Create-Custom-Web-Page-and-Test-Deployment.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Configure Ubuntu VM and install Nginx"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v1.4.0 -m "Ubuntu server configured with Nginx"

git push origin v1.4.0
```

---

> 🚀 **Project Status:** Web Server Successfully Configured • Next Step: Deploy a Custom Landing Page

---

# 🔐 Create Second Linux VM using Azure Bastion (Part 23)

> **Document:** `23-Create-Second-VM-Using-Azure-Bastion.md`

![Terraform](https://img.shields.io/badge/Terraform-Azure%20Bastion-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-Bastion-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-Private%20VM-success?style=for-the-badge&logo=linux&logoColor=white)
![Security](https://img.shields.io/badge/Security-Zero%20Trust-orange?style=for-the-badge)

---

# 🔐 Create Second Linux VM using Azure Bastion

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 11 - Secure Administration

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Azure Bastion क्या है?
- Public IP वाली VM क्यों हटाते हैं?
- Private VM क्या होती है?
- Azure Bastion से Secure Login कैसे करते हैं?
- Terraform से दूसरी Linux VM Create करना
- VM-01 से VM-02 को Ping करना

---

# 📚 अभी तक हमारा Infrastructure

```text
Internet
    │
    ▼
Public IP
    │
    ▼
VM-01 (Ubuntu + Nginx)
```

VM-01 Internet से Accessible है।

लेकिन Enterprise Environment में सभी Servers Public Internet पर नहीं होते।

---

# 🌍 Enterprise Architecture

```text
                    Internet
                        │
                        ▼
                  Azure Bastion
                        │
      ┌─────────────────┴─────────────────┐
      ▼                                   ▼
VM-01 (Public)                    VM-02 (Private)
Ubuntu + Nginx                    Ubuntu Server
```

VM-02 पर कोई Public IP नहीं होगी।

---

# 🤔 Azure Bastion क्या है?

Azure Bastion Microsoft की Managed Service है।

यह Browser के माध्यम से Secure SSH और RDP Access प्रदान करती है।

इसमें—

- Public IP VM पर नहीं लगती
- SSH Port Internet पर Open नहीं करना पड़ता
- Azure Portal से सीधे Login कर सकते हैं

---

# 🌍 Traditional Access

```text
Laptop
    │
SSH Port 22
    │
Internet
    │
Public IP
    │
VM
```

Security Risk अधिक।

---

# 🌍 Azure Bastion Access

```text
Laptop
    │
Browser
    │
Azure Portal
    │
Azure Bastion
    │
Private VM
```

कोई Public SSH Access नहीं।

---

# 🤔 Public IP क्यों नहीं देंगे?

Enterprise में

❌ Database Server

❌ Application Server

❌ Internal Linux Server

इन पर Public IP नहीं दी जाती।

सिर्फ Bastion के माध्यम से Access किया जाता है।

यही Microsoft Recommended Architecture है।

---

# 🏗️ Final Architecture

```text
Internet
      │
      ▼
Public IP
      │
      ▼
Azure Bastion
      │
      ▼
Virtual Network
      │
      ├────────────────────┐
      ▼                    ▼
VM-01                  VM-02
(Public)              (Private)
```

---

# 📄 Open File

```text
main.tf
```

---

# ✍️ Create Second NIC

```terraform
resource "azurerm_network_interface" "nic_vm02" {

  name = "nic-dev-eastus-audix-002"

  location = azurerm_resource_group.rg.location

  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {

    name = "internal"

    subnet_id = azurerm_subnet.subnet["StreamFlix"].id

    private_ip_address_allocation = "Dynamic"

  }

}
```

---

# 🤔 ध्यान दें

इस NIC में

```terraform
public_ip_address_id
```

नहीं दिया गया।

मतलब—

VM-02 पूरी तरह Private रहेगी।

---

# ✍️ Create Second Linux VM

```terraform
resource "azurerm_linux_virtual_machine" "vm02" {

  name = "vm-dev-eastus-audix-002"

  resource_group_name = azurerm_resource_group.rg.name

  location = azurerm_resource_group.rg.location

  size = "Standard_B2s"

  admin_username = "azureadmin"

  admin_password = "P@ssw0rd@123456"

  disable_password_authentication = false

  network_interface_ids = [

    azurerm_network_interface.nic_vm02.id

  ]

  os_disk {

    caching = "ReadWrite"

    storage_account_type = "Standard_LRS"

  }

  source_image_reference {

    publisher = "Canonical"

    offer = "0001-com-ubuntu-server-jammy"

    sku = "22_04-lts"

    version = "latest"

  }

}
```

---

# 🚀 Terraform Deploy

```bash
terraform fmt

terraform validate

terraform plan

terraform apply
```

---

# 🌐 Verify Azure Portal

```text
Resource Group
        │
        ▼
Virtual Machines
        │
        ├──────────────┐
        ▼              ▼
VM-01          VM-02
```

ध्यान दें—

```text
VM-01

Public IP ✔
```

```text
VM-02

Public IP ❌
```

---

# 🔐 Azure Bastion Login

Azure Portal

↓

Virtual Machine

↓

VM-02

↓

Connect

↓

Bastion

↓

Username

```text
azureadmin
```

↓

Password

```text
********
```

↓

Connect

अब Browser के अंदर Linux Terminal खुल जाएगा।

---

# 🔍 VM-01 की Private IP देखें

VM-01 पर Login करें

```bash
ip a
```

या

```bash
hostname -I
```

Example

```text
10.0.1.4
```

---

# 🔍 VM-02 की Private IP देखें

Azure Bastion से Login करें

```bash
hostname -I
```

Example

```text
10.0.2.4
```

---

# 🧪 Connectivity Test

VM-01 से

```bash
ping 10.0.2.4
```

Expected

```text
64 bytes from 10.0.2.4
```

---

# 🧠 Complete Enterprise Flow

```text
Developer Laptop
        │
        ▼
Azure Portal
        │
        ▼
Azure Bastion
        │
        ▼
VM-02 (Private)
        ▲
        │
Private Network
        │
        ▼
VM-01 (Public)
```

---

# 💡 Enterprise Best Practices

✅ Bastion के माध्यम से Private VM Access करें।

✅ Internal Servers पर Public IP न दें।

✅ Bastion के लिए Dedicated `AzureBastionSubnet` रखें।

✅ Production Environment में SSH Port Internet पर Open न रखें।

✅ Application Servers और Database Servers हमेशा Private रखें।

---

# 🎯 आपने क्या सीखा?

- ✅ Azure Bastion क्या है।
- ✅ Private VM क्यों बनाई जाती है।
- ✅ Public IP के बिना VM Deploy करना।
- ✅ Azure Bastion से Secure Login करना।
- ✅ VM-01 और VM-02 के बीच Private Network Communication।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `22-Create-Custom-Web-Page-and-Test-Deployment.md` | `README.md` | `24-Understanding-Azure-Bastion-and-Secure-Administration.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Deploy second private Linux VM using Azure Bastion"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v1.6.0 -m "Private VM deployment with Azure Bastion"

git push origin v1.6.0
```

---

> 🚀 **Project Status:** Enterprise Architecture Started • VM-01 (Public) + VM-02 (Private via Azure Bastion) Successfully Deployed

---

# 🔐 Understanding Azure Bastion and Secure Administration (Part 24)

> **Document:** `24-Understanding-Azure-Bastion-and-Secure-Administration.md`

![Azure](https://img.shields.io/badge/Azure-Bastion-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Security](https://img.shields.io/badge/Security-Zero%20Trust-success?style=for-the-badge)
![Terraform](https://img.shields.io/badge/Terraform-Landing%20Zone-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Enterprise](https://img.shields.io/badge/Enterprise-Secure%20Administration-orange?style=for-the-badge)

---

# 🔐 Understanding Azure Bastion and Secure Administration

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 11 - Secure Administration

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Azure Bastion वास्तव में कैसे काम करता है
- Microsoft इसे क्यों Recommend करता है
- Traditional SSH और Azure Bastion में अंतर
- Enterprise Companies Bastion क्यों Use करती हैं
- Azure Bastion की Architecture
- Bastion की Limitations और Best Practices

---

# 📚 अभी तक हमारा Infrastructure

```text
                    Internet
                        │
                        ▼
                  Azure Bastion
                        │
      ┌─────────────────┴─────────────────┐
      ▼                                   ▼
VM-01 (Public)                    VM-02 (Private)
Ubuntu + Nginx                    Ubuntu Server
```

अब हमारा Infrastructure Enterprise Architecture जैसा दिखने लगा है।

---

# 🤔 Azure Bastion क्या है?

Azure Bastion Microsoft की Fully Managed PaaS Service है।

यह Azure Portal के माध्यम से

- SSH
- RDP

Secure तरीके से उपलब्ध कराती है।

Server पर Public IP की आवश्यकता नहीं होती।

---

# 🌍 Traditional SSH Access

```text
Developer Laptop
        │
        ▼
Internet
        │
        ▼
Public IP
        │
Port 22 Open
        │
        ▼
Linux VM
```

Problems

❌ Public Exposure

❌ Port Scanning

❌ Brute Force Attack

❌ Credential Guessing

❌ Internet Dependency

---

# 🌍 Azure Bastion Architecture

```text
Developer Laptop
        │
HTTPS (443)
        │
        ▼
Azure Portal
        │
        ▼
Azure Bastion
        │
Private Azure Network
        │
        ▼
Linux VM
```

अब Port 22 Internet पर Open करने की आवश्यकता नहीं।

---

# 🧠 Packet Flow

```text
Browser
     │
HTTPS (443)
     │
Azure Portal
     │
Azure Bastion
     │
Private IP
     │
Linux VM
```

ध्यान दें—

SSH Traffic Internet पर नहीं जाता।

पूरा Communication Azure Backbone Network के अंदर रहता है।

---

# 🌍 Traditional vs Azure Bastion

| Traditional SSH | Azure Bastion |
|-----------------|---------------|
| Public IP Required | No Public IP |
| SSH Port Open | No SSH Port Exposure |
| Internet Attack Possible | Highly Secure |
| Manual SSH Client | Browser Based |
| More Risk | Enterprise Security |

---

# 🤔 AzureBastionSubnet क्यों बनाया था?

हमने पहले Networking में

```text
AzureBastionSubnet
```

नाम का Subnet बनाया था।

यही Subnet Azure Bastion Service के लिए Reserved होता है।

यदि इसका नाम Change करेंगे

```text
BastionSubnet

MySubnet

SecureSubnet
```

तो Azure Bastion Deploy नहीं होगा।

---

# 🤔 `/26` Subnet ही क्यों?

Microsoft Azure Bastion के लिए Minimum

```text
/26
```

Require करता है।

Example

```text
10.0.3.0/26
```

इससे Azure भविष्य में Bastion को Scale कर सकता है।

---

# 🏗️ Enterprise Landing Zone

```text
                    Internet
                        │
                        ▼
                 Azure Firewall
                        │
                        ▼
                 Azure Bastion
                        │
            ┌───────────┴───────────┐
            ▼                       ▼
      Management Subnet      Application Subnet
            │                       │
            ▼                       ▼
       Jump Server            Linux Servers
                                    │
                                    ▼
                             Database Servers
```

यही Architecture अधिकांश Enterprise Organizations Use करती हैं।

---

# 🔒 Bastion Security Benefits

✅ No Public IP on Production Servers

✅ No Port 22 Exposure

✅ Browser Based Access

✅ Azure Managed Service

✅ Secure Azure Backbone Network

✅ Centralized Administration

---

# 📌 Azure Portal Navigation

```text
Azure Portal

↓

Virtual Machine

↓

Connect

↓

Bastion

↓

Username

↓

Password / SSH Key

↓

Connect
```

---

# 🔍 Verify Private VM

VM-02 Login करें

```bash
hostname
```

```bash
hostname -I
```

```bash
ip a
```

```bash
whoami
```

---

# 🧪 Connectivity Test

VM-02 से VM-01

```bash
ping 10.0.1.4
```

VM-01 से VM-02

```bash
ping 10.0.2.4
```

दोनों Private Network के माध्यम से Communicate करेंगे।

---

# 💡 Azure Bastion Pricing

Azure Bastion एक Managed Service है।

इसलिए यह Virtual Machine की तरह नहीं बल्कि अलग Azure Service के रूप में Bill होती है।

Production Environment में इसका उपयोग Security के लिए किया जाता है।

---

# 🚀 Enterprise Best Practices

✅ Bastion के अलावा किसी भी Production Server पर Public IP न दें।

✅ SSH Port 22 Internet पर Open न रखें।

✅ Bastion के लिए Dedicated `AzureBastionSubnet` रखें।

✅ Administrator Access केवल Bastion के माध्यम से दें।

✅ Password की जगह SSH Keys या Azure AD Authentication Use करें।

---

# 🎯 आपने क्या सीखा?

- ✅ Azure Bastion क्या है।
- ✅ Traditional SSH और Bastion में अंतर।
- ✅ Azure Backbone Network क्या है।
- ✅ AzureBastionSubnet क्यों जरूरी है।
- ✅ `/26` Subnet क्यों Required है।
- ✅ Enterprise Companies Bastion क्यों Use करती हैं।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `23-Create-Second-VM-Using-Azure-Bastion.md` | `README.md` | `25-Create-Azure-Load-Balancer.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Document Azure Bastion architecture and secure administration"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v1.7.0 -m "Azure Bastion architecture documented"

git push origin v1.7.0
```

---

> 🚀 **Project Status:** Secure Administration Completed • Next Step: Create Azure Load Balancer for High Availability

---


# 🔍 Code Deep Explanation

अब हम इस Code को Line by Line समझेंगे।

---

# 📄 Resource 1 - Network Interface (NIC)

```terraform
resource "azurerm_network_interface" "nic_vm02" {

  name = "nic-dev-eastus-audix-002"

  location = azurerm_resource_group.rg.location

  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {

    name = "internal"

    subnet_id = azurerm_subnet.subnet["StreamFlix"].id

    private_ip_address_allocation = "Dynamic"

  }

}
```

---

# 🧠 Line by Line Explanation

## Resource Type

```terraform
resource "azurerm_network_interface"
```

यह Azure में एक नया **Network Interface (NIC)** Create करता है।

Virtual Machine सीधे Network से Connect नहीं होती।

पहले NIC बनती है, फिर उसी NIC के माध्यम से VM Network से जुड़ती है।

---

## Local Resource Name

```terraform
nic_vm02
```

Terraform के अंदर इस Resource को Refer करने के लिए Local Name है।

बाद में VM इसी Resource को Use करेगी।

Example

```terraform
azurerm_network_interface.nic_vm02.id
```

---

## Name

```terraform
name = "nic-dev-eastus-audix-002"
```

Azure Portal में दिखाई देने वाला Resource Name।

हमारी Naming Convention

```text
nic
↓

Environment

↓

Region

↓

Company

↓

Sequence Number
```

Example

```text
nic-dev-eastus-audix-002
```

---

## Location

```terraform
location =
azurerm_resource_group.rg.location
```

NIC उसी Azure Region में Create होगी जहाँ Resource Group बनी है।

Terraform Automatically Location ले लेता है।

---

## Resource Group

```terraform
resource_group_name =
azurerm_resource_group.rg.name
```

NIC किस Resource Group में Create होगी।

---

## IP Configuration

```terraform
ip_configuration {
```

एक NIC में Multiple IP Configurations हो सकती हैं।

हम अभी केवल एक Configuration बना रहे हैं।

---

## Configuration Name

```terraform
name = "internal"
```

यह केवल NIC की Internal Configuration का नाम है।

Azure Portal में दिखाई देगा।

---

## Subnet

```terraform
subnet_id =
azurerm_subnet.subnet["StreamFlix"].id
```

NIC किस Subnet में Deploy होगी।

इसका अर्थ

```text
VM-02

↓

NIC

↓

StreamFlix Subnet
```

अब VM-02 इसी Network में चलेगी।

---

## Private IP Allocation

```terraform
private_ip_address_allocation =
"Dynamic"
```

Azure Automatically Private IP Assign करेगा।

Example

```text
10.0.2.4
```

यदि

```terraform
Static
```

देते,

तो हमें स्वयं IP लिखनी पड़ती।

---

# 🤔 Public IP कहाँ है?

ध्यान से देखें

```terraform
public_ip_address_id
```

यह Line Code में नहीं है।

मतलब

NIC के साथ कोई Public IP Attached नहीं होगी।

---

# 🌍 इसका Result

```text
Internet

❌

VM-02

↓

Private Network

↓

Azure Bastion

↓

SSH Access
```

VM पूरी तरह Private रहेगी।

यही Enterprise Security Model है।

---

# 📄 Resource 2 - Linux Virtual Machine

```terraform
resource "azurerm_linux_virtual_machine" "vm02" {

  name = "vm-dev-eastus-audix-002"

  resource_group_name = azurerm_resource_group.rg.name

  location = azurerm_resource_group.rg.location

  size = "Standard_B2s"

  admin_username = "azureadmin"

  admin_password = "P@ssw0rd@123456"

  disable_password_authentication = false

  network_interface_ids = [

    azurerm_network_interface.nic_vm02.id

  ]

  os_disk {

    caching = "ReadWrite"

    storage_account_type = "Standard_LRS"

  }

  source_image_reference {

    publisher = "Canonical"

    offer = "0001-com-ubuntu-server-jammy"

    sku = "22_04-lts"

    version = "latest"

  }

}
```

---

# 🧠 Line by Line Explanation

## Resource Type

```terraform
azurerm_linux_virtual_machine
```

Azure में Linux VM Create करता है।

---

## Local Name

```terraform
vm02
```

Terraform Reference Name

Example

```terraform
azurerm_linux_virtual_machine.vm02.id
```

---

## VM Name

```terraform
name =
"vm-dev-eastus-audix-002"
```

Azure Portal में दिखाई देने वाला Virtual Machine Name।

---

## Resource Group

```terraform
resource_group_name
```

VM किस Resource Group में बनेगी।

---

## Location

```terraform
location
```

VM किस Azure Region में बनेगी।

---

## VM Size

```terraform
size = "Standard_B2s"
```

यह VM की Hardware Configuration है।

इसमें Azure Allocate करेगा—

- CPU
- RAM
- Performance

Production में Requirement के अनुसार Size Select किया जाता है।

---

## Admin Username

```terraform
admin_username =
"azureadmin"
```

Linux Login User

SSH करते समय यही Username Use होगा।

---

## Admin Password

```terraform
admin_password
```

Linux Login Password।

> Production Environment में Password की जगह SSH Key Authentication Recommended है।

---

## Password Authentication

```terraform
disable_password_authentication = false
```

मतलब

Password Login Allowed रहेगा।

यदि

```terraform
true
```

कर दें,

तो केवल SSH Key से Login होगा।

---

## Network Interface

```terraform
network_interface_ids = [

azurerm_network_interface.nic_vm02.id

]
```

यह VM को Network से Connect करता है।

VM बिना NIC के Create नहीं हो सकती।

Relationship

```text
Virtual Machine

↓

NIC

↓

Subnet

↓

Virtual Network
```

---

## OS Disk

```terraform
os_disk
```

Operating System कहाँ Store होगा।

---

## Storage Type

```terraform
Standard_LRS
```

Azure Managed Disk

Production में अक्सर

```text
Premium SSD

Premium SSD v2
```

Use किए जाते हैं।

---

## Source Image

```terraform
source_image_reference
```

Azure Marketplace से Operating System Download होगा।

---

## Publisher

```terraform
Canonical
```

Ubuntu Linux का Official Publisher

---

## Offer

```terraform
0001-com-ubuntu-server-jammy
```

Ubuntu Server Distribution

---

## SKU

```terraform
22_04-lts
```

Ubuntu 22.04 Long Term Support Version

Production में LTS Version ही Prefer की जाती है।

---

## Version

```terraform
latest
```

हमेशा Latest Stable Image Deploy होगी।

---

# 🧠 Resource Dependency

Terraform यह Dependency Automatically समझ लेता है।

```text
Resource Group
        │
        ▼
Virtual Network
        │
        ▼
Subnet
        │
        ▼
NIC
        │
        ▼
Linux Virtual Machine
```

इसलिए `depends_on` लिखने की आवश्यकता नहीं पड़ती।

---

# 🌍 Final Architecture

```text
                    Internet
                        │
                        ▼
                 Azure Bastion
                        │
        ┌───────────────┴───────────────┐
        ▼                               ▼
VM-01 (Public)                  VM-02 (Private)
      │                               │
      ▼                               ▼
Public IP                     No Public IP
      │                               │
      └──────────────┬────────────────┘
                     ▼
              Virtual Network
```

---

# 💡 Enterprise Learning

इस Chapter का सबसे महत्वपूर्ण Concept यह है—

✅ VM कभी सीधे Network से Connect नहीं होती।

✅ पहले NIC Create होती है।

✅ NIC Subnet से Connect होती है।

✅ Public IP NIC पर Attach होती है, VM पर नहीं।

✅ Public IP हटाते ही VM Internet से Direct Accessible नहीं रहती।

✅ Azure Bastion Private VM को Secure तरीके से Manage करने की सुविधा देता है।

---

# 🚀 Deploy Multiple Applications on VM-02 using Git Clone and Nginx (Part 25)

> **Document:** `25-Deploy-Multiple-Applications-on-VM02.md`

![GitHub](https://img.shields.io/badge/GitHub-Git%20Clone-black?style=for-the-badge&logo=github)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Nginx](https://img.shields.io/badge/Nginx-Virtual%20Host-009639?style=for-the-badge&logo=nginx&logoColor=white)
![DevOps](https://img.shields.io/badge/DevOps-Deployment-success?style=for-the-badge)

---

# 🚀 Deploy Multiple Applications on VM-02

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 12 - Application Deployment

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- VM-02 पर Git Install करना
- GitHub Repository Clone करना
- Multiple Applications को Host करना
- Production Folder Structure बनाना
- Nginx Virtual Host की तैयारी करना

---

# 📚 अभी तक हमारा Architecture

```text
                    Internet
                        │
                        ▼
                 Azure Bastion
                        │
        ┌───────────────┴────────────────┐
        ▼                                ▼
VM-01 (Public)                    VM-02 (Private)
Nginx Running                   Ubuntu Server
```

अब VM-02 को Application Server बनाएंगे।

---

# 🌍 Enterprise Deployment Flow

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
Ubuntu Server
      │
      ▼
Nginx
      │
      ▼
Multiple Websites
```

---

# 🤔 Real World Scenario

Production में Developers Code Push करते हैं।

```text
GitHub

↓

Application Source Code

↓

Linux Server

↓

Nginx

↓

Users
```

इसी Process को Deployment कहते हैं।

---

# 📦 Step 1 - Login into VM-02

Azure Portal

↓

Virtual Machine

↓

VM-02

↓

Connect

↓

Bastion

---

# 📦 Step 2 - Update Packages

```bash
sudo apt update
```

---

# 📦 Step 3 - Install Git

```bash
sudo apt install git -y
```

Verify

```bash
git --version
```

---

# 📦 Step 4 - Install Nginx

```bash
sudo apt install nginx -y

sudo systemctl enable nginx

sudo systemctl start nginx
```

---

# 📦 Step 5 - Go Home Directory

```bash
cd ~

pwd
```

---

# 📦 Step 6 - Clone GitHub Repository

```bash
git clone https://github.com/devopsinsiders/StreamFlix.git
```

---

# 📦 Verify

```bash
ls
```

Expected

```text
StreamFlix
```

---

# 📂 Enter Repository

```bash
cd StreamFlix
```

---

# 📂 Verify Files

```bash
ls -la
```

---

# 🌍 Production Folder Structure

हम तीन अलग-अलग Websites Host करेंगे।

```text
/var/www/
        │
        ├─────────────── StreamFlix
        │
        ├─────────────── HopeFoundation
        │
        └─────────────── SaveTrees
```

---

# 📂 Create Website Directories

```bash
sudo mkdir -p /var/www/StreamFlix

sudo mkdir -p /var/www/HopeFoundation

sudo mkdir -p /var/www/SaveTrees
```

---

# 📂 Verify

```bash
tree /var/www
```

Expected

```text
/var/www

├── StreamFlix

├── HopeFoundation

└── SaveTrees
```

---

# 🌍 Multiple Website Architecture

```text
                     Nginx
                       │
        ┌──────────────┼──────────────┐
        ▼              ▼              ▼
   StreamFlix    HopeFoundation    SaveTrees
```

---

# 🤔 Multiple Websites कैसे चलती हैं?

Production में

एक Linux Server

↓

एक Nginx

↓

कई Websites

चल सकती हैं।

हर Website का अपना Folder होता है।

बाद में Nginx Decide करता है

कौन सा Domain

किस Folder को Open करेगा।

---

# 🚀 अगले Chapter में

हम तीनों Websites बनाएंगे—

🎬 **StreamFlix**

Netflix Style Demo Website

---

❤️ **Hope Foundation**

Orphan Children Education

Books

Clothes

Medicines

Food

Volunteer Registration

---

🌳 **Save Trees**

Plantation Awareness

Tree Importance

Join Plantation Drive

Volunteer Registration

---

# 💡 Enterprise Best Practices

✅ Source Code हमेशा GitHub से Pull करें।

✅ Applications को अलग-अलग Directories में रखें।

✅ Production में Git Clone Direct Server पर किया जाता है।

✅ हर Website का अपना Root Folder रखें।

---

# 🎯 आपने क्या सीखा?

- ✅ Git Install करना।
- ✅ GitHub Repository Clone करना।
- ✅ Production Folder Structure।
- ✅ Multiple Website Hosting का Concept।
- ✅ Nginx द्वारा Multiple Applications Host करने की तैयारी।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `24-Understanding-Azure-Bastion-and-Secure-Administration.md` | `README.md` | `26-Host-Multiple-Websites-Using-Nginx.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Prepare VM02 for multiple application hosting"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v1.8.0 -m "VM02 prepared for multi-site hosting"

git push origin v1.8.0
```

---

> 🚀 **Project Status:** VM-02 Ready for Multi-Application Hosting • Next Step: Deploy Three Websites using Nginx

---

# 🌐 Host Multiple Websites Using Nginx (Part 26)

> **Document:** `26-Host-Multiple-Websites-Using-Nginx.md`

![Nginx](https://img.shields.io/badge/Nginx-Virtual%20Hosts-009639?style=for-the-badge&logo=nginx&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![GitHub](https://img.shields.io/badge/GitHub-Deployment-black?style=for-the-badge&logo=github)
![DevOps](https://img.shields.io/badge/DevOps-Multi%20Application-success?style=for-the-badge)

---

# 🌐 Host Multiple Websites Using Nginx

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 12 - Multi Application Hosting

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- StreamFlix Website Deploy करना
- Hope Foundation Website बनाना
- Save Trees Website बनाना
- Nginx Virtual Hosts Configure करना
- एक ही Server पर Multiple Websites Host करना

---

# 📚 Final Architecture

```text
                         Internet
                             │
                             ▼
                          Nginx
                             │
        ┌────────────────────┼────────────────────┐
        ▼                    ▼                    ▼
   StreamFlix         Hope Foundation        Save Trees
```

---

# 🌍 Production Folder Structure

```text
/var/www
      │
      ├──────────── StreamFlix
      │
      ├──────────── HopeFoundation
      │
      └──────────── SaveTrees
```

---

# 📦 Step 1 - Deploy StreamFlix

Repository Copy करें

```bash
sudo cp -r ~/StreamFlix/* /var/www/StreamFlix/
```

Verify

```bash
ls /var/www/StreamFlix
```

---

# ❤️ Step 2 - Create Hope Foundation Website

```bash
sudo nano /var/www/HopeFoundation/index.html
```

Paste

```html
<!DOCTYPE html>

<html>

<head>

<title>Hope Foundation</title>

<style>

body{

font-family:Arial;

background:#f4f8ff;

text-align:center;

padding:50px;

}

h1{

color:#1e3a8a;

}

.card{

width:700px;

margin:auto;

padding:30px;

background:white;

border-radius:10px;

box-shadow:0px 0px 15px lightgray;

}

li{

text-align:left;

font-size:18px;

padding:8px;

}

button{

background:#2563eb;

color:white;

padding:12px 25px;

border:none;

font-size:18px;

border-radius:8px;

cursor:pointer;

}

</style>

</head>

<body>

<div class="card">

<h1>Hope Foundation</h1>

<h3>Education for Every Orphan Child</h3>

<p>

We don't ask for money.

We believe in Humanity.

</p>

<h2>You Can Donate</h2>

<ul>

<li>📚 Books</li>

<li>👕 Clothes</li>

<li>🍛 Food</li>

<li>💊 Medicines</li>

<li>🎒 School Bags</li>

<li>✏️ Stationery</li>

</ul>

<h2>Become a Volunteer</h2>

<p>

Join us every weekend and help children build a better future.

</p>

<button>Join as Volunteer</button>

</div>

</body>

</html>
```

Save

```
CTRL + O

ENTER

CTRL + X
```

---

# 🌳 Step 3 - Create Save Trees Website

```bash
sudo nano /var/www/SaveTrees/index.html
```

Paste

```html
<!DOCTYPE html>

<html>

<head>

<title>Save Trees</title>

<style>

body{

font-family:Arial;

background:#e8fff0;

text-align:center;

padding:50px;

}

.box{

width:700px;

margin:auto;

background:white;

padding:30px;

border-radius:10px;

box-shadow:0px 0px 15px gray;

}

h1{

color:green;

}

button{

background:green;

color:white;

padding:12px 25px;

border:none;

font-size:18px;

border-radius:8px;

cursor:pointer;

}

</style>

</head>

<body>

<div class="box">

<h1>🌳 Save Trees</h1>

<h2>Let's Plant Trees Together</h2>

<p>

Trees give us Oxygen,

Clean Air,

Rain,

Life,

and a Better Future.

</p>

<h2>Join Our Plantation Drive</h2>

<p>

Every Sunday Morning

Community Plantation Program

</p>

<button>Become a Volunteer</button>

</div>

</body>

</html>
```

Save

```
CTRL + O

ENTER

CTRL + X
```

---

# 📂 Nginx Configuration Directory

```bash
cd /etc/nginx/sites-available
```

---

# 🌐 StreamFlix Configuration

```bash
sudo nano streamflix
```

```nginx
server {

listen 80;

server_name streamflix.local;

root /var/www/StreamFlix;

index index.html;

}
```

---

# ❤️ Hope Foundation Configuration

```bash
sudo nano hopefoundation
```

```nginx
server {

listen 80;

server_name hope.local;

root /var/www/HopeFoundation;

index index.html;

}
```

---

# 🌳 Save Trees Configuration

```bash
sudo nano savetrees
```

```nginx
server {

listen 80;

server_name trees.local;

root /var/www/SaveTrees;

index index.html;

}
```

---

# 🔗 Enable Sites

```bash
sudo ln -s /etc/nginx/sites-available/streamflix /etc/nginx/sites-enabled/

sudo ln -s /etc/nginx/sites-available/hopefoundation /etc/nginx/sites-enabled/

sudo ln -s /etc/nginx/sites-available/savetrees /etc/nginx/sites-enabled/
```

---

# 🧪 Test Configuration

```bash
sudo nginx -t
```

Expected

```text
syntax is ok

test is successful
```

---

# 🔄 Restart Nginx

```bash
sudo systemctl restart nginx
```

---

# 🌍 Final Architecture

```text
                    Internet
                        │
                        ▼
                     Nginx
                        │
        ┌───────────────┼────────────────┐
        ▼               ▼                ▼
   StreamFlix     Hope Foundation     Save Trees
        │               │                │
        ▼               ▼                ▼
 /var/www/        /var/www/         /var/www/
 StreamFlix     HopeFoundation      SaveTrees
```

---

# 🧪 Verification

Check Service

```bash
sudo systemctl status nginx
```

Check Port

```bash
sudo ss -tulnp | grep :80
```

Test HTML

```bash
curl localhost
```

---

# 💡 Enterprise Best Practices

✅ One Application = One Folder

✅ One Website = One Virtual Host

✅ GitHub Repository Separate रखें

✅ Production में Domain Name Use करें

✅ SSL Certificate Configure करें

✅ Application Logs Monitor करें

---

# 🎯 आपने क्या सीखा?

- ✅ GitHub Project Deploy करना।
- ✅ Multiple Websites बनाना।
- ✅ NGO Landing Page तैयार करना।
- ✅ Save Trees Awareness Website बनाना।
- ✅ Nginx Virtual Hosts Configure करना।
- ✅ एक Linux Server पर Multiple Applications Host करना।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `25-Deploy-Multiple-Applications-on-VM02.md` | `README.md` | `27-Understanding-DNS-and-Domain-Mapping.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Deploy multiple websites using Nginx virtual hosts"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v1.9.0 -m "Multi-site hosting completed"

git push origin v1.9.0
```

---

> 🚀 **Project Status:** Three Websites Successfully Hosted on a Single Ubuntu Server using Nginx Virtual Hosts • Next Step: Understanding DNS and Domain Mapping

---

# 🌐 Understanding DNS and Domain Mapping using Cloudflare (Part 27)

> **Document:** `27-Understanding-DNS-and-Domain-Mapping.md`

![Cloudflare](https://img.shields.io/badge/Cloudflare-DNS-F38020?style=for-the-badge&logo=cloudflare&logoColor=white)
![DNS](https://img.shields.io/badge/DNS-Domain%20Mapping-blue?style=for-the-badge)
![Nginx](https://img.shields.io/badge/Nginx-Virtual%20Hosts-success?style=for-the-badge&logo=nginx)
![Azure](https://img.shields.io/badge/Azure-Landing%20Zone-0078D4?style=for-the-badge&logo=microsoftazure)

---

# 🌐 Understanding DNS and Domain Mapping using Cloudflare

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** 13 - DNS & Application Publishing

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- DNS क्या होता है?
- Domain कैसे काम करता है?
- Cloudflare Account Login
- Domain Add करना
- Azure VM को Domain से Connect करना
- DNS Records Create करना
- Multiple Websites Publish करना
- Browser से Domain Access करना

---

# 📚 अभी तक हमारा Architecture

```text
                    Internet
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
        ┌───────────────┼────────────────┐
        ▼               ▼                ▼
   StreamFlix     Hope Foundation     Save Trees
```

अभी Websites केवल Public IP से Open हो रही हैं।

अब इन्हें Domain Name से Access करेंगे।

---

# 🤔 DNS क्या होता है?

DNS का पूरा नाम है

> **Domain Name System**

यह Internet का Phone Book है।

---

# 🌍 Example

हम Browser में

```text
google.com
```

लिखते हैं।

Browser वास्तव में

```text
142.xx.xx.xx
```

IP Address पर जाता है।

DNS यही Translation करता है।

---

# 🧠 Without DNS

```text
User

↓

20.198.125.10
```

IP याद रखना मुश्किल है।

---

# 🧠 With DNS

```text
User

↓

streamflix.yourdomain.com
```

याद रखना आसान है।

---

# 🌍 DNS Flow

```text
User Browser
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
Website
```

---

# 📌 हमारी Websites

मान लीजिए हमारा Domain है

```text
yourdomain.com
```

हम बनाएंगे

```text
streamflix.yourdomain.com

hope.yourdomain.com

trees.yourdomain.com
```

---

# ☁️ Step 1 - Login Cloudflare

Open Browser

```text
https://dash.cloudflare.com
```

Login करें।

---

# 🌍 Cloudflare Dashboard

```text
Dashboard

↓

Websites

↓

Add a Site
```

---

# 🌍 Step 2 - Add Domain

Example

```text
yourdomain.com
```

Click

```text
Continue
```

---

# 🌍 Step 3 - Select Plan

Choose

```text
Free Plan
```

Click

```text
Continue
```

---

# 🌍 Step 4 - Review DNS Records

यदि पहले से Domain Use हो रहा है

Cloudflare Existing Records Import कर देगा।

यदि नया Domain है

Records बाद में बनाएंगे।

---

# 🌍 Step 5 - Change Name Servers

Cloudflare आपको देगा

Example

```text
john.ns.cloudflare.com

sara.ns.cloudflare.com
```

अब

अपने Domain Registrar

(GoDaddy / Namecheap / Hostinger आदि)

में Login करें।

Current Name Servers Replace करें।

Cloudflare वाले Name Servers Save करें।

---

# 🌍 Wait for Activation

```text
Pending

↓

Active
```

इसमें कुछ मिनट से लेकर 24 घंटे तक लग सकते हैं।

---

# 🌍 Azure Public IP

Azure Portal

↓

Virtual Machine

↓

VM-01

↓

Networking

↓

Public IP

Example

```text
20.198.125.10
```

---

# 🌍 Create DNS Records

Cloudflare

↓

DNS

↓

Records

↓

Add Record

---

## Record 1

```text
Type

A
```

Name

```text
streamflix
```

IPv4

```text
20.198.125.10
```

Proxy

```text
ON
```

Save

---

## Record 2

```text
Type

A
```

Name

```text
hope
```

IPv4

```text
20.198.125.10
```

Proxy

```text
ON
```

---

## Record 3

```text
Type

A
```

Name

```text
trees
```

IPv4

```text
20.198.125.10
```

Proxy

```text
ON
```

---

# 🌍 Final DNS Records

```text
streamflix.yourdomain.com

↓

20.198.125.10

---------------------

hope.yourdomain.com

↓

20.198.125.10

---------------------

trees.yourdomain.com

↓

20.198.125.10
```

---

# 🌍 Nginx Server Names

अब VM पर Login करें।

---

## StreamFlix

```text
server_name streamflix.yourdomain.com;
```

---

## Hope Foundation

```text
server_name hope.yourdomain.com;
```

---

## Save Trees

```text
server_name trees.yourdomain.com;
```

---

Restart Nginx

```bash
sudo nginx -t

sudo systemctl restart nginx
```

---

# 🧪 Test DNS

Linux

```bash
ping streamflix.yourdomain.com
```

---

Windows

```powershell
nslookup streamflix.yourdomain.com
```

---

Verify

```text
20.198.125.10
```

---

# 🌍 Final Architecture

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
                       Nginx
                         │
      ┌──────────────────┼──────────────────┐
      ▼                  ▼                  ▼
streamflix          hope             trees
.yourdomain.com .yourdomain.com .yourdomain.com
```

---

# 🛡️ Cloudflare Benefits

✅ Free DNS

✅ Fast DNS Resolution

✅ DDoS Protection

✅ SSL Support

✅ CDN

✅ DNS Analytics

✅ Security

---

# 💡 Enterprise Best Practices

✅ हमेशा Domain को Cloudflare पर Manage करें।

✅ सभी Websites के लिए अलग Subdomain रखें।

✅ DNS Records Proper Naming Convention से बनाएं।

✅ DNS Propagation Verify करें।

✅ Production में SSL Enable करें।

---

# 🎯 आपने क्या सीखा?

- ✅ DNS क्या है।
- ✅ Cloudflare क्या है।
- ✅ Domain Add करना।
- ✅ Name Servers Change करना।
- ✅ Azure VM को Domain से Connect करना।
- ✅ Multiple Websites Publish करना।
- ✅ DNS Testing करना।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `26-Host-Multiple-Websites-Using-Nginx.md` | `README.md` | `28-Enable-HTTPS-Using-Cloudflare-SSL.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Configure Cloudflare DNS and domain mapping"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v2.0.0 -m "Cloudflare DNS integration completed"

git push origin v2.0.0
```

---

> 🚀 **Project Status:** Applications Published Using Cloudflare DNS • Next Step: Enable Free HTTPS using Cloudflare SSL

---

# 🌍 How Does a Website Open? Complete Request Flow (Part 27.1)

> **Document:** `27.1-How-Website-Actually-Works.md`

![Networking](https://img.shields.io/badge/Networking-Request%20Flow-blue?style=for-the-badge)
![Cloudflare](https://img.shields.io/badge/Cloudflare-DNS-orange?style=for-the-badge&logo=cloudflare)
![Nginx](https://img.shields.io/badge/Nginx-Reverse%20Proxy-green?style=for-the-badge&logo=nginx)
![Azure](https://img.shields.io/badge/Azure-Landing%20Zone-0078D4?style=for-the-badge&logo=microsoftazure)

---

# 🌍 How Does a Website Actually Open?

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** DNS & Request Flow Deep Dive

---

# 🎯 Objective

इस Chapter में हम समझेंगे—

- Website आखिर Open कैसे होती है?
- Browser किससे बात करता है?
- DNS कहाँ आता है?
- Cloudflare क्या करता है?
- Nginx Website कैसे चुनता है?
- हमने Port 80 कहीं Define नहीं किया, फिर Website कैसे Open हुई?
- पूरा Request Flow End-to-End

---

# 🤔 हमारा सबसे बड़ा Question

जब हमने Browser में लिखा

```text
http://streamflix.yourdomain.com
```

तो आखिर

```text
Website कैसे खुल गई?
```

और सबसे महत्वपूर्ण बात...

```text
हमने Browser में

:80

नहीं लिखा।
```

फिर Port 80 Use कैसे हो गया?

---

# 🧠 इसका उत्तर Internet Protocol में छुपा है।

---

# 🌍 Complete Picture

```text
User
 │
 ▼
Browser
 │
 ▼
Cloudflare DNS
 │
 ▼
Azure Public IP
 │
 ▼
Network Security Group
 │
 ▼
Ubuntu VM
 │
 ▼
Nginx
 │
 ▼
Website Folder
 │
 ▼
index.html
```

यही पूरी Journey है।

---

# 🌍 Step 1

User Browser में लिखता है

```text
http://streamflix.yourdomain.com
```

Browser को केवल Domain पता है।

IP Address नहीं।

---

# 🌍 Step 2

Browser पूछता है

```text
DNS

बताओ

streamflix.yourdomain.com

का IP क्या है?
```

---

# 🌍 Step 3

Cloudflare Reply करता है

```text
streamflix.yourdomain.com

↓

20.198.125.10
```

अब Browser को Server मिल गया।

---

# 🌍 Step 4

Browser अब Request भेजता है

```text
Destination

20.198.125.10
```

लेकिन...

अभी भी Question बाकी है।

---

# ❓Port कहाँ से आया?

Browser ने

```text
http://
```

देखा।

Internet Standards के अनुसार

```text
HTTP

=

Port 80
```

इसलिए Browser Automatically

```text
20.198.125.10:80
```

पर Request भेज देता है।

---

# 🌍 यदि HTTPS होता

```text
https://
```

Browser Automatically

```text
443
```

Use करता।

---

# 📌 Default Ports

| Protocol | Default Port |
|----------|-------------:|
| HTTP | 80 |
| HTTPS | 443 |
| SSH | 22 |
| FTP | 21 |
| DNS | 53 |
| SMTP | 25 |

---

# 🌍 इसलिए हमने Port नहीं लिखा

हमने लिखा

```text
http://streamflix.yourdomain.com
```

लेकिन Browser ने समझ लिया

```text
streamflix.yourdomain.com:80
```

---

# 🌍 Step 5

Request Azure पहुँचती है

```text
20.198.125.10

↓

Port 80
```

---

# 🌍 Step 6

Network Security Group

सबसे पहले Check करता है।

```text
Destination Port

80
```

---

# 🤔 यदि NSG में Rule नहीं होता?

```text
Inbound

Port 80

Deny
```

तो

Website कभी Open नहीं होती।

---

# 🌍 हमारा NSG

```text
Allow

TCP

Port 80
```

इसलिए Request आगे चली गई।

---

# 🌍 Step 7

अब Request पहुँचती है

Ubuntu Linux VM पर।

```text
20.198.125.10

↓

Ubuntu
```

---

# 🌍 Step 8

Ubuntu देखता है

```text
Port 80
```

कौन सुन रहा है?

---

# 🔍 Check करें

```bash
sudo ss -tulnp
```

Example

```text
tcp

LISTEN

0.0.0.0:80

nginx
```

मतलब

Port 80 पर

Nginx Listen कर रहा है।

---

# 🌍 Step 9

अब Request Nginx को मिलती है।

Nginx सबसे पहले देखता है

```text
Host Header
```

Browser ने भेजा

```text
Host:

streamflix.yourdomain.com
```

---

# 🌍 Step 10

Nginx अपनी Configuration पढ़ता है

```nginx
server {

listen 80;

server_name streamflix.yourdomain.com;

root /var/www/StreamFlix;

}
```

अब उसे समझ आ गया

```text
यह StreamFlix Website है।
```

---

# 🌍 यदि User लिखे

```text
hope.yourdomain.com
```

तो

Nginx यह Configuration पढ़ेगा

```nginx
server_name hope.yourdomain.com;

root /var/www/HopeFoundation;
```

और दूसरी Website Open करेगा।

---

# 🌍 यदि User लिखे

```text
trees.yourdomain.com
```

तो

```nginx
server_name trees.yourdomain.com;

root /var/www/SaveTrees;
```

Open होगा।

---

# 🌍 Step 11

अब Nginx जाता है

```text
/var/www/StreamFlix
```

---

# 🌍 Step 12

वहाँ Search करता है

```text
index.html
```

---

# 🌍 Step 13

HTML File Browser को भेज दी जाती है।

```text
index.html

↓

Browser

↓

Website दिखाई देती है।
```

---

# 🎯 Complete Request Flow

```text
User
 │
 │ 1. Type URL
 ▼
Browser
 │
 │ 2. DNS Query
 ▼
Cloudflare DNS
 │
 │ 3. Public IP
 ▼
Azure Public IP
 │
 │ 4. Port 80
 ▼
Network Security Group
 │
 │ 5. Allow Rule
 ▼
Ubuntu Linux VM
 │
 │ 6. Port 80
 ▼
Nginx
 │
 │ 7. server_name Match
 ▼
Website Folder
 │
 │ 8. index.html
 ▼
Browser
 │
 ▼
Website Open 🎉
```

---

# 🧠 अब सबसे महत्वपूर्ण Concept

Website कभी भी सीधे नहीं खुलती।

हर Request को यह Journey करनी पड़ती है।

```text
Domain

↓

DNS

↓

Public IP

↓

NSG

↓

Linux

↓

Port

↓

Nginx

↓

Website Folder

↓

index.html

↓

Browser
```

---

# 💡 Interview Question

### Q. हमने Browser में Port 80 नहीं लिखा, फिर भी Website कैसे Open हुई?

**Answer**

HTTP Protocol का Default Port **80** होता है।

Browser HTTP देखते ही Automatically Port 80 Use करता है।

इसी तरह HTTPS का Default Port **443** होता है।

---

# 🎯 आपने क्या सीखा?

✅ Domain से IP कैसे मिलता है।

✅ Cloudflare DNS क्या करता है।

✅ Browser Default Port कैसे चुनता है।

✅ NSG Request को कैसे Allow करता है।

✅ Linux Port 80 किस Process द्वारा Listen किया जाता है।

✅ Nginx `server_name` के आधार पर Website कैसे चुनता है।

✅ `index.html` Browser तक कैसे पहुँचती है।

---

> 🚀 **Project Status:** अब आप Website Open होने का पूरा End-to-End Request Flow समझ चुके हैं। अगले Chapter में HTTPS, SSL और Cloudflare Proxy का Deep Dive करेंगे।

---

# 🌐 How Multiple Websites Run on a Single Virtual Machine? (Part 27.2)

> **Document:** `27.2-Hosting-Multiple-Websites-on-a-Single-VM.md`

![Nginx](https://img.shields.io/badge/Nginx-Virtual%20Hosts-009639?style=for-the-badge&logo=nginx&logoColor=white)
![Cloudflare](https://img.shields.io/badge/Cloudflare-DNS-F38020?style=for-the-badge&logo=cloudflare&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-Virtual%20Machine-0078D4?style=for-the-badge&logo=microsoftazure)
![Linux](https://img.shields.io/badge/Linux-Web%20Hosting-FCC624?style=for-the-badge&logo=linux&logoColor=black)

---

# 🌐 How Multiple Websites Run on a Single Virtual Machine?

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** Multi Website Hosting Deep Dive

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- एक VM पर Multiple Websites कैसे चलती हैं?
- सभी Websites एक ही Public IP कैसे Use करती हैं?
- Browser सही Website कैसे Open करता है?
- Cloudflare, DNS और Nginx मिलकर कैसे काम करते हैं?
- Virtual Host क्या होता है?

---

# 🤔 हमारा Question

हमारे पास केवल

```text
1 Virtual Machine
```

और

```text
1 Public IP
```

है।

लेकिन Websites हैं

```text
StreamFlix

Hope Foundation

Save Trees
```

तो Browser को कैसे पता चलता है कि कौन सी Website खोलनी है?

---

# 📚 हमारी Architecture

```text
                  Azure VM-02

             Public IP : 20.198.125.10
                     │
                     ▼
                  Ubuntu Linux
                     │
                     ▼
                    Nginx
                     │
     ┌───────────────┼────────────────┐
     ▼               ▼                ▼
 StreamFlix     Hope Foundation    Save Trees
```

---

# 🌍 हमारी Websites

```text
streamflix.yourdomain.com

hope.yourdomain.com

trees.yourdomain.com
```

ध्यान दें...

तीनों Domains

एक ही Public IP पर Point कर रहे हैं।

---

# 🌍 Cloudflare DNS

Cloudflare में हमने Records बनाए थे।

```text
streamflix

↓

20.198.125.10
```

```text
hope

↓

20.198.125.10
```

```text
trees

↓

20.198.125.10
```

---

# 🤔 क्या तीन अलग-अलग Public IP हैं?

❌ नहीं

हमारी तीनों Websites

एक ही Public IP Use कर रही हैं।

---

# 🌍 DNS Records

```text
streamflix.yourdomain.com

↓

20.198.125.10

---------------------

hope.yourdomain.com

↓

20.198.125.10

---------------------

trees.yourdomain.com

↓

20.198.125.10
```

---

# 🌍 Request Flow

User Browser

↓

DNS Query

↓

Cloudflare

↓

20.198.125.10

↓

Ubuntu VM

↓

Nginx

↓

Correct Website

---

# 🎯 लेकिन...

तीनों Requests

एक ही Server पर आ रही हैं।

फिर Nginx कैसे Decide करता है?

---

# 🧠 Browser एक Secret भेजता है

जब Browser Request भेजता है

वह केवल IP Address नहीं भेजता।

वह Domain Name भी भेजता है।

इसे कहते हैं

```text
Host Header
```

Example

```http
GET / HTTP/1.1

Host: streamflix.yourdomain.com
```

या

```http
GET / HTTP/1.1

Host: hope.yourdomain.com
```

यही सबसे महत्वपूर्ण Information होती है।

---

# 🌍 Nginx क्या करता है?

Nginx सबसे पहले

```text
Host Header
```

देखता है।

फिर अपनी Configuration पढ़ता है।

---

## Configuration 1

```nginx
server {

listen 80;

server_name streamflix.yourdomain.com;

root /var/www/StreamFlix;

}
```

यदि

```text
Host

=

streamflix.yourdomain.com
```

तो

```text
/var/www/StreamFlix
```

Open होगा।

---

## Configuration 2

```nginx
server {

listen 80;

server_name hope.yourdomain.com;

root /var/www/HopeFoundation;

}
```

यदि

```text
Host

=

hope.yourdomain.com
```

तो

```text
Hope Foundation
```

Website Open होगी।

---

## Configuration 3

```nginx
server {

listen 80;

server_name trees.yourdomain.com;

root /var/www/SaveTrees;

}
```

यदि

```text
Host

=

trees.yourdomain.com
```

तो

```text
Save Trees
```

Website Open होगी।

---

# 🌍 Visual Flow

## 🎬 StreamFlix

```text
Browser

↓

streamflix.yourdomain.com

↓

Cloudflare

↓

20.198.125.10

↓

Nginx

↓

server_name

↓

StreamFlix Folder

↓

Website
```

---

## ❤️ Hope Foundation

```text
Browser

↓

hope.yourdomain.com

↓

Cloudflare

↓

20.198.125.10

↓

Nginx

↓

server_name

↓

HopeFoundation Folder

↓

Website
```

---

## 🌳 Save Trees

```text
Browser

↓

trees.yourdomain.com

↓

Cloudflare

↓

20.198.125.10

↓

Nginx

↓

server_name

↓

SaveTrees Folder

↓

Website
```

---

# 📂 Folder Structure

```text
/var/www

│

├──────── StreamFlix

│         └── index.html

│

├──────── HopeFoundation

│         └── index.html

│

└──────── SaveTrees

          └── index.html
```

---

# 🧠 Real Production Example

जब आप Browser में खोलते हैं

```text
mail.google.com
```

और

```text
drive.google.com
```

दोनों Google के Infrastructure पर चलते हैं।

लेकिन

Browser के Host Header के आधार पर

अलग-अलग Application Open होती है।

ठीक यही Concept हमने अपनी VM पर बनाया है।

---

# 🌍 Complete Picture

```text
                   User Browser
                         │
                         ▼
              streamflix.yourdomain.com
                         │
                         ▼
                  Cloudflare DNS
                         │
                         ▼
                 20.198.125.10
                         │
                         ▼
                 Network Security Group
                         │
                         ▼
                    Ubuntu Linux
                         │
                         ▼
                       Nginx
                         │
      ┌──────────────────┼──────────────────┐
      ▼                  ▼                  ▼
Host=streamflix   Host=hope        Host=trees
      │                  │                  │
      ▼                  ▼                  ▼
 /var/www/          /var/www/         /var/www/
 StreamFlix      HopeFoundation      SaveTrees
```

---

# 💡 Enterprise Best Practices

✅ एक Public IP पर कई Websites Host की जा सकती हैं।

✅ प्रत्येक Website का अलग Folder रखें।

✅ प्रत्येक Website के लिए अलग `server_name` Configure करें।

✅ DNS में सभी Subdomains को उसी Public IP पर Point करें।

✅ Production में HTTPS और SSL Certificate Enable करें।

---

# 🎯 आपने क्या सीखा?

✅ एक VM पर Multiple Websites कैसे चलती हैं।

✅ एक Public IP कई Domains कैसे Handle करती है।

✅ Cloudflare DNS सभी Domains को एक ही Server तक कैसे पहुँचाता है।

✅ Browser Host Header क्या होता है।

✅ Nginx `server_name` के आधार पर सही Website कैसे Select करता है।

---

# 🧠 अगले Chapter में...

अब तक हमने समझा—

```text
एक Server

↓

कई Websites
```

लेकिन अगर...

```text
एक Server Down हो जाए?
```

या

```text
10,000 Users एक साथ Website खोलें?
```

तो क्या होगा?

इसी Problem को Solve करता है...

# ⚖️ Azure Load Balancer

जिसे हम अगले Chapter में Step by Step सीखेंगे।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `27.1-How-Website-Actually-Works.md` | `README.md` | `28-Understanding-Azure-Load-Balancer.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Document multi-website hosting architecture"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v2.0.1 -m "Multi website hosting explained"

git push origin v2.0.1
```

---

> 🚀 **Project Status:** You now understand how multiple websites run on a single Azure VM using one Public IP, Cloudflare DNS, and Nginx Virtual Hosts. Next, we'll scale this architecture with Azure Load Balancer.

---

# ⚖️ Understanding Azure Load Balancer (Part 28)

> **Document:** `28-Understanding-Azure-Load-Balancer.md`

![Azure](https://img.shields.io/badge/Azure-Load%20Balancer-0078D4?style=for-the-badge&logo=microsoftazure)
![Networking](https://img.shields.io/badge/Networking-High%20Availability-blue?style=for-the-badge)
![Terraform](https://img.shields.io/badge/Terraform-Infrastructure-purple?style=for-the-badge&logo=terraform)
![DevOps](https://img.shields.io/badge/Enterprise-Architecture-success?style=for-the-badge)

---

# ⚖️ Understanding Azure Load Balancer

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** High Availability & Scalability

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Load Balancer क्या होता है?
- इसकी आवश्यकता क्यों पड़ती है?
- Single VM की Problem
- Azure Load Balancer कैसे काम करता है?
- Frontend IP क्या होता है?
- Backend Pool क्या होता है?
- Health Probe क्या होता है?
- Load Balancing Rule क्या होती है?
- Azure Load Balancer की Architecture

---

# 📚 अभी तक हमारा Infrastructure

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
      ┌─────────────┼─────────────┐
      ▼             ▼             ▼
 StreamFlix      Hope NGO     Save Trees
```

अभी हमारी तीनों Websites केवल **एक Virtual Machine** पर चल रही हैं।

---

# 🤔 Problem कहाँ है?

कल्पना कीजिए—

आज हमारी Website पर

```text
50 Users
```

आते हैं।

सब कुछ ठीक चलता है।

लेकिन अचानक

```text
20,000 Users
```

Website Open करते हैं।

तो क्या होगा?

---

# 🚨 Single Server Problem

```text
              Internet
                  │
                  ▼
              One Server
                  │
          20,000 Requests
```

अब एक ही Server को

- CPU
- RAM
- Network
- Disk

सब कुछ Handle करना पड़ेगा।

---

# 😨 Possible Problems

❌ Server Slow हो जाएगा।

❌ Website Hang हो सकती है।

❌ Response Time बढ़ जाएगा।

❌ Server Crash भी हो सकता है।

---

# 🌍 दूसरा Scenario

अगर VM Crash हो जाए...

```text
Ubuntu VM

↓

Stopped
```

तो

हमारी तीनों Websites भी बंद हो जाएँगी।

---

# 🤔 इसका Solution क्या है?

एक Server की जगह

Multiple Servers बनाते हैं।

---

# 🌍 Example

```text
VM-01

↓

StreamFlix
```

```text
VM-02

↓

Hope Foundation
```

```text
VM-03

↓

Save Trees
```

लेकिन...

अगर सभी Websites एक जैसी हों...

तो?

---

# 🌍 Better Architecture

```text
VM-01

↓

Website
```

```text
VM-02

↓

Same Website
```

```text
VM-03

↓

Same Website
```

अब तीनों Servers Users को Response देंगे।

---

# 🤔 लेकिन User किस Server पर जाएगा?

यही काम करता है

# ⚖️ Azure Load Balancer

---

# 🌍 Azure Load Balancer

```text
                  Internet
                       │
                       ▼
             Azure Load Balancer
             ┌─────────┼─────────┐
             ▼         ▼         ▼
          VM-01     VM-02     VM-03
```

अब User सीधे VM पर नहीं जाता।

पहले

Load Balancer

फिर

VM

---

# 🧠 आसान उदाहरण

मान लीजिए

Restaurant में

केवल

1 Chef

है।

```text
Customers

↓

Chef
```

100 Customers आए।

Chef परेशान हो जाएगा।

---

अब Restaurant में

3 Chef हैं।

```text
Customers

↓

Manager

↓

Chef-1

Chef-2

Chef-3
```

Manager काम बाँट देता है।

Azure Load Balancer भी यही करता है।

---

# 🌍 Azure Load Balancer Flow

```text
                Internet
                    │
                    ▼
             Azure Public IP
                    │
                    ▼
             Azure Load Balancer
          ┌─────────┼─────────┐
          ▼         ▼         ▼
      Ubuntu01  Ubuntu02  Ubuntu03
```

---

# 📌 Azure Load Balancer के Components

Azure Load Balancer चार मुख्य Components से मिलकर बना होता है।

---

# 1️⃣ Frontend IP

यह Public Facing IP होती है।

यही IP Users Browser में Access करते हैं।

Example

```text
20.198.125.10
```

---

# 2️⃣ Backend Pool

Backend Pool में

वे सभी Virtual Machines होती हैं

जो Traffic Receive करेंगी।

Example

```text
Backend Pool

↓

VM-01

VM-02

VM-03
```

---

# 3️⃣ Health Probe

Azure लगातार Check करता है

Server Alive है या नहीं।

Example

```text
HTTP

Port 80
```

यदि

```text
200 OK
```

मिला

तो Server Healthy है।

---

यदि

Response नहीं मिला

तो

Load Balancer

उस Server पर Traffic भेजना बंद कर देगा।

---

# 🌍 Health Probe Flow

```text
Load Balancer

↓

VM-01

↓

Healthy

✔
```

```text
Load Balancer

↓

VM-02

↓

No Response

❌
```

अब

VM-02

को Ignore कर दिया जाएगा।

---

# 4️⃣ Load Balancing Rule

यह Rule बताती है

Traffic कहाँ भेजना है।

Example

```text
Frontend

Port 80

↓

Backend

Port 80
```

---

# 🌍 Complete Flow

```text
User

↓

Cloudflare DNS

↓

Azure Public IP

↓

Azure Load Balancer

↓

Health Check

↓

Healthy VM

↓

Nginx

↓

Website
```

---

# 📊 Traffic Distribution

Without Load Balancer

```text
User Requests

↓↓↓↓↓↓↓↓↓↓↓

VM-01
```

---

With Load Balancer

```text
Requests

↓

Load Balancer

├──────── VM-01

├──────── VM-02

└──────── VM-03
```

अब सभी Servers मिलकर काम करेंगे।

---

# 🌍 High Availability

यदि

```text
VM-02

Crash
```

तो

बाकी दोनों Servers

Traffic Handle करेंगे।

```text
Load Balancer

↓

VM-01

VM-03
```

User को शायद पता भी नहीं चलेगा।

---

# 🌍 Enterprise Architecture

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
                Azure Load Balancer
              ┌──────────┼──────────┐
              ▼          ▼          ▼
          Ubuntu01   Ubuntu02   Ubuntu03
              │          │          │
              └──────────┼──────────┘
                         ▼
                       Nginx
                         │
                         ▼
                   StreamFlix App
```

---

# 💼 Real World Examples

Azure Load Balancer का उपयोग—

- Microsoft
- Amazon
- Netflix
- Flipkart
- Swiggy
- Zomato
- Paytm

जैसी बड़ी Companies High Availability और Scalability के लिए करती हैं।

---

# 💡 Enterprise Best Practices

✅ Minimum दो Virtual Machines रखें।

✅ Backend Pool में सभी Servers जोड़ें।

✅ Health Probe हमेशा Configure करें।

✅ NSG Rules सही रखें।

✅ सभी Servers पर एक ही Application Deploy करें।

✅ Stateless Application Design करें ताकि किसी भी Server पर Request जा सके।

---

# 🎯 आपने क्या सीखा?

✅ Azure Load Balancer क्या है।

✅ Single VM की Limitation।

✅ High Availability क्या होती है।

✅ Frontend IP क्या है।

✅ Backend Pool क्या है।

✅ Health Probe कैसे काम करती है।

✅ Load Balancing Rule क्या है।

✅ Enterprise Architecture कैसी दिखती है।

---

# 🧠 अगले Chapter में...

अब Theory पूरी हो चुकी है।

अगले Chapter में हम Terraform का उपयोग करके Azure Load Balancer बनाएँगे, Backend Pool Configure करेंगे, Health Probe और Load Balancing Rule बनाएँगे तथा अपनी Virtual Machines को Backend Pool में जोड़ेंगे।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `27.2-Hosting-Multiple-Websites-on-a-Single-VM.md` | `README.md` | `29-Create-Azure-Load-Balancer-Using-Terraform.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Add Azure Load Balancer architecture documentation"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v2.1.0 -m "Azure Load Balancer fundamentals"

git push origin v2.1.0
```

---

> 🚀 **Project Status:** Azure Load Balancer Architecture Understood • Next Step: Build a Production Load Balancer using Terraform

---

# ⚖️ Create Azure Load Balancer using Terraform (Part 29)

> **Document:** `29-Create-Azure-Load-Balancer-Using-Terraform.md`

![Azure](https://img.shields.io/badge/Azure-Load%20Balancer-0078D4?style=for-the-badge&logo=microsoftazure)
![Terraform](https://img.shields.io/badge/Terraform-Infrastructure-7B42BC?style=for-the-badge&logo=terraform)
![Networking](https://img.shields.io/badge/Networking-High%20Availability-blue?style=for-the-badge)
![DevOps](https://img.shields.io/badge/Enterprise-Production-success?style=for-the-badge)

---

# ⚖️ Create Azure Load Balancer using Terraform

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** High Availability Infrastructure

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Azure Load Balancer Deploy करना
- Static Public IP बनाना
- Frontend IP Configure करना
- Backend Pool Create करना
- Health Probe Configure करना
- Load Balancing Rule Create करना
- Virtual Machines को Backend Pool में जोड़ना
- Browser से Testing करना

---

# 🏗️ Final Architecture

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
                Azure Load Balancer
                         │
      ┌──────────────────┼──────────────────┐
      ▼                  ▼                  ▼
    VM-01              VM-02             VM-03
      │                  │                  │
      └──────────────────┼──────────────────┘
                         ▼
                       Nginx
                         ▼
                    StreamFlix
```

---

# 📁 Project Structure

```text
Terraform-Landing-Zone/
│
├── versions.tf
├── provider.tf
├── main.tf
├── backend.tf
├── outputs.tf
└── terraform.tfstate
```

---

# ✍️ Step 1 - Create Static Public IP

```terraform
resource "azurerm_public_ip" "lb_pip" {

  name                = "pip-dev-eastus-lb-001"

  location            = azurerm_resource_group.rg.location

  resource_group_name = azurerm_resource_group.rg.name

  allocation_method   = "Static"

  sku                 = "Standard"

}
```

---

# 🚀 Deploy

```bash
terraform fmt

terraform validate

terraform plan

terraform apply
```

Verify in Azure Portal

```text
Resource Group

↓

Public IP

↓

pip-dev-eastus-lb-001
```

---

# ✍️ Step 2 - Create Azure Load Balancer

```terraform
resource "azurerm_lb" "lb" {

  name                = "lb-dev-eastus-001"

  location            = azurerm_resource_group.rg.location

  resource_group_name = azurerm_resource_group.rg.name

  sku                 = "Standard"

  frontend_ip_configuration {

    name = "Frontend"

    public_ip_address_id = azurerm_public_ip.lb_pip.id

  }

}
```

---

# 🚀 Apply

```bash
terraform plan

terraform apply
```

---

# Verify

Azure Portal

```text
Load Balancer

↓

lb-dev-eastus-001
```

---

# ✍️ Step 3 - Create Backend Address Pool

```terraform
resource "azurerm_lb_backend_address_pool" "backend" {

  loadbalancer_id = azurerm_lb.lb.id

  name = "BackendPool"

}
```

---

# Apply

```bash
terraform apply
```

---

# ✍️ Step 4 - Create Health Probe

```terraform
resource "azurerm_lb_probe" "http_probe" {

  loadbalancer_id = azurerm_lb.lb.id

  name = "HTTP-Probe"

  protocol = "Tcp"

  port = 80

}
```

---

# Verify

Azure Portal

```text
Load Balancer

↓

Health Probe

↓

TCP 80
```

---

# ✍️ Step 5 - Create Load Balancing Rule

```terraform
resource "azurerm_lb_rule" "http" {

  loadbalancer_id = azurerm_lb.lb.id

  name = "HTTP"

  protocol = "Tcp"

  frontend_port = 80

  backend_port = 80

  frontend_ip_configuration_name = "Frontend"

  backend_address_pool_ids = [

    azurerm_lb_backend_address_pool.backend.id

  ]

  probe_id = azurerm_lb_probe.http_probe.id

}
```

---

# Apply

```bash
terraform apply
```

---

# ✍️ Step 6 - Add VM-01 into Backend Pool

```terraform
resource "azurerm_network_interface_backend_address_pool_association" "vm01" {

  network_interface_id = azurerm_network_interface.nic.id

  ip_configuration_name = "internal"

  backend_address_pool_id = azurerm_lb_backend_address_pool.backend.id

}
```

---

# ✍️ Step 7 - Add VM-02 into Backend Pool

```terraform
resource "azurerm_network_interface_backend_address_pool_association" "vm02" {

  network_interface_id = azurerm_network_interface.nic_vm02.id

  ip_configuration_name = "internal"

  backend_address_pool_id = azurerm_lb_backend_address_pool.backend.id

}
```

---

# 🚀 Final Apply

```bash
terraform fmt

terraform validate

terraform plan

terraform apply
```

---

# 📊 Verify Azure Portal

```text
Resource Group

↓

Load Balancer

↓

Frontend IP

↓

Backend Pool

↓

VM-01

VM-02

↓

Health Probe

↓

Load Balancing Rule
```

---

# 🧪 Testing

Browser

```text
http://LoadBalancerPublicIP
```

Refresh कई बार करें।

यदि दोनों VM पर एक जैसी Website Deploy है,

तो Requests दोनों Servers पर Distribute होंगी।

---

# 🧪 Verify Backend Health

Azure Portal

```text
Load Balancer

↓

Insights

↓

Backend Health
```

दोनों VM

```text
Healthy
```

दिखनी चाहिए।

---

# 🌍 Final Production Architecture

```text
                      Users
                         │
                         ▼
                  Cloudflare DNS
                         │
                         ▼
                  Azure Public IP
                         │
                         ▼
                Azure Load Balancer
               /                    \
              /                      \
             ▼                        ▼
      Ubuntu VM-01             Ubuntu VM-02
             │                        │
          Nginx                    Nginx
             │                        │
     StreamFlix App           StreamFlix App
```

---

# 💡 Enterprise Best Practices

✅ Standard SKU Load Balancer Use करें।

✅ Public IP हमेशा Static रखें।

✅ Health Probe Configure करें।

✅ Minimum 2 Backend Servers रखें।

✅ सभी Servers पर Same Application Deploy करें।

✅ Load Balancer Rules Documentation Maintain करें।

---

# 🎯 आपने क्या सीखा?

✅ Azure Load Balancer Deploy करना।

✅ Static Public IP बनाना।

✅ Backend Pool Configure करना।

✅ Health Probe Configure करना।

✅ Load Balancing Rule बनाना।

✅ VM-01 और VM-02 को Backend Pool में जोड़ना।

✅ Production High Availability Architecture तैयार करना।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `28-Understanding-Azure-Load-Balancer.md` | `README.md` | `30-Understanding-Azure-Application-Gateway.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Deploy Azure Load Balancer using Terraform"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v2.2.0 -m "Azure Load Balancer deployed with Terraform"

git push origin v2.2.0
```

---

> 🚀 **Project Status:** Production Load Balancer Successfully Deployed • Next Step: Understand Azure Application Gateway and Layer 7 Load Balancing

---

# 🚨 Azure Load Balancer Limitation - Why It Cannot Host Multiple Domains? (Part 30.1)

> **Document:** `30.1-Azure-Load-Balancer-Limitation.md`

![Azure](https://img.shields.io/badge/Azure-Load%20Balancer-Layer%204-0078D4?style=for-the-badge&logo=microsoftazure)
![Networking](https://img.shields.io/badge/Networking-TCP%20%26%20UDP-blue?style=for-the-badge)
![Cloudflare](https://img.shields.io/badge/Cloudflare-DNS-orange?style=for-the-badge&logo=cloudflare)
![Architecture](https://img.shields.io/badge/Enterprise-Architecture-success?style=for-the-badge)

---

# 🚨 Azure Load Balancer Limitation

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** Understanding Why Azure Load Balancer is Not Enough

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Azure Load Balancer की Limitation
- Multiple Public IP की Problem
- Layer 4 और Layer 7 का Difference
- Load Balancer Domain क्यों नहीं समझता?
- Enterprise में केवल Load Balancer क्यों पर्याप्त नहीं होता?

---

# 📚 अभी तक हमारा Infrastructure

हमारे पास दो Virtual Machines हैं।

```text
                 Azure Virtual Network

        ┌────────────────────────────────────┐
        │                                    │
        │  Subnet-01              Subnet-02  │
        │                                    │
        │   VM-01                  VM-02     │
        │   Public IP              Private   │
        │                                    │
        └────────────────────────────────────┘
```

---

# 🌍 VM-02 पर क्या चल रहा है?

VM-02 पर Nginx के माध्यम से

```text
streamflix.yourdomain.com

hope.yourdomain.com

trees.yourdomain.com
```

तीनों Websites चल रही हैं।

---

# 🌍 VM-01 पर क्या है?

VM-01 पर हमने एक अलग Website बनाई।

```text
Audix Landing Page
```

---

# 🤔 अब Requirement बदल गई

Client कहता है—

```text
मुझे

audix.yourdomain.com

भी चाहिए।
```

---

# 🌍 पहला Solution

VM-01 पर पहले से Public IP लगी हुई है।

```text
20.10.10.10
```

VM-02 के सामने

Azure Load Balancer है।

```text
52.xx.xx.xx
```

अब हमारे पास

दो Public IP हैं।

---

# 🌍 Architecture

```text
                      Internet
                          │
          ┌───────────────┴────────────────┐
          ▼                                ▼
   Public IP-01                     Public IP-02
     (VM-01)                     (Load Balancer)
          │                                │
          ▼                                ▼
      Audix Site                    VM-02 Websites
```

---

# 🌍 Cloudflare Mapping

Cloudflare में

```text
audix.yourdomain.com

↓

20.10.10.10
```

---

और

```text
streamflix.yourdomain.com

↓

52.xx.xx.xx
```

---

```text
hope.yourdomain.com

↓

52.xx.xx.xx
```

---

```text
trees.yourdomain.com

↓

52.xx.xx.xx
```

---

# 🎯 अब सब कुछ काम करेगा

हाँ...

लेकिन...

---

# 🚨 Problem शुरू होती है

अब Infrastructure देखें

```text
                     Internet

            ┌──────────┴──────────┐

            ▼                     ▼

      Public IP              Public IP

         │                      │

         ▼                      ▼

      VM-01              Azure Load Balancer

                                │

                                ▼

                              VM-02
```

---

# ❌ पहली Problem

हमने

दो Public IP

Use कर लिए।

---

# 🤔 अगर 20 Websites हों?

तो?

---

```text
Website-01

↓

Public IP-01
```

```text
Website-02

↓

Public IP-02
```

```text
Website-03

↓

Public IP-03
```

...

```text
Website-20

↓

Public IP-20
```

---

# 😨 क्या Production में ऐसा करते हैं?

बिल्कुल नहीं।

---

# 💰 Public IP भी Resource है

Azure में

हर Public IP

एक Billable Resource है।

Production Environment में

अनावश्यक Public IP रखना अच्छी Practice नहीं मानी जाती।

---

# 💡 Enterprise Principle

```text
Less Public Exposure

=

More Security
```

और

```text
Less Public IP

=

Better Architecture
```

---

# 🤔 लेकिन Load Balancer Use क्यों नहीं किया?

क्योंकि...

Azure Load Balancer

यह नहीं समझता

```text
streamflix.yourdomain.com
```

या

```text
audix.yourdomain.com
```

---

# 🚨 Load Balancer क्या देखता है?

Azure Load Balancer केवल देखता है

```text
Destination IP
```

और

```text
Destination Port
```

बस।

---

# 🌍 Example

```text
52.xx.xx.xx

Port 80
```

यही उसकी दुनिया है।

---

# ❌ यह नहीं समझ सकता

```text
Host

=

streamflix.yourdomain.com
```

---

या

```text
Host

=

audix.yourdomain.com
```

---

# 📌 इसका कारण

Azure Load Balancer

OSI Model के

# Layer 4

पर काम करता है।

---

# 🌍 Layer 4 क्या देखता है?

```text
IP Address

↓

TCP

↓

UDP

↓

Port Number
```

बस।

---

# ❌ Layer 4 क्या नहीं देख सकता?

```text
HTTP

Host Header

URL

Cookie

Path

HTTPS Request
```

---

# 🌍 Example

यदि Browser भेजता है

```http
GET /

Host: streamflix.yourdomain.com
```

Load Balancer

Host Header पढ़ता ही नहीं।

---

यदि Browser भेजता है

```http
GET /

Host: audix.yourdomain.com
```

Load Balancer

दोनों Requests को

एक जैसा मानता है।

---

# 🎯 यही सबसे बड़ी Limitation है

Load Balancer के लिए

दोनों Requests

सिर्फ

```text
Destination

52.xx.xx.xx

Port 80
```

हैं।

बस।

---

# 📊 Layer 4 Thinking

```text
Destination IP

✔
```

```text
TCP

✔
```

```text
Port 80

✔
```

```text
Domain Name

❌
```

```text
URL

❌
```

```text
/api/login

❌
```

---

# 🌍 Complete Picture

```text
               Browser

                   │

Host : streamflix.yourdomain.com

                   │

                   ▼

          Azure Load Balancer

                   │

         Only IP + Port Seen

                   │

                   ▼

             Backend Server
```

---

# 💡 Conclusion

Azure Load Balancer

Traffic को Distribute करने में बहुत अच्छा है।

लेकिन

Application Level Decision

नहीं ले सकता।

---

# 🎯 आपने क्या सीखा?

✅ Azure Load Balancer Layer 4 पर काम करता है।

✅ यह केवल IP Address और Port Number समझता है।

✅ Domain Name नहीं समझता।

✅ Multiple Public IP रखना Production में सही Design नहीं है।

✅ Enterprise Architecture में अगले Level की आवश्यकता होती है।

---

# 🤔 अगले Chapter में...

अब सबसे बड़ा Question—

यदि

```text
streamflix.yourdomain.com
```

और

```text
audix.yourdomain.com
```

दोनों को

**एक ही Public IP**

से Open करना हो...

तो क्या करें?

इसी Problem को Solve करता है

# 🌐 Azure Application Gateway

जो

**Layer 7 Load Balancer**

है।

यही हम अगले Chapter (Part 30.2) में सीखेंगे।

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Document Azure Load Balancer limitations"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v2.3.0 -m "Azure Load Balancer limitations explained"

git push origin v2.3.0
```

---

> 🚀 **Project Status:** Azure Load Balancer की Limitations समझ ली गई हैं। अगले Chapter में Azure Application Gateway के माध्यम से एक ही Public IP पर Multiple Domains Host करना सीखेंगे।

---

# 🚨 अब असली Problem शुरू होती है...

अब तक हमारी Architecture कुछ ऐसी दिखती है—

```text
                              Internet
                                  │
        ┌─────────────────────────┴─────────────────────────┐
        │                                                   │
        ▼                                                   ▼
 Public IP-01                                         Public IP-02
 (VM-01)                                         (Azure Load Balancer)
        │                                                   │
        ▼                                                   ▼
     VM-01                                              Backend Pool
  Audix Portal                                               │
                                                             ▼
                                                           VM-02
                                                     StreamFlix
                                                     Hope Foundation
                                                     Save Trees
```

---

# 🎯 अभी सब कुछ ठीक चल रहा है...

Users

```text
audix.yourdomain.com
```

Open करेंगे

↓

VM-01 की Website खुलेगी।

---

Users

```text
streamflix.yourdomain.com
```

Open करेंगे

↓

Azure Load Balancer

↓

VM-02

↓

Website Open

---

# 🤔 अब Client की नई Requirement

Client बोलता है—

> **एक और Application Deploy करनी है।**

Example

```text
hr.yourdomain.com
```

यह

VM-03

पर चलेगी।

---

# 😨 अब Engineer क्या करेगा?

एक नया VM बनाएगा।

```text
VM-03
```

फिर

एक और

```text
Public IP
```

Allocate करेगा।

---

Architecture बन जाएगी—

```text
                              Internet
                                   │
      ┌──────────────┬─────────────┴──────────────┬──────────────┐
      ▼              ▼                            ▼              ▼
 Public IP-01   Public IP-02                 Public IP-03     .....
    │               │                            │
    ▼               ▼                            ▼
  VM-01      Azure Load Balancer              VM-03
 Audix         VM-02 Apps                  HR Application
```

---

# 🤔 अब सोचो...

आज

3 Applications हैं

तो

3 Public IP लग गई।

---

कल

10 Applications हो गईं।

```text
Application-01

↓

Public IP-01
```

```text
Application-02

↓

Public IP-02
```

```text
Application-03

↓

Public IP-03
```

```text
...

Application-10

↓

Public IP-10
```

---

# 💸 इसका Result

❌ Public IP बढ़ती जाएँगी।

❌ Azure Cost बढ़ेगी।

❌ Security Risk बढ़ेगा।

❌ Management मुश्किल हो जाएगा।

---

# 😄 Client क्या बोलेगा?

```text
इतनी Public IP क्यों ली हैं?

Cost इतनी क्यों बढ़ रही है?

कौन सा Engineer लेकर आए हो?

कोई बेहतर Design नहीं था क्या?
```

यहीं से Enterprise Architecture की शुरुआत होती है।

---

# 🤔 सबसे बड़ा Question

Azure Load Balancer के पास तो पहले से Public IP है।

फिर उसी Public IP से

```text
audix.yourdomain.com

streamflix.yourdomain.com

hope.yourdomain.com

trees.yourdomain.com

hr.yourdomain.com
```

सभी Websites क्यों नहीं चला सकते?

---

# 🚨 क्योंकि Azure Load Balancer को Domain समझ ही नहीं आता।

Load Balancer केवल इतना देखता है—

```text
Destination IP

Destination Port

TCP / UDP
```

बस।

---

# ❌ यह नहीं समझ सकता

```text
Host : audix.yourdomain.com
```

या

```text
Host : streamflix.yourdomain.com
```

या

```text
Host : hr.yourdomain.com
```

उसके लिए ये सभी Requests एक जैसी हैं।

---

# 📌 यही Layer 4 की Limitation है

```text
Layer 4

↓

IP Address ✔

Port ✔

TCP ✔

UDP ✔

-------------------

Domain ❌

URL ❌

Host Header ❌

Cookie ❌

/api/login ❌
```

---

# 🤔 तो फिर Solution क्या है?

हमें ऐसा Device चाहिए—

जो केवल IP नहीं...

बल्कि

```text
Domain Name

URL

Host Header

HTTPS

SSL Certificate
```

भी समझ सके।

---

# 🎯 और यहीं से शुरू होता है...

# 🌐 Azure Application Gateway

यह

**Layer 7 Load Balancer**

है।

यह Browser की Request पढ़ सकता है।

यह समझ सकता है—

```text
Host : audix.yourdomain.com
```

तो

```text
VM-01
```

भेजो।

---

और यदि

```text
Host : streamflix.yourdomain.com
```

तो

```text
VM-02
```

भेजो।

---

यदि

```text
Host : hr.yourdomain.com
```

तो

```text
VM-03
```

भेजो।

---

# 🚀 अगले Chapter में

हम Layer 7 की दुनिया में प्रवेश करेंगे।

जहाँ

**एक ही Public IP**

से

```text
audix.yourdomain.com

streamflix.yourdomain.com

hope.yourdomain.com

trees.yourdomain.com

hr.yourdomain.com
```

सभी Applications चलेंगी।

यही Enterprise Companies का Actual Production Architecture होता है।

---

# 🌐 Understanding Azure Application Gateway (Part 32)

> **Document:** `32-Understanding-Azure-Application-Gateway.md`

![Azure](https://img.shields.io/badge/Azure-Application%20Gateway-0078D4?style=for-the-badge&logo=microsoftazure)
![Layer7](https://img.shields.io/badge/OSI-Layer%207-success?style=for-the-badge)
![Networking](https://img.shields.io/badge/Networking-Reverse%20Proxy-blue?style=for-the-badge)
![Enterprise](https://img.shields.io/badge/Enterprise-Production-orange?style=for-the-badge)

---

# 🌐 Understanding Azure Application Gateway

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** Enterprise Layer-7 Routing

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Azure Application Gateway क्या है?
- इसकी आवश्यकता क्यों पड़ती है?
- Load Balancer और Application Gateway में अंतर
- Layer 7 क्या होता है?
- Host Header Routing
- URL Path Routing
- SSL Offloading
- Web Application Firewall (WAF)

---

# 📚 अभी तक हमारा Infrastructure

हमारी Architecture कुछ ऐसी है—

```text
                            Internet
                                 │
                                 ▼
                          Cloudflare DNS
                                 │
                                 ▼
                         Azure Load Balancer
                                 │
              ┌──────────────────┴──────────────────┐
              ▼                                     ▼
          VM-01                                VM-02
       Audix Portal                    StreamFlix
                                       Hope Foundation
                                       Save Trees
```

---

# 🚨 Problem

अब Client कहता है—

```text
मुझे एक Public IP ही चाहिए।
```

और

```text
सभी Applications

उसी Public IP से चलनी चाहिए।
```

---

# 🤔 क्या Azure Load Balancer कर सकता है?

उत्तर

```text
❌ नहीं
```

क्योंकि

Azure Load Balancer

सिर्फ

```text
IP Address

Port Number

TCP

UDP
```

समझता है।

---

# 🌍 हमें क्या चाहिए?

हमें ऐसा Device चाहिए

जो समझ सके—

```text
audix.company.com

↓

VM-01
```

---

```text
streamflix.company.com

↓

VM-02
```

---

```text
hope.company.com

↓

VM-02
```

---

```text
trees.company.com

↓

VM-02
```

---

```text
hr.company.com

↓

VM-03
```

---

# 🎯 यही काम करता है

# Azure Application Gateway

---

# 🌍 Enterprise Architecture

```text
                         Internet
                              │
                              ▼
                      Cloudflare DNS
                              │
                              ▼
                  Azure Application Gateway
                              │
         ┌────────────────────┼────────────────────┐
         ▼                    ▼                    ▼
      Audix VM           Application VM        HR VM
         │                    │                    │
         ▼                    ▼                    ▼
     audix              StreamFlix           HR Portal
                         Hope NGO
                         Save Trees
```

---

# 🤔 Application Gateway कैसे Decide करता है?

Browser भेजता है—

```http
GET /

Host: streamflix.company.com
```

Application Gateway पढ़ता है—

```text
Host Header
```

फिर

Rule Match करता है।

---

# Rule 1

```text
Host

=

audix.company.com
```

↓

Forward

↓

VM-01

---

# Rule 2

```text
Host

=

streamflix.company.com
```

↓

Forward

↓

VM-02

---

# Rule 3

```text
Host

=

hr.company.com
```

↓

Forward

↓

VM-03

---

# 🌍 Visual Flow

```text
                 Browser

                     │

Host : streamflix.company.com

                     │

                     ▼

        Azure Application Gateway

                     │

             Rule Match

                     │

                     ▼

                  VM-02

                     │

                     ▼

             StreamFlix Website
```

---

# 🌍 एक Public IP

अब देखिए

```text
Cloudflare

↓

20.100.50.10
```

यही

एक Public IP

सभी Websites के लिए पर्याप्त है।

---

# 🎯 Final Flow

```text
audix.company.com

↓

20.100.50.10
```

---

```text
streamflix.company.com

↓

20.100.50.10
```

---

```text
hope.company.com

↓

20.100.50.10
```

---

```text
trees.company.com

↓

20.100.50.10
```

---

```text
hr.company.com

↓

20.100.50.10
```

---

# 🤔 अब Application Gateway क्या करेगा?

```text
Host Header पढ़ेगा

↓

Rule Match करेगा

↓

Correct VM पर भेज देगा।
```

---

# 🌍 Layer 7 Intelligence

Application Gateway समझ सकता है—

```text
Domain Name

✔
```

```text
URL Path

✔
```

```text
HTTPS

✔
```

```text
SSL Certificate

✔
```

```text
Cookies

✔
```

```text
HTTP Headers

✔
```

---

# 🌍 URL Path Routing

यदि

Browser खोले

```text
company.com/hr
```

↓

VM-03

---

यदि

```text
company.com/shop
```

↓

VM-04

---

यदि

```text
company.com/api
```

↓

API Server

---

यदि

```text
company.com/images
```

↓

Storage Server

---

# 🌍 SSL Termination

HTTPS Request

↓

Application Gateway

↓

Decrypt

↓

Backend VM

इससे Backend Servers का Load कम हो जाता है।

---

# 🌍 Web Application Firewall (WAF)

Application Gateway में

WAF Enable किया जा सकता है।

यह Protect करता है—

✅ SQL Injection

✅ Cross Site Scripting (XSS)

✅ Command Injection

✅ File Inclusion Attack

✅ OWASP Top 10 Attacks

---

# 🌍 Enterprise Architecture

```text
                           Internet
                                │
                                ▼
                         Cloudflare DNS
                                │
                                ▼
                    Azure Application Gateway
                   (Layer 7 + WAF + SSL)
                                │
        ┌───────────────────────┼────────────────────────┐
        ▼                       ▼                        ▼
     VM-01                  VM-02                    VM-03
  Audix Portal         StreamFlix App              HR Portal
                       Hope NGO
                       Save Trees
```

---

# 📊 Load Balancer vs Application Gateway

| Feature | Load Balancer | Application Gateway |
|----------|---------------|---------------------|
| Layer | Layer 4 | Layer 7 |
| IP Based Routing | ✅ | ✅ |
| Domain Based Routing | ❌ | ✅ |
| URL Routing | ❌ | ✅ |
| SSL Termination | ❌ | ✅ |
| WAF | ❌ | ✅ |
| HTTP Headers | ❌ | ✅ |
| Host Header | ❌ | ✅ |

---

# 💡 Enterprise Best Practices

✅ Public IP केवल Application Gateway पर रखें।

✅ Backend VM Private रखें।

✅ SSL Certificate Gateway पर Install करें।

✅ WAF हमेशा Enable करें।

✅ Cloudflare + Application Gateway सबसे Best Combination है।

---

# 🎯 आपने क्या सीखा?

✅ Azure Application Gateway क्या है।

✅ Layer 7 Routing क्या है।

✅ Host Header Routing कैसे होती है।

✅ URL Path Routing कैसे होती है।

✅ SSL Termination क्या है।

✅ WAF क्यों आवश्यक है।

✅ Enterprise Production Architecture कैसी होती है।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `31-Azure-Load-Balancer-Limitations.md` | `README.md` | `33-Create-Azure-Application-Gateway-Using-Terraform.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Document Azure Application Gateway architecture"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v2.4.0 -m "Azure Application Gateway fundamentals"

git push origin v2.4.0
```

---

> 🚀 **Project Status:** आपने Layer-4 और Layer-7 Networking का अंतर समझ लिया है। अगले Chapter में हम Terraform का उपयोग करके Azure Application Gateway बनाएंगे और अपने सभी Applications को एक ही Public IP के पीछे Publish करेंगे।

---

# 🌐 Create Azure Application Gateway using Terraform (Part 33)

> **Document:** `33-Create-Azure-Application-Gateway-Using-Terraform.md`

![Azure](https://img.shields.io/badge/Azure-Application%20Gateway-0078D4?style=for-the-badge&logo=microsoftazure)
![Terraform](https://img.shields.io/badge/Terraform-Infrastructure-7B42BC?style=for-the-badge&logo=terraform)
![Layer7](https://img.shields.io/badge/Layer7-HTTP%20Routing-success?style=for-the-badge)
![Enterprise](https://img.shields.io/badge/Production-Best%20Practices-orange?style=for-the-badge)

---

# 🌐 Create Azure Application Gateway using Terraform

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** Enterprise Layer-7 Routing

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Azure Application Gateway Deploy करना
- Dedicated Subnet बनाना
- Public IP Create करना
- Backend Pool Configure करना
- HTTP Listener बनाना
- Routing Rule Create करना
- VM को Backend Pool में जोड़ना
- Browser से Testing करना

---

# 📚 Final Architecture

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
                  Azure Application Gateway
                               │
              ┌────────────────┴────────────────┐
              ▼                                 ▼
          VM-01                           VM-02
      Audix Portal                 StreamFlix
                                   Hope NGO
                                   Save Trees
```

---

# 📌 Important Requirement

Azure Application Gateway

अपना Dedicated Subnet मांगता है।

इसे किसी दूसरे Resource के साथ Share नहीं किया जा सकता।

---

# 🌍 Updated Network

```text
Virtual Network

│

├──────── Production

│

├──────── StreamFlix

│

├──────── BastionSubnet

│

└──────── ApplicationGatewaySubnet
```

---

# 📌 Microsoft Recommendation

Application Gateway के लिए

कम से कम

```text
/24
```

Subnet रखना Best Practice माना जाता है।

Example

```text
10.0.4.0/24
```

---

# ✍️ Step 1

Create Application Gateway Public IP

```terraform
resource "azurerm_public_ip" "appgw_pip" {

  name = "pip-dev-eastus-appgw-001"

  location = azurerm_resource_group.rg.location

  resource_group_name = azurerm_resource_group.rg.name

  allocation_method = "Static"

  sku = "Standard"

}
```

---

# 🚀 Apply

```bash
terraform plan

terraform apply
```

---

# ✍️ Step 2

Create Application Gateway

```terraform
resource "azurerm_application_gateway" "appgw" {

  name = "appgw-dev-eastus-001"

  location = azurerm_resource_group.rg.location

  resource_group_name = azurerm_resource_group.rg.name

  sku {

    name = "Standard_v2"

    tier = "Standard_v2"

    capacity = 2

  }

}
```

---

# 🤔 Capacity क्या है?

```text
Capacity

=

Number of Gateway Instances
```

हमने

```text
2
```

रखा है।

मतलब

दो Gateway Instance Run होंगे।

---

# ✍️ Step 3

Configure Gateway IP

```terraform
gateway_ip_configuration {

  name = "gateway-ip"

  subnet_id = azurerm_subnet.subnet["ApplicationGatewaySubnet"].id

}
```

---

# ✍️ Step 4

Frontend IP Configuration

```terraform
frontend_ip_configuration {

  name = "frontend-ip"

  public_ip_address_id = azurerm_public_ip.appgw_pip.id

}
```

---

# ✍️ Step 5

Frontend Port

```terraform
frontend_port {

  name = "http-port"

  port = 80

}
```

---

# ✍️ Step 6

Backend Pool

```terraform
backend_address_pool {

  name = "backend-pool"

}
```

---

अभी Pool खाली रहेगा।

VM बाद में Add करेंगे।

---

# ✍️ Step 7

Backend HTTP Settings

```terraform
backend_http_settings {

  name = "http-setting"

  cookie_based_affinity = "Disabled"

  port = 80

  protocol = "Http"

  request_timeout = 30

}
```

---

# ✍️ Step 8

HTTP Listener

```terraform
http_listener {

  name = "listener-http"

  frontend_ip_configuration_name = "frontend-ip"

  frontend_port_name = "http-port"

  protocol = "Http"

}
```

---

# ✍️ Step 9

Routing Rule

```terraform
request_routing_rule {

  name = "rule-http"

  priority = 100

  rule_type = "Basic"

  http_listener_name = "listener-http"

  backend_address_pool_name = "backend-pool"

  backend_http_settings_name = "http-setting"

}
```

---

# 🚀 Deploy Infrastructure

```bash
terraform fmt

terraform validate

terraform plan

terraform apply
```

---

# 🌍 Azure Portal Verification

```text
Azure Portal

↓

Application Gateway

↓

Frontend IP

↓

Backend Pool

↓

Listener

↓

Routing Rule
```

---

# 📌 अभी क्या बाकी है?

Gateway बन गया।

लेकिन

Backend Pool

अभी Empty है।

---

मतलब

Gateway के पास

कोई Server नहीं है

जिस पर वह Request भेज सके।

---

# 🤔 अगला Step क्या होगा?

अब

VM-01

और

VM-02

को

Backend Pool में Add करेंगे।

---

उसके बाद

Host Based Routing बनाएंगे।

Example

```text
audix.company.com

↓

VM-01
```

---

```text
streamflix.company.com

↓

VM-02
```

---

```text
hope.company.com

↓

VM-02
```

---

```text
trees.company.com

↓

VM-02
```

---

# 🌍 Final Enterprise Architecture

```text
                          Internet
                               │
                               ▼
                        Cloudflare DNS
                               │
                               ▼
                  Azure Application Gateway
                     (Standard_v2)
                               │
                  Host Based Routing
                               │
         ┌─────────────────────┼────────────────────┐
         ▼                     ▼                    ▼
      VM-01                VM-02               Future VM
   Audix Portal        StreamFlix             HR Portal
                       Hope NGO
                       Save Trees
```

---

# 💼 Enterprise Best Practices

✅ Dedicated Subnet रखें।

✅ Standard_v2 SKU Use करें।

✅ Static Public IP रखें।

✅ Capacity Minimum 2 रखें।

✅ Backend Servers Private रखें।

✅ Public IP केवल Gateway पर रखें।

---

# 🎯 आपने क्या सीखा?

✅ Application Gateway Deploy करना।

✅ Public IP Attach करना।

✅ Dedicated Subnet Configure करना।

✅ Backend Pool Create करना।

✅ HTTP Listener बनाना।

✅ Routing Rule Create करना।

---

# 📚 अगले Chapter में...

अब सबसे मजेदार हिस्सा शुरू होगा।

हम

**Host Based Routing**

Configure करेंगे।

```text
audix.company.com

↓

VM-01
```

```text
streamflix.company.com

↓

VM-02
```

```text
hope.company.com

↓

VM-02
```

```text
trees.company.com

↓

VM-02
```

यानी

**एक Public IP**

और

**Multiple Domains**

सही Virtual Machine तक पहुँचेंगे।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `32-Understanding-Azure-Application-Gateway.md` | `README.md` | `34-Configure-Host-Based-Routing.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Deploy Azure Application Gateway using Terraform"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v2.5.0 -m "Azure Application Gateway deployed"

git push origin v2.5.0
```

---

> 🚀 **Project Status:** Azure Application Gateway Successfully Deployed. Next Step: Configure Host-Based Routing to publish multiple websites using a single Public IP.

---

# 🌐 Configure Host Based Routing in Azure Application Gateway (Part 34)

> **Document:** `34-Configure-Host-Based-Routing.md`

![Azure](https://img.shields.io/badge/Azure-Application%20Gateway-Host%20Based%20Routing-0078D4?style=for-the-badge&logo=microsoftazure)
![Terraform](https://img.shields.io/badge/Terraform-Infrastructure-7B42BC?style=for-the-badge&logo=terraform)
![Networking](https://img.shields.io/badge/Networking-Layer%207-success?style=for-the-badge)
![Enterprise](https://img.shields.io/badge/Enterprise-Production-orange?style=for-the-badge)

---

# 🌐 Configure Host Based Routing

> **Document:** `34-Configure-Host-Based-Routing.md`

> **Project:** **Audix Azure Landing Zone using Terraform**

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Host Based Routing क्या है?
- एक Public IP से Multiple Websites कैसे चलती हैं?
- Application Gateway Domain कैसे पहचानता है?
- Backend Pool कैसे Select होता है?
- Terraform में Host Based Routing कैसे Configure करते हैं?

---

# 📚 अभी तक हमारी Architecture

```text
                          Internet
                               │
                               ▼
                        Cloudflare DNS
                               │
                               ▼
                     Azure Application Gateway
                               │
                         Backend Pool
                               │
                ┌──────────────┴──────────────┐
                ▼                             ▼
             VM-01                        VM-02
         Audix Portal            StreamFlix
                                 Hope NGO
                                 Save Trees
```

---

# 🤔 अभी Problem क्या है?

Application Gateway तो बन गया...

लेकिन...

उसे यह नहीं पता कि

```text
audix.company.com
```

किस VM पर भेजना है।

---

और

```text
streamflix.company.com
```

किस VM पर भेजना है।

---

# 🎯 Solution

Application Gateway में

**Host Based Routing Rule**

बनाते हैं।

---

# 🌍 Final Architecture

```text
                         Internet
                              │
                              ▼
                       Cloudflare DNS
                              │
                              ▼
                 Azure Application Gateway
                              │
      ┌───────────────────────┼────────────────────────┐
      ▼                       ▼                        ▼
 Host = audix          Host = streamflix        Host = hope
      │                       │                        │
      ▼                       ▼                        ▼
    VM-01                  VM-02                   VM-02
```

---

# 🌍 Domain Mapping

```text
audix.company.com

↓

VM-01
```

---

```text
streamflix.company.com

↓

VM-02
```

---

```text
hope.company.com

↓

VM-02
```

---

```text
trees.company.com

↓

VM-02
```

---

# 🌍 Browser Request

User Open करता है

```text
https://audix.company.com
```

Browser Request भेजता है

```http
GET /

Host : audix.company.com
```

---

Application Gateway पढ़ता है

```text
Host Header
```

---

Rule Match होती है

```text
audix.company.com

↓

VM-01
```

---

Website Open

✅

---

# 🌍 दूसरा Example

```text
https://streamflix.company.com
```

↓

Host Header

```text
streamflix.company.com
```

↓

Rule Match

↓

VM-02

↓

Website Open

---

# 🌍 तीसरा Example

```text
https://hope.company.com
```

↓

VM-02

---

# 🌍 चौथा Example

```text
https://trees.company.com
```

↓

VM-02

---

# 🎯 पूरा Flow

```text
Browser

↓

Cloudflare DNS

↓

Application Gateway

↓

Host Header Read

↓

Routing Rule

↓

Backend Pool

↓

Virtual Machine

↓

Nginx

↓

Website
```

---

# ✍️ Step 1

Create Backend Pool for VM-01

```terraform
backend_address_pool {

  name = "backend-audix"

}
```

---

# ✍️ Step 2

Create Backend Pool for VM-02

```terraform
backend_address_pool {

  name = "backend-apps"

}
```

---

# ✍️ Step 3

Backend HTTP Settings

```terraform
backend_http_settings {

  name = "http-setting"

  protocol = "Http"

  port = 80

  request_timeout = 30

}
```

---

# ✍️ Step 4

Create Listener for Audix

```terraform
http_listener {

  name = "listener-audix"

  frontend_ip_configuration_name = "frontend-ip"

  frontend_port_name = "http-port"

  protocol = "Http"

  host_name = "audix.company.com"

}
```

---

# ✍️ Step 5

Create Listener for StreamFlix

```terraform
http_listener {

  name = "listener-streamflix"

  frontend_ip_configuration_name = "frontend-ip"

  frontend_port_name = "http-port"

  protocol = "Http"

  host_name = "streamflix.company.com"

}
```

---

# ✍️ Step 6

Routing Rule for Audix

```terraform
request_routing_rule {

  name = "rule-audix"

  priority = 100

  rule_type = "Basic"

  http_listener_name = "listener-audix"

  backend_address_pool_name = "backend-audix"

  backend_http_settings_name = "http-setting"

}
```

---

# ✍️ Step 7

Routing Rule for StreamFlix

```terraform
request_routing_rule {

  name = "rule-streamflix"

  priority = 110

  rule_type = "Basic"

  http_listener_name = "listener-streamflix"

  backend_address_pool_name = "backend-apps"

  backend_http_settings_name = "http-setting"

}
```

---

# 🌍 Cloudflare DNS

| Domain | Destination |
|----------|------------|
| audix.company.com | Application Gateway Public IP |
| streamflix.company.com | Application Gateway Public IP |
| hope.company.com | Application Gateway Public IP |
| trees.company.com | Application Gateway Public IP |

---

# 🌍 Final Enterprise Flow

```text
                          Internet
                               │
                               ▼
                        Cloudflare DNS
                               │
                               ▼
                   Azure Application Gateway
                               │
      ┌────────────────────────┼────────────────────────┐
      │                        │                        │
      ▼                        ▼                        ▼
Host = audix          Host = streamflix        Host = hope
      │                        │                        │
      ▼                        ▼                        ▼
 Backend Pool-01         Backend Pool-02        Backend Pool-02
      │                        │                        │
      ▼                        ▼                        ▼
    VM-01                    VM-02                   VM-02
 Audix Portal             StreamFlix             Hope NGO
                                                 Save Trees
```

---

# 💼 Enterprise Best Practices

✅ प्रत्येक Application के लिए अलग Backend Pool रखें।

✅ Host Name आधारित Listener बनाएँ।

✅ सभी Domains को एक ही Application Gateway Public IP पर Point करें।

✅ Backend Servers Private रखें।

✅ Application Gateway पर SSL Terminate करें।

---

# 🎯 आपने क्या सीखा?

✅ Host Based Routing क्या है।

✅ Listener कैसे काम करता है।

✅ Backend Pool कैसे Select होता है।

✅ Domain Name के आधार पर Traffic कैसे Route होता है।

✅ एक Public IP से Multiple Websites कैसे Publish होती हैं।

---

# 🧠 अगले Chapter में...

अब हमारी पूरी Architecture HTTP पर चल रही है।

Production Environment में

HTTP का उपयोग नहीं किया जाता।

अगले Chapter में सीखेंगे—

# 🔒 HTTPS, SSL Certificate और End-to-End Secure Communication

जहाँ

Cloudflare

↓

Application Gateway

↓

Virtual Machines

पूरी तरह Secure Communication करेंगे।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `33-Create-Azure-Application-Gateway-Using-Terraform.md` | `README.md` | `35-Configure-HTTPS-and-SSL-Certificate.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Configure host based routing in Azure Application Gateway"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v2.6.0 -m "Host based routing configured"

git push origin v2.6.0
```

---

> 🚀 **Project Status:** Azure Application Gateway अब Host Header के आधार पर सही Backend Virtual Machine चुन सकता है। अब हमारा अगला कदम Production Security के लिए HTTPS और SSL Certificates Configure करना है.

---

# 🔒 Configure HTTPS and SSL Certificate (Part 35)

> **Document:** `35-Configure-HTTPS-and-SSL-Certificate.md`

![Azure](https://img.shields.io/badge/Azure-Application%20Gateway-0078D4?style=for-the-badge&logo=microsoftazure)
![HTTPS](https://img.shields.io/badge/HTTPS-Secure%20Communication-success?style=for-the-badge)
![SSL](https://img.shields.io/badge/SSL-TLS%20Certificate-blue?style=for-the-badge)
![Cloudflare](https://img.shields.io/badge/Cloudflare-SSL-orange?style=for-the-badge&logo=cloudflare)

---

# 🔒 Configure HTTPS and SSL Certificate

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase:** Production Security

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- HTTP और HTTPS में अंतर
- SSL Certificate क्या होता है?
- Browser Secure Connection कैसे बनाता है?
- Cloudflare SSL कैसे काम करता है?
- Azure Application Gateway पर SSL कैसे Configure करते हैं?
- HTTPS Listener क्या होता है?
- HTTP से HTTPS Redirect कैसे करते हैं?

---

# 📚 अभी तक हमारी Architecture

```text
                        Internet
                             │
                             ▼
                      Cloudflare DNS
                             │
                             ▼
               Azure Application Gateway
                             │
       ┌─────────────────────┼─────────────────────┐
       ▼                     ▼                     ▼
    VM-01                 VM-02                Future VM
```

लेकिन...

अभी Communication

```text
HTTP
```

पर चल रही है।

---

# 🚨 HTTP की Problem

यदि कोई User Login करता है—

```text
Username

Password
```

तो Data

Internet में

Plain Text

में Travel करती है।

---

# 😨 Hacker क्या देख सकता है?

```text
Username

Password

Cookies

Session ID

Personal Information
```

---

# 🌍 HTTP Flow

```text
Browser

↓

HTTP Request

↓

Internet

↓

Server
```

बीच में कोई भी Packet Capture करके Data पढ़ सकता है।

---

# 🎯 इसका Solution

हमारा Data

Encrypt होना चाहिए।

यहीं

SSL Certificate

काम आता है।

---

# 🌍 HTTPS Flow

```text
Browser

↓

Encrypted Data

↓

Internet

↓

Application Gateway

↓

Virtual Machine
```

---

# 🔒 SSL Certificate क्या है?

SSL Certificate

एक Digital Identity Card है।

यह Browser को बताता है—

```text
यह Website Genuine है।
```

और

```text
अब Communication Encrypt होगी।
```

---

# 🌍 Browser में

यदि

```text
https://
```

दिखता है

और

🔒

Lock Icon दिखाई देता है

तो

मतलब

SSL Certificate Successfully Verify हो चुका है।

---

# 🤔 HTTPS कैसे बनता है?

Browser

↓

Server

↓

Certificate Exchange

↓

Encryption Keys

↓

Secure Communication

---

# 🌍 Complete SSL Handshake

```text
Browser

↓

Hello

↓

Application Gateway

↓

SSL Certificate

↓

Browser Verify

↓

Encryption Key Create

↓

Secure Session Start
```

---

# 📌 Cloudflare का Role

हमारी DNS

Cloudflare पर है।

```text
Browser

↓

Cloudflare

↓

Azure Application Gateway

↓

Virtual Machine
```

Cloudflare

SSL Certificate भी Manage कर सकता है।

---

# 🌍 SSL Modes

Cloudflare में

चार SSL Modes होते हैं।

```text
Off
```

↓

No Encryption

---

```text
Flexible
```

↓

Browser → Cloudflare

Encrypted

Cloudflare → Server

HTTP

❌ Production के लिए Recommended नहीं।

---

```text
Full
```

↓

Browser → Cloudflare

HTTPS

↓

Cloudflare → Application Gateway

HTTPS

---

```text
Full (Strict)
```

↓

Browser → Cloudflare

HTTPS

↓

Application Gateway

Valid SSL Certificate

↓

Backend

HTTPS

✅ Enterprise Best Practice

---

# 🎯 Production Recommendation

```text
Cloudflare SSL Mode

↓

Full (Strict)
```

---

# 🌍 HTTPS Architecture

```text
                     Internet

                         │

                         ▼

                  Cloudflare DNS

                         │

                    HTTPS 443

                         │

                         ▼

             Azure Application Gateway

                         │

                    HTTPS 443

                         │

                         ▼

                     Virtual Machine
```

---

# ✍️ Step 1

Upload SSL Certificate

Azure Portal

```text
Application Gateway

↓

Listeners

↓

Add HTTPS Listener

↓

Upload .PFX Certificate
```

---

# 📌 Certificate Format

Azure Application Gateway

Support करता है—

```text
PFX
```

Certificate।

---

# ✍️ Step 2

Create HTTPS Frontend Port

```terraform
frontend_port {

  name = "https-port"

  port = 443

}
```

---

# ✍️ Step 3

Upload SSL Certificate

```terraform
ssl_certificate {

  name = "audix-cert"

  data = filebase64("certificate.pfx")

  password = "YourCertificatePassword"

}
```

---

# ✍️ Step 4

Create HTTPS Listener

```terraform
http_listener {

  name = "listener-https"

  frontend_ip_configuration_name = "frontend-ip"

  frontend_port_name = "https-port"

  protocol = "Https"

  ssl_certificate_name = "audix-cert"

}
```

---

# ✍️ Step 5

Routing Rule

```terraform
request_routing_rule {

  name = "https-rule"

  priority = 100

  rule_type = "Basic"

  http_listener_name = "listener-https"

  backend_address_pool_name = "backend-apps"

  backend_http_settings_name = "http-setting"

}
```

---

# ✍️ Step 6

Deploy

```bash
terraform fmt

terraform validate

terraform plan

terraform apply
```

---

# 🌍 Browser Testing

Open

```text
https://streamflix.company.com
```

---

Open

```text
https://hope.company.com
```

---

Open

```text
https://trees.company.com
```

---

Open

```text
https://audix.company.com
```

---

Browser दिखाएगा

```text
🔒 Secure Connection
```

---

# 🌍 HTTP → HTTPS Redirect

Production में

HTTP Disable कर देते हैं।

यदि User खोले

```text
http://streamflix.company.com
```

Automatically Redirect होगा

```text
https://streamflix.company.com
```

---

# 🌍 Final Secure Architecture

```text
                      Internet
                           │
                           ▼
                    Cloudflare DNS
                           │
                     HTTPS 443
                           │
                           ▼
              Azure Application Gateway
             (SSL Certificate Installed)
                           │
          ┌────────────────┼────────────────┐
          ▼                ▼                ▼
      VM-01            VM-02           Future VM
     Audix          StreamFlix         HR Portal
                    Hope NGO
                    Save Trees
```

---

# 💼 Enterprise Best Practices

✅ हमेशा HTTPS Use करें।

✅ HTTP को Redirect करें।

✅ Cloudflare SSL Mode **Full (Strict)** रखें।

✅ Certificate Expiry Monitor करें।

✅ Private Key सुरक्षित रखें।

✅ Production में Self-Signed Certificate Use न करें।

---

# 🎯 आपने क्या सीखा?

✅ HTTP और HTTPS में अंतर।

✅ SSL Certificate क्या है।

✅ Browser Secure Connection कैसे बनाता है।

✅ Cloudflare SSL कैसे काम करता है।

✅ Azure Application Gateway पर HTTPS Configure करना।

✅ HTTPS Listener और Routing Rule बनाना।

✅ HTTP को HTTPS पर Redirect करना।

---

# 🚀 अगले Chapter में...

अब हमारी पूरी Infrastructure Secure हो चुकी है।

अगले Chapter में हम सीखेंगे—

# 🛡️ Azure Web Application Firewall (WAF)

जहाँ हम

- SQL Injection
- Cross Site Scripting (XSS)
- OWASP Top 10 Attacks
- Bot Protection

से अपनी Websites को सुरक्षित करेंगे।

---

# 📚 Chapter Navigation

| ⬅️ Previous | 🏠 Home | ➡️ Next |
|------------|---------|----------|
| `34-Configure-Host-Based-Routing.md` | `README.md` | `36-Understanding-Azure-Web-Application-Firewall.md` |

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Configure HTTPS and SSL certificate for Application Gateway"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v2.7.0 -m "HTTPS and SSL configured"

git push origin v2.7.0
```

---

> 🚀 **Project Status:** हमारी पूरी Azure Landing Zone अब HTTPS पर Secure Communication कर रही है। अगले Chapter में हम Azure WAF जोड़कर Enterprise Grade Security लागू करेंगे।

---

# 🏗 Refactoring Terraform Project - Part 1 (From Single File to Modules)

> **Document:** `37-Refactoring-Terraform-Project-Structure.md`

![Terraform](https://img.shields.io/badge/Terraform-Project%20Structure-7B42BC?style=for-the-badge&logo=terraform)
![Modules](https://img.shields.io/badge/Terraform-Modules-blue?style=for-the-badge)
![DevOps](https://img.shields.io/badge/Infrastructure-Best%20Practices-success?style=for-the-badge)
![GitHub](https://img.shields.io/badge/GitHub-Enterprise%20Repository-black?style=for-the-badge&logo=github)

---

# 🏗 Refactoring Terraform Project Structure

> **Project Name:** **Audix Azure Landing Zone using Terraform**

> **Phase 2:** Enterprise Terraform Project Structure

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Enterprise Project Structure क्या होता है?
- Modules क्या होते हैं?
- Parent Module क्या होता है?
- Reusable Module क्या होता है?
- पूरा Folder Structure एक साथ कैसे बनाया जाता है?
- PowerShell से Shortcut में Folder और Files कैसे बनाते हैं?

---

# 📚 अभी तक हमने क्या किया?

अब तक पूरे Project का Code

```text
main.tf
```

में लिखा था।

जैसे—

- Resource Group
- Storage Account
- Backend
- Virtual Network
- Subnets
- NSG
- Public IP
- NIC
- VM-01
- VM-02
- Load Balancer
- Application Gateway

सब कुछ

एक ही File में था।

---

# 🤔 शुरुआत में ऐसा क्यों किया?

क्योंकि...

हम सीख रहे थे।

यदि शुरुआत में Modules बना देते

तो Concepts समझना कठिन हो जाता।

इसलिए पहले

```text
Everything in main.tf
```

Strategy अपनाई।

---

# 🚨 लेकिन Production में ऐसा नहीं करते।

कल्पना करो...

Project में

```text
400 Resources
```

हैं।

और

सब

```text
main.tf
```

में हैं।

---

क्या होगा?

❌ File हजारों Lines की हो जाएगी।

❌ Debug करना मुश्किल होगा।

❌ Team Work कठिन होगा।

❌ Reuse नहीं कर पाएँगे।

---

# 🎯 इसलिए अब Project Refactor करेंगे।

हमारा Code

Modules में Divide करेंगे।

---

# 📚 Module क्या होता है?

Simple भाषा में...

Module

एक Folder होता है

जिसमें किसी एक Resource का पूरा Code रहता है।

Example

```text
Virtual Network

↓

एक Module
```

---

```text
Virtual Machine

↓

एक Module
```

---

```text
Load Balancer

↓

एक Module
```

---

# 🌍 Final Enterprise Architecture

```text
Parent Module

│

├── Resource Group Module

├── Storage Module

├── Network Module

├── Security Module

├── Compute Module

├── Load Balancer Module

└── Application Gateway Module
```

---

# 📌 Parent Module क्या होता है?

जिस Folder से

हम

```bash
terraform init

terraform plan

terraform apply
```

चलाते हैं

उसे

```text
Parent Module
```

कहते हैं।

---

# 📌 Reusable Module क्या होता है?

जिस Module को

बार-बार

Use किया जा सके

उसे

Reusable Module कहते हैं।

Example

```text
VM Module
```

आज

Development

में Use किया।

कल

Production

में भी वही Module Use करेंगे।

---

# 🌍 Final Project Structure

```text
Audix-Azure-Landing-Zone/

│

├── modules/

│   ├── resource_group/

│   ├── storage_account/

│   ├── virtual_network/

│   ├── network_security_group/

│   ├── virtual_machine/

│   ├── load_balancer/

│   ├── application_gateway/

│   └── bastion/

│

├── environments/

│   ├── dev/

│   ├── uat/

│   └── prod/

│

├── versions.tf

├── provider.tf

├── backend.tf

├── main.tf

├── outputs.tf

├── README.md

└── .gitignore
```

---

# 🎯 आज केवल Structure बनाएँगे

अभी

कोई Code

Move नहीं करेंगे।

पहले

Folder Structure समझेंगे।

---

# ⚡ PowerShell Shortcut

Project Folder में जाएँ

```powershell
cd D:\Audix-Azure-Landing-Zone
```

---

Modules Folder

```powershell
mkdir modules
```

---

Environment Folder

```powershell
mkdir environments
```

---

Reusable Modules

```powershell
mkdir modules\resource_group,modules\storage_account,modules\virtual_network,modules\network_security_group,modules\virtual_machine,modules\load_balancer,modules\application_gateway,modules\bastion
```

---

Environment Folder

```powershell
mkdir environments\dev,environments\uat,environments\prod
```

---

# ⚡ Create Files (Shortcut)

```powershell
ni versions.tf,provider.tf,backend.tf,main.tf,outputs.tf,README.md,.gitignore -ItemType File
```

---

# ⚡ Create Module Files

```powershell
ni modules\resource_group\main.tf,modules\resource_group\outputs.tf
```

---

```powershell
ni modules\storage_account\main.tf,modules\storage_account\outputs.tf
```

---

```powershell
ni modules\virtual_network\main.tf,modules\virtual_network\outputs.tf
```

---

```powershell
ni modules\network_security_group\main.tf,modules\network_security_group\outputs.tf
```

---

```powershell
ni modules\virtual_machine\main.tf,modules\virtual_machine\outputs.tf
```

---

```powershell
ni modules\load_balancer\main.tf,modules\load_balancer\outputs.tf
```

---

```powershell
ni modules\application_gateway\main.tf,modules\application_gateway\outputs.tf
```

---

```powershell
ni modules\bastion\main.tf,modules\bastion\outputs.tf
```

---

# 🌍 Final Folder Structure

```text
Audix-Azure-Landing-Zone/

│

├── modules/

│   ├── application_gateway/

│   │      ├── main.tf
│   │      └── outputs.tf

│   ├── bastion/

│   │      ├── main.tf
│   │      └── outputs.tf

│   ├── load_balancer/

│   │      ├── main.tf
│   │      └── outputs.tf

│   ├── network_security_group/

│   │      ├── main.tf
│   │      └── outputs.tf

│   ├── resource_group/

│   │      ├── main.tf
│   │      └── outputs.tf

│   ├── storage_account/

│   │      ├── main.tf
│   │      └── outputs.tf

│   ├── virtual_machine/

│   │      ├── main.tf
│   │      └── outputs.tf

│   └── virtual_network/

│          ├── main.tf
│          └── outputs.tf

│

├── environments/

│   ├── dev/
│   ├── uat/
│   └── prod/

│

├── backend.tf
├── main.tf
├── outputs.tf
├── provider.tf
├── versions.tf
├── README.md
└── .gitignore
```

---

# 💡 अभी क्या नहीं करेंगे?

❌ Variables नहीं बनाएँगे।

❌ terraform.tfvars नहीं बनाएँगे।

❌ Modules को Connect नहीं करेंगे।

❌ Code Split नहीं करेंगे।

---

# 🚀 अगले Chapter में...

अब हम

```text
Parent Module
```

और

```text
Reusable Module
```

के बीच Connection बनाएँगे।

यानी

Parent Module

कैसे

Reusable Module

को Call करता है

वह सीखेंगे।

उसके बाद

तीसरे Part में

पूरे Project को

Variables,

`variables.tf`

और

`terraform.tfvars`

की मदद से

Production Ready बनाएँगे।

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Refactor project structure for reusable Terraform modules"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v3.0.0 -m "Terraform module structure initialized"

git push origin v3.0.0
```

---

> 🚀 **Project Status:** Enterprise Folder Structure तैयार हो चुकी है। अगले Part में Parent Module और Reusable Modules के बीच Connection बनाएँगे।

---

# 🏗 Terraform Project Refactoring - Part 37.1

> **Document:** `37.1-Understanding-Enterprise-Project-Structure.md`

![Terraform](https://img.shields.io/badge/Terraform-Project%20Structure-7B42BC?style=for-the-badge&logo=terraform)
![Modules](https://img.shields.io/badge/Terraform-Modules-blue?style=for-the-badge)
![GitHub](https://img.shields.io/badge/GitHub-Enterprise-black?style=for-the-badge&logo=github)
![DevOps](https://img.shields.io/badge/Infrastructure-Best%20Practices-success?style=for-the-badge)

---

# 🏗 Understanding Enterprise Terraform Project Structure

> **Project:** **Audix Azure Landing Zone using Terraform**

---

# 🎯 Objective

इस Chapter में हम सीखेंगे—

- Enterprise Project Structure कैसा होता है?
- शुरुआत में हमने सब Code `main.tf` में क्यों लिखा?
- Production Project में ऐसा क्यों नहीं करते?
- Parent Module क्या होता है?
- Reusable Module क्या होता है?
- पूरा Folder Structure एक साथ कैसे बनाया जाता है?
- PowerShell से Shortcut में पूरा Structure कैसे Create करते हैं?

---

# 📚 अभी तक हमने क्या किया?

पूरे Project में

```text
main.tf
```

एक ही File थी।

उसमें हमने लिखा—

- Resource Group
- Storage Account
- Backend
- Virtual Network
- Subnets
- NSG
- Public IP
- NIC
- Virtual Machine
- Bastion
- Load Balancer
- Application Gateway

यानी...

**पूरा Azure Infrastructure एक ही File में था।**

---

# 🤔 शुरुआत में ऐसा क्यों किया?

यदि पहले दिन ही मैं तुम्हें Modules सिखाता...

तो Project कुछ ऐसा दिखता—

```text
modules/

resource_group/

network/

storage/

vm/

nsg/

load_balancer/

application_gateway/
```

फिर

```terraform
module "resource_group" { }

module "network" { }

module "vm" { }

module "application_gateway" { }
```

तब सबसे बड़ा सवाल आता...

> **असल Resource कहाँ बना?**

> **VM कहाँ Create हुई?**

> **VNet कहाँ लिखा है?**

सीखने के समय यह Structure Confusing हो जाता।

---

# 💡 इसलिए हमने पहले क्या किया?

सब कुछ

```text
main.tf
```

में लिखा।

ताकि

Resource कैसे बनता है...

Terraform कैसे काम करता है...

Dependencies कैसे बनती हैं...

यह पहले अच्छे से समझ आए।

---

# 🌍 हमारी Learning Journey

```text
Step 1

↓

Everything in main.tf

(Understanding Terraform)
```

↓

```text
Step 2

↓

Understand Enterprise Structure
```

↓

```text
Step 3

↓

Split Code into Modules
```

↓

```text
Step 4

↓

Use Variables

(terraform.tfvars)
```

↓

```text
Production Ready Project
```

---

# 🏢 Real Company में क्या होता है?

कल्पना करो...

Project में

```text
500 Resources
```

हैं।

यदि सब

```text
main.tf
```

में लिखेंगे...

तो File हजारों Lines की हो जाएगी।

---

```text
main.tf

↓

6500 Lines
```

😵

---

अब सोचो...

VM में Error आया है।

तो Developer कहाँ जाएगा?

6500 Lines पढ़ेगा?

---

या

NSG Change करना है।

तो पूरी File Search करेगा?

---

यही कारण है कि

Enterprise Project

Modules का उपयोग करते हैं।

---

# 🎯 Module क्या होता है?

Module का मतलब...

**एक जिम्मेदारी, एक Folder।**

Example

```text
Virtual Machine

↓

VM Module
```

---

```text
Network

↓

Network Module
```

---

```text
Load Balancer

↓

Load Balancer Module
```

---

हर Module

सिर्फ अपना काम करेगा।

---

# 🌍 आसान उदाहरण

मान लो...

तुम Hospital जाते हो।

क्या एक Doctor

सब कुछ करता है?

❌

---

Heart

↓

Cardiologist

---

Eye

↓

Eye Specialist

---

Skin

↓

Dermatologist

---

वैसे ही

Terraform में भी

हर Resource

अपने Specialist Folder में रहती है।

---

# 📌 Parent Module क्या होता है?

जिस Folder से हम

```bash
terraform init

terraform plan

terraform apply
```

चलाते हैं।

उसे कहते हैं—

# Parent Module

---

# 📌 Reusable Module क्या होता है?

जो Module

एक बार लिखा जाए

और

100 Projects में Use हो सके।

उसे कहते हैं—

# Reusable Module

---

# 🌍 Enterprise Project Structure

```text
Audix-Azure-Landing-Zone/

│

├── modules/

├── environments/

├── backend.tf

├── provider.tf

├── versions.tf

├── main.tf

├── outputs.tf

├── README.md

└── .gitignore
```

---

# 🤔 आज क्या करेंगे?

आज

कोई Code नहीं लिखेंगे।

कोई Module नहीं बनाएँगे।

कोई Variable नहीं बनाएँगे।

आज केवल

Project की Foundation

तैयार करेंगे।

---

# ⚡ PowerShell Shortcut

Project Folder में जाएँ—

```powershell
cd D:\Audix-Azure-Landing-Zone
```

---

पूरा Structure बनाने के लिए

```powershell
mkdir modules,environments
```

---

अब

Modules के Folder बनाएँ—

```powershell
mkdir modules\resource_group,modules\storage_account,modules\virtual_network,modules\network_security_group,modules\virtual_machine,modules\load_balancer,modules\application_gateway,modules\bastion
```

---

Environment Folder

```powershell
mkdir environments\dev,environments\uat,environments\prod
```

---

Root Files बनाएँ

```powershell
ni backend.tf,provider.tf,versions.tf,main.tf,outputs.tf,README.md,.gitignore -ItemType File
```

---

# 📂 अभी हमारा Folder ऐसा दिखेगा

```text
Audix-Azure-Landing-Zone/

│

├── modules/

│   ├── application_gateway/

│   ├── bastion/

│   ├── load_balancer/

│   ├── network_security_group/

│   ├── resource_group/

│   ├── storage_account/

│   ├── virtual_machine/

│   └── virtual_network/

│

├── environments/

│   ├── dev/

│   ├── uat/

│   └── prod/

│

├── backend.tf
├── provider.tf
├── versions.tf
├── main.tf
├── outputs.tf
├── README.md
└── .gitignore
```

---

# 📌 ध्यान दें

अभी ये सिर्फ

**Empty Structure** है।

इसमें

❌ कोई Terraform Code नहीं है।

❌ कोई Variable नहीं है।

❌ कोई Module Call नहीं है।

हमने केवल

**Enterprise Folder Layout**

बनाया है।

---

# 🎯 आपने क्या सीखा?

✅ शुरुआत में सब Code `main.tf` में क्यों लिखा।

✅ Enterprise Project में ऐसा क्यों नहीं करते।

✅ Parent Module क्या होता है।

✅ Reusable Module क्या होता है।

✅ Folder Structure क्यों बनाया जाता है।

✅ PowerShell से Shortcut में पूरा Structure कैसे बनाया जाता है।

---

# 📚 अगले Chapter में...

**`37.2-Create-Parent-and-Reusable-Modules.md`**

अगले Part में हम पहली बार

```terraform
module "resource_group" {

}
```

लिखेंगे और समझेंगे कि

Parent Module

Reusable Module को

कैसे Call करता है।

---

## 📝 Git Commit

```bash
git status

git add .

git commit -m "Create enterprise Terraform project structure"

git push origin main
```

---

## 🏷️ Git Tag

```bash
git tag -a v3.0.0 -m "Enterprise project structure initialized"

git push origin v3.0.0
```

---

> 🚀 **Project Status:** Enterprise Folder Structure तैयार है। अगले Chapter में Parent Module और Reusable Module के बीच Connection बनाएँगे।

---