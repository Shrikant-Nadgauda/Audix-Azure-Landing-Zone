terraform {

  # Backend Block बताता है कि Terraform State File कहाँ Store होगी।
  # अभी तक State File Local Computer में थी, अब इसे Azure Storage Account में Store करेंगे।

  backend "azurerm" {

    # Azure Storage Backend का उपयोग किया जा रहा है।

    resource_group_name = "rg-dev-southeastasia-audix-001"

    # जिस Resource Group में Storage Account बनाया गया है।

    storage_account_name = "stdevaudix001"

    # Storage Account का नाम।

    container_name = "tfstate"

    # Blob Container का नाम जहाँ terraform.tfstate Store होगी।

    key = "terraform.tfstate"

    # State File का नाम।
    # यदि भविष्य में Dev, UAT और Prod होंगे तो इनके लिए अलग-अलग Key रखी जा सकती है।

  }

}