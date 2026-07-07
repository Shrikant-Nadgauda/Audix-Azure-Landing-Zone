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


