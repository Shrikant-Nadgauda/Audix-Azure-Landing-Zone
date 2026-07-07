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



resource "azurerm_storage_account" "storage" {

  # यह Azure Storage Account Create करेगा।
  # Terraform State File भविष्य में इसी Storage Account के अंदर Store होगी।

  name = "stdevaudix001"

  # Storage Account का नाम पूरे Azure में Unique होना चाहिए।
  # इसमें केवल Small Letters और Numbers ही Allow होते हैं।

  resource_group_name = azurerm_resource_group.rg.name

  # यहाँ हमने Resource Group का नाम Hardcode नहीं किया।
  # हमने Resource Group का Reference दिया है।
  # इसे Implicit Dependency कहते हैं।
  # Terraform स्वयं समझ जाता है कि पहले Resource Group बनेगा, उसके बाद Storage Account।

  location = azurerm_resource_group.rg.location

  # Storage Account उसी Region में Create होगा जहाँ Resource Group है।

  account_tier = "Standard"

  # Standard Performance Storage उपयोग किया जाएगा।

  account_replication_type = "LRS"

  # LRS (Locally Redundant Storage) एक ही Region में Data की 3 Copies रखता है।
  # Learning Project और Terraform Backend के लिए यह सबसे उपयुक्त और Cost Effective विकल्प है।

  tags = {

    Environment = "Development"
    Project     = "Azure Landing Zone"
    Owner       = "Audix"
    ManagedBy   = "Terraform"

  }

  # depends_on = [azurerm_resource_group.rg]

  # यह Explicit Dependency कहलाती है।
  # इसका उपयोग तब किया जाता है जब Terraform स्वयं Dependency समझ नहीं पाता।
  # वर्तमान Code में इसकी आवश्यकता नहीं है क्योंकि हमने Resource Group का Reference दिया है।
  # इसलिए यहाँ Implicit Dependency अपने आप काम कर रही है और यही Best Practice है।

}

resource "azurerm_storage_container" "tfstate" {

  # यह Azure Blob Storage Container Create करेगा।
  # भविष्य में Terraform State File (terraform.tfstate) इसी Container के अंदर Store होगी।

  name = "tfstate"

  # Container का नाम है।
  # Terraform Projects में "tfstate" नाम सबसे अधिक उपयोग किया जाता है।

  storage_account_id = azurerm_storage_account.storage.id

  # यहाँ हमने Storage Account का ID Reference किया है।
  # इसे Implicit Dependency कहते हैं।
  # Terraform स्वयं समझ जाता है कि पहले Storage Account बनेगा, उसके बाद Container बनेगा।

  container_access_type = "private"

  # Container केवल Authorized Users के लिए उपलब्ध रहेगा।
  # Terraform State File में Sensitive Information हो सकती है,
  # इसलिए इसे हमेशा Private रखना चाहिए।

  # depends_on = [azurerm_storage_account.storage]

  # यह Explicit Dependency है।
  # वर्तमान Code में इसकी आवश्यकता नहीं है क्योंकि हमने Storage Account का Reference दिया है।
  # Terraform स्वयं Dependency समझ रहा है, इसलिए Implicit Dependency ही Best Practice है।

}




resource "azurerm_virtual_network" "vnet" {

  # यह Azure Virtual Network Create करेगा।
  # Virtual Network Azure Cloud के अंदर हमारा Private Network होता है।
  # भविष्य में बनने वाली सभी Virtual Machines इसी Network के अंदर रहेंगी।

  name = "vnet-dev-southeastasia-audix-001"

  # Enterprise Naming Convention
  # vnet = Virtual Network
  # dev = Environment
  # southeastasia = Azure Region
  # audix = Company Name
  # 001 = Resource Number

  location = azurerm_resource_group.rg.location

  # VNet उसी Region में Create होगा जहाँ हमारा Resource Group है।
  # Resource Group का Reference होने के कारण यहाँ Implicit Dependency अपने आप बन जाती है।

  resource_group_name = azurerm_resource_group.rg.name

  # VNet इसी Resource Group के अंदर Create होगा।
  # Hardcode Name लिखने के बजाय Resource Reference देना Best Practice है।

  address_space = ["10.0.0.0/16"]

  # पूरे Virtual Network का Address Space।
  # इसी Range के अंदर आगे सभी Subnets Create होंगे।

  tags = {

    Environment = "Development"
    Project     = "Azure Landing Zone"
    Owner       = "Audix"
    ManagedBy   = "Terraform"

  }

  # depends_on = [azurerm_resource_group.rg]

  # यहाँ Explicit Dependency की आवश्यकता नहीं है।
  # Terraform Resource Group का Reference देखकर स्वयं समझ जाता है
  # कि पहले Resource Group Create होगा, उसके बाद Virtual Network।
  # इसे Implicit Dependency कहते हैं और यही Best Practice है।

}



resource "azurerm_subnet" "subnet" {

  # यह Resource एक साथ Multiple Subnets Create करेगा।
  # यदि हमें 4, 10 या 50 Subnets बनाने हों तो बार-बार Code लिखने की आवश्यकता नहीं होती।
  # for_each Enterprise Projects में सबसे अधिक उपयोग होने वाले Features में से एक है।

  for_each = {

    # यहाँ हमने एक Map बनाया है।
    # Left Side (Key) = Subnet Name
    # Right Side (Value) = CIDR Block

    GatewaySubnet = "10.0.0.0/27"

    # Azure VPN Gateway के लिए Reserved Subnet।
    # इसका नाम हमेशा GatewaySubnet ही होना चाहिए।

    AzureBastionSubnet = "10.0.0.64/26"

    # Azure Bastion के लिए Reserved Subnet।
    # Azure की Requirement है कि इसका नाम AzureBastionSubnet और Size कम से कम /26 होना चाहिए।

    Management = "10.0.1.0/24"

    # इस Subnet में VM-01 रहेगा।
    # इसी VM पर Public IP रहेगी और शुरुआत में SSH यहीं से करेंगे।

    StreamFlix = "10.0.2.0/24"

    # इस Subnet में VM-02 रहेगा।
    # आगे इसी VM पर हमारी तीन Websites Host होंगी।
    # StreamFlix
    # NGO
    # Save Trees

  }

  name = each.key

  # each.key Map की Left Side Return करता है।
  # पहली बार → GatewaySubnet
  # दूसरी बार → AzureBastionSubnet
  # तीसरी बार → Management
  # चौथी बार → StreamFlix

  resource_group_name = azurerm_resource_group.rg.name

  # Subnet इसी Resource Group के अंदर बनेगा।
  # यहाँ Implicit Dependency अपने आप बनती है।

  virtual_network_name = azurerm_virtual_network.vnet.name

  # यह Subnet हमारे Virtual Network के अंदर बनेगा।
  # VNet का Reference देने से Terraform पहले VNet बनाएगा फिर Subnet।

  address_prefixes = [each.value]

  # each.value Map की Right Side Return करता है।
  # GatewaySubnet      → 10.0.0.0/27
  # AzureBastionSubnet → 10.0.0.32/26
  # Management         → 10.0.1.0/24
  # StreamFlix         → 10.0.2.0/24

  # depends_on = [azurerm_virtual_network.vnet]

  # यह Explicit Dependency का उदाहरण है।
  # यहाँ इसकी आवश्यकता नहीं है क्योंकि हमने VNet का Reference दिया है।
  # Terraform स्वयं समझ जाता है कि पहले VNet बनेगा फिर Subnets।
  # इसे Implicit Dependency कहते हैं और यही Best Practice है।

}


