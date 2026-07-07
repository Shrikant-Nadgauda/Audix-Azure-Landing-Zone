provider "azurerm" {

# यह Azure Resource Manager (AzureRM) Provider Block है।
# इसी Block के माध्यम से Terraform Azure Subscription से Communication करता है।

  # subscription_id = "YOUR_SUBSCRIPTION_ID"

# यहाँ उस Azure Subscription की ID लिखी जाती है जिसमें Infrastructure Create करना है।
# यदि आपके पास केवल एक ही Subscription है, तब भी इसे लिखना Best Practice माना जाता है।

  features {}

# यह AzureRM Provider का Mandatory Block है।
# वर्तमान में इसे खाली रखा जाता है, लेकिन भविष्य में Azure Provider की Advanced Features Enable करने के लिए इसी Block का उपयोग किया जाता है।

}