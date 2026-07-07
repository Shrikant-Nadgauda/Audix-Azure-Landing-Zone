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

