terraform {

# Terraform का Root Block है। इसी Block के अंदर पूरे Project की Global Configuration लिखी जाती है।

  required_version = ">= 1.13.0"

# इस Project को चलाने के लिए System में Terraform Version 1.13.0 या उससे ऊपर होना चाहिए। इससे पूरी Team एक ही Compatible Version का उपयोग करती है।

  required_providers {

# यहाँ उन सभी Providers की जानकारी दी जाती है जिनकी इस Project को आवश्यकता है।

    azurerm = {

# यह Azure Resource Manager Provider है। इसी Provider की सहायता से Terraform Azure Subscription से Communication करता है।

      source = "hashicorp/azurerm"

# Provider HashiCorp की Official Registry से Download होगा।

      version = "~> 4.0"

# AzureRM Provider की केवल 4.x Series का उपयोग होगा। 5.x Version Allow नहीं होगा, जिससे Future Breaking Changes से Project सुरक्षित रहता है।

    }

  }

}