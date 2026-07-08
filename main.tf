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
  # AzureBastionSubnet → 10.0.0.64/26
  # Management         → 10.0.1.0/24
  # StreamFlix         → 10.0.2.0/24

  # depends_on = [azurerm_virtual_network.vnet]

  # यह Explicit Dependency का उदाहरण है।
  # यहाँ इसकी आवश्यकता नहीं है क्योंकि हमने VNet का Reference दिया है।
  # Terraform स्वयं समझ जाता है कि पहले VNet बनेगा फिर Subnets।
  # इसे Implicit Dependency कहते हैं और यही Best Practice है।

}


resource "azurerm_network_security_group" "nsg" {

  # यह Azure Network Security Group (NSG) Create करेगा।
  # NSG Azure Firewall की तरह काम नहीं करता।
  # यह Layer-4 (TCP/UDP) पर Inbound और Outbound Traffic को Allow या Deny करता है।
  # आगे VM-01 और VM-02 की Security इसी NSG से नियंत्रित होगी।

  name = "nsg-dev-southeastasia-audix-001"

  # Enterprise Naming Convention
  # nsg = Network Security Group
  # dev = Environment
  # southeastasia = Azure Region
  # audix = Company Name
  # 001 = Resource Number

  location = azurerm_resource_group.rg.location

  # NSG उसी Azure Region में बनेगा जहाँ Resource Group है।
  # Resource Group का Reference देने से Implicit Dependency अपने आप बन जाती है।

  resource_group_name = azurerm_resource_group.rg.name

  # NSG इसी Resource Group के अंदर Create होगा।
  # Hardcode Name लिखने के बजाय Resource Reference देना Best Practice है।

  tags = {

    Environment = "Development"
    Project     = "Azure Landing Zone"
    Owner       = "Audix"
    ManagedBy   = "Terraform"

  }

  # depends_on = [azurerm_resource_group.rg]

  # यह Explicit Dependency का उदाहरण है।
  # यहाँ इसकी आवश्यकता नहीं है क्योंकि हमने Resource Group का Reference दिया है।
  # Terraform स्वयं समझ जाता है कि पहले Resource Group बनेगा, फिर NSG।
  # इसे Implicit Dependency कहते हैं और यही Best Practice है।

}



resource "azurerm_network_security_rule" "allow_ssh" {

  # यह Rule SSH Traffic (Port 22) Allow करेगा।
  # इसी Rule की सहायता से हम VM-01 में SSH Login कर पाएँगे।

  name = "Allow-SSH"

  # Rule का नाम।

  priority = 100

  # Priority जितनी छोटी होगी, Rule उतना पहले Execute होगा।
  # Azure NSG Rules 100 से 4096 तक Priority स्वीकार करते हैं।

  direction = "Inbound"

  # Internet से VM की तरफ आने वाले Traffic के लिए यह Rule लागू होगा।

  access = "Allow"

  # Traffic Allow किया जाएगा।
  # यदि Deny लिखेंगे तो Traffic Block हो जाएगा।

  protocol = "Tcp"

  # SSH केवल TCP Protocol का उपयोग करता है।

  source_port_range = "*"

  # Client किसी भी Source Port से Connect हो सकता है।

  destination_port_range = "22"

  # VM पर Port 22 Open किया जा रहा है।

  source_address_prefix = "*"

  # किसी भी Source IP से SSH Allow होगा।
  # Production में यहाँ अपनी Public IP देना Best Practice है।

  destination_address_prefix = "*"

  # यह Rule NSG से जुड़े सभी Resources पर लागू होगा।

  resource_group_name = azurerm_resource_group.rg.name

  # Rule इसी Resource Group में बनेगा।

  network_security_group_name = azurerm_network_security_group.nsg.name

  # यह Rule हमारे NSG के अंदर Add होगा।
  # NSG का Reference होने के कारण Terraform पहले NSG बनाएगा फिर Rule।
  # इसे Implicit Dependency कहते हैं।

}



resource "azurerm_network_security_rule" "allow_http" {

  # यह Rule HTTP Traffic (Port 80) Allow करेगा।
  # आगे Nginx Website इसी Port पर चलेगी।

  name = "Allow-HTTP"

  priority = 110

  # प्रत्येक Rule की Priority Unique होनी चाहिए।

  direction = "Inbound"

  access = "Allow"

  protocol = "Tcp"

  source_port_range = "*"

  destination_port_range = "80"

  # HTTP Port

  source_address_prefix = "*"

  destination_address_prefix = "*"

  resource_group_name = azurerm_resource_group.rg.name

  network_security_group_name = azurerm_network_security_group.nsg.name

}



resource "azurerm_network_security_rule" "allow_https" {

  # यह Rule HTTPS Traffic (Port 443) Allow करेगा।
  # भविष्य में SSL Certificate लगाने के बाद Website इसी Port पर खुलेगी।

  name = "Allow-HTTPS"

  priority = 120

  direction = "Inbound"

  access = "Allow"

  protocol = "Tcp"

  source_port_range = "*"

  destination_port_range = "443"

  # HTTPS Port

  source_address_prefix = "*"

  destination_address_prefix = "*"

  resource_group_name = azurerm_resource_group.rg.name

  network_security_group_name = azurerm_network_security_group.nsg.name

}



resource "azurerm_public_ip" "pip_vm01" {

  # यह Azure Public IP Address Create करेगा।
  # Public IP की सहायता से Internet से Azure Resources तक पहुँच बनाई जाती है।
  # अभी यह Public IP VM-01 के साथ Attach होगी ताकि हम SSH द्वारा Login कर सकें।
  # बाद में इसी Public IP का उपयोग Nginx Website Access करने के लिए भी करेंगे।

  name = "pip-dev-southeastasia-audix-001"

  # Enterprise Naming Convention
  # pip = Public IP
  # dev = Environment
  # southeastasia = Azure Region
  # audix = Company Name
  # 001 = Resource Number

  location = azurerm_resource_group.rg.location

  # Public IP उसी Azure Region में Create होगी जहाँ हमारा Resource Group है।
  # Resource Group का Reference देने से Implicit Dependency अपने आप बन जाती है।

  resource_group_name = azurerm_resource_group.rg.name

  # Public IP इसी Resource Group के अंदर Create होगी।
  # Hardcode Name लिखने के बजाय Resource Reference देना Best Practice है।

  allocation_method = "Static"

  # Public IP दो प्रकार की होती है।
  #
  # Static
  # VM Restart होने पर भी Public IP नहीं बदलती।
  # Production Environment में यही उपयोग की जाती है।
  #
  # Dynamic
  # VM Restart या Recreate होने पर IP बदल सकती है।
  # Learning और Temporary Environment के लिए उपयोग होती है।
  #
  # हमारी Website, DNS और Cloudflare इसी IP पर Point करेंगे।
  # इसलिए Static Public IP आवश्यक है।

  sku = "Standard"

  # Azure में मुख्यतः दो प्रकार की Public IP SKU होती हैं।
  #
  # Basic
  # पुरानी Generation
  # धीरे-धीरे Deprecate हो रही है।
  #
  # Standard
  # अधिक Secure
  # Zone Redundant Support
  # Enterprise Projects में Recommended
  #
  # इसलिए हमेशा Standard SKU का उपयोग करेंगे।

  idle_timeout_in_minutes = 4

  # यदि 4 मिनट तक कोई Network Activity नहीं होती,
  # तो Idle Connection Close हो जाएगी।
  # आवश्यकता अनुसार इसे 4 से 30 मिनट तक बढ़ाया जा सकता है।

  tags = {

    Environment = "Development"
    Project     = "Azure Landing Zone"
    Owner       = "Audix"
    ManagedBy   = "Terraform"

  }

  # depends_on = [azurerm_resource_group.rg]

  # यहाँ Explicit Dependency की आवश्यकता नहीं है।
  # Resource Group का Reference होने के कारण Terraform स्वयं समझ जाता है
  # कि पहले Resource Group Create होगा फिर Public IP।
  # इसे Implicit Dependency कहते हैं और यही Best Practice है।

}





resource "azurerm_network_interface" "nic_vm01" {

  # यह Azure Network Interface (NIC) Create करेगा।
  # NIC Virtual Machine का Network Card होता है।
  # VM सीधे VNet या Subnet से Connect नहीं होती।
  # VM हमेशा NIC के माध्यम से Network से जुड़ती है।

  name = "nic-dev-southeastasia-audix-001"

  # Enterprise Naming Convention
  # nic = Network Interface
  # dev = Environment
  # southeastasia = Azure Region
  # audix = Company Name
  # 001 = Resource Number

  location = azurerm_resource_group.rg.location

  # NIC उसी Region में बनेगी जहाँ Resource Group है।

  resource_group_name = azurerm_resource_group.rg.name

  # NIC इसी Resource Group के अंदर Create होगी।

  ip_configuration {

    # एक NIC के अंदर एक या अधिक IP Configuration हो सकती हैं।
    # अभी हम केवल एक Primary IP Configuration बना रहे हैं।

    name = "internal"

    # IP Configuration का Logical Name।

    subnet_id = azurerm_subnet.subnet["Management"].id

    # NIC Management Subnet से Connect होगी।
    # VM-01 इसी Subnet में Create होगी।

    private_ip_address_allocation = "Dynamic"

    # Azure इस NIC को स्वतः एक Private IP देगा।
    # उदाहरण:
    # 10.0.1.4
    # 10.0.1.5
    # 10.0.1.6

    # यदि Fixed Private IP चाहिए तो "Static" उपयोग किया जाता है।

    public_ip_address_id = azurerm_public_ip.pip_vm01.id

    # हमने जो Public IP पहले बनाई थी,
    # वही इस NIC के साथ Attach होगी।
    # Internet से आने वाला Traffic पहले Public IP पर आएगा,
    # फिर NIC पर आएगा,
    # और अंत में VM तक पहुँचेगा।

    primary = true

    # यदि एक NIC में Multiple IP Configurations हों,
    # तो यह Primary IP Configuration होगी।

  }

  tags = {

    Environment = "Development"
    Project     = "Azure Landing Zone"
    Owner       = "Audix"
    ManagedBy   = "Terraform"

  }

  # यहाँ Explicit Dependency की आवश्यकता नहीं है।
  # हमने Subnet और Public IP दोनों का Reference दिया है।
  # Terraform स्वयं समझ जाता है कि
  # पहले Subnet और Public IP बनेंगे,
  # उसके बाद NIC Create होगी।
  # इसे Implicit Dependency कहते हैं और यही Best Practice है।

}



resource "azurerm_network_interface_security_group_association" "nic_nsg" {

  # यह Resource Network Interface (NIC) और Network Security Group (NSG)
  # को आपस में Connect करेगा।
  # जब तक NSG Associate नहीं होती,
  # तब तक NSG के Rules VM पर लागू नहीं होते।

  network_interface_id = azurerm_network_interface.nic_vm01.id

  # यह हमारी VM-01 की NIC है।
  # NSG इसी NIC पर Apply होगी।

  network_security_group_id = azurerm_network_security_group.nsg.id

  # यह वही NSG है जिसमें हमने
  # SSH (22)
  # HTTP (80)
  # HTTPS (443)
  # Rules बनाए हैं।

  # यहाँ हमने NIC और NSG दोनों का Reference दिया है।
  # Terraform स्वयं समझ जाता है कि
  # पहले NIC और NSG बनेंगे,
  # उसके बाद Association होगी।
  # इसे Implicit Dependency कहते हैं।
  # यहाँ Explicit Dependency की आवश्यकता नहीं है।

}



resource "azurerm_linux_virtual_machine" "vm01" {

  # यह Azure में Ubuntu Linux Virtual Machine Create करेगा।
  # VM Azure Cloud में हमारा Virtual Server होता है।
  # आगे इसी VM पर SSH करेंगे, Nginx Install करेंगे और पहली Website Host करेंगे।

  name = "vm-dev-southeastasia-audix-001"

  # Enterprise Naming Convention
  # vm = Virtual Machine
  # dev = Environment
  # southeastasia = Azure Region
  # audix = Company Name
  # 001 = Resource Number

  resource_group_name = azurerm_resource_group.rg.name

  # VM इसी Resource Group के अंदर Create होगी।
  # Resource Group का Reference देने से Implicit Dependency अपने आप बन जाती है।

  location = azurerm_resource_group.rg.location

  # VM उसी Azure Region में Create होगी जहाँ बाकी Infrastructure बना है।

  size = "Standard_D2s_v3"

  # VM का Hardware Size।
  # Azure for Students Subscription में यह Size उपलब्ध है।
  # इसमें 2 vCPU और 8 GB RAM मिलती है।
  # आगे Nginx, Docker और छोटे Applications आराम से चल जाएंगे।

  admin_username = "azureuser"

  # Linux VM का Login User।
  # SSH करते समय यही Username उपयोग होगा।

  disable_password_authentication = false

  # Password Authentication Enable की गई है।
  # Production में इसे false नहीं रखते।
  # वहाँ केवल SSH Key Authentication उपयोग की जाती है।
  # Learning Purpose के लिए Password Enable रखा है।

  admin_password = "P@ssw0rd@123456"

  # VM Login Password।
  # Production Environment में Password Hardcode नहीं किया जाता।
  # वहाँ Azure Key Vault या Variables का उपयोग किया जाता है।

  network_interface_ids = [

    azurerm_network_interface.nic_vm01.id

  ]

  # VM सीधे Network से Connect नहीं होती।
  # VM हमेशा NIC के माध्यम से Network से जुड़ती है।
  # यही NIC पहले से Management Subnet और Public IP से Connected है।

  os_disk {

    caching = "ReadWrite"

    # Disk Cache Mode।
    # सामान्य Linux VM के लिए ReadWrite Recommended है।

    storage_account_type = "Premium_LRS"

    # Premium SSD Disk।
    # Fast Performance देती है।
    # Student Subscription में यदि उपलब्ध न हो तो StandardSSD_LRS या Standard_LRS उपयोग कर सकते हो।

  }

  source_image_reference {

    # यहाँ VM का Operating System Select किया जाता है।

    publisher = "Canonical"

    # Ubuntu Publisher

    offer = "ubuntu-24_04-lts"

    # Ubuntu Server 24.04 LTS

    sku = "server"

    # Server Edition

    version = "latest"

    # हमेशा Latest Stable Image Download होगी।

  }

  computer_name = "vm01"

  # Linux Hostname

  tags = {

    Environment = "Development"
    Project     = "Azure Landing Zone"
    Owner       = "Audix"
    ManagedBy   = "Terraform"

  }

  # यहाँ Explicit Dependency की आवश्यकता नहीं है।
  # NIC का Reference होने के कारण Terraform स्वयं समझ जाता है कि
  # पहले NIC Create होगी, उसके बाद VM बनेगी।
  # इसे Implicit Dependency कहते हैं और यही Best Practice है।

}




resource "azurerm_public_ip" "vm02_pip" {

  # VM-02 को Internet से Access करने के लिए Public IP बनाई जा रही है।

  name = "pip-vm02-dev-southeastasia-audix-001"

  # Azure Portal में दिखाई देने वाला Public IP का नाम।

  location = azurerm_resource_group.rg.location

  # Resource Group की Location ही उपयोग होगी।

  resource_group_name = azurerm_resource_group.rg.name

  # यह Public IP हमारे Resource Group के अंदर बनेगी।

  allocation_method = "Static"

  # Static Public IP हमेशा वही रहती है।

  sku = "Standard"

  # Standard SKU Production Environment के लिए Recommended है।

}



resource "azurerm_network_interface" "vm02_nic" {

  # VM-02 के लिए नई Network Interface (NIC) बनाई जा रही है।

  name = "nic-vm02-dev-southeastasia-audix-001"

  # Azure Portal में दिखाई देने वाला NIC का नाम।

  location = azurerm_resource_group.rg.location

  # NIC उसी Region में बनेगी जहाँ Resource Group है।

  resource_group_name = azurerm_resource_group.rg.name

  # NIC उसी Resource Group में बनेगी।

  ip_configuration {

    # NIC की IP Configuration Define की जा रही है।

    name = "internal"

    # IP Configuration का Logical Name।

   subnet_id = azurerm_subnet.subnet["StreamFlix"].id

# "StreamFlix" हमारी for_each Map की Key है।
# VM-02 इसी Subnet में Deploy होगी।
# Reference हमेशा for_each की Key से किया जाता है।

    private_ip_address_allocation = "Dynamic"

    # Azure Automatically Private IP Assign करेगा।

    public_ip_address_id = azurerm_public_ip.vm02_pip.id

    # अभी बनाई गई Public IP इसी NIC से Attach होगी।

  }

}




resource "azurerm_linux_virtual_machine" "vm02" {

  # दूसरी Ubuntu Linux Virtual Machine बनाई जा रही है।

  name = "vm02"

  # Azure Portal में VM का नाम।

  location = azurerm_resource_group.rg.location

  # VM उसी Region में बनेगी।

  resource_group_name = azurerm_resource_group.rg.name

  # VM उसी Resource Group में बनेगी।

  size = "Standard_D2s_v3"

  # VM का Size।

  admin_username = "azureuser"

  # Linux Login User।

  network_interface_ids = [

    azurerm_network_interface.vm02_nic.id

    # VM-02 के साथ VM-02 वाली NIC Attach की जा रही है।

  ]

  disable_password_authentication = true

  # Password Login Disable रहेगा, केवल SSH Key से Login होगा।

  admin_ssh_key {

    # SSH Public Key Configure की जा रही है।

    username = "azureuser"

    # SSH User।

    public_key = file("~/.ssh/id_rsa.pub")

    # Local Machine की Public Key पढ़ी जाएगी।
    # यदि तुम Azure Generated Key उपयोग कर रहे हो तो उसी Key का Path देना।

  }

  os_disk {

    # Operating System Disk Configuration।

    caching = "ReadWrite"

    # Read और Write दोनों के लिए Cache Enable रहेगा।

    storage_account_type = "Premium_LRS"

    # Premium SSD Disk उपयोग होगी।

  }

  source_image_reference {

    # Ubuntu Image Define की जा रही है।

    publisher = "Canonical"

    # Ubuntu का Publisher।

    offer = "ubuntu-24_04-lts"

    # Ubuntu 24.04 LTS।

    sku = "server"

    # Server Edition।

    version = "latest"

    # हमेशा Latest Stable Version Deploy होगी।

  }

}

