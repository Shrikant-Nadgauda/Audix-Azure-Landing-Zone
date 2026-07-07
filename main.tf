resource "azurerm_resource_group" "rg" {

# यह Azure Resource Group Create करने का Resource Block है।
# Azure में बनने वाले लगभग सभी Resources किसी न किसी Resource Group के अंदर ही बनाए जाते हैं।

  name = "rg-dev-southeastasia-audix-001"

# Resource Group का नाम है।
# हमने Enterprise Naming Convention Follow किया है।
# rg = Resource Group
# dev = Environment
# southeastasia = Azure Region
# audix = Company Name
# 001 = Resource Number

  location = "Southeast Asia"

# Resource Group किस Azure Region में Create होगा।
# हमारा पूरा Landing Zone इसी Region में Deploy होगा क्योंकि Student Subscription में VM इसी Region में उपलब्ध है।

  tags = {

# Tags Resource की पहचान, Cost Tracking और Management के लिए उपयोग किए जाते हैं।
# Enterprise Environment में Tags लगाना Best Practice माना जाता है।

    Environment = "Development"

# यह Resource किस Environment का है।

    Project = "Azure Landing Zone"

# यह Resource किस Project का हिस्सा है।

    Owner = "Audix"

# Resource का Owner या Team।

    ManagedBy = "Terraform"

# यह Resource Manual नहीं बल्कि Terraform द्वारा Manage किया जा रहा है।

  }

}