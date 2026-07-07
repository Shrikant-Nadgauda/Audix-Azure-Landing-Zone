# 💡 for_each कैसे काम करता है?
                    for_each

                        │

        ┌───────────────┼────────────────┐────────────────┐

        │               │                │               │

        ▼               ▼                ▼               ▼

 GatewaySubnet   AzureBastionSubnet   Management    StreamFlix

 10.0.0.0/27      10.0.0.32/26      10.0.1.0/24   10.0.2.0/24

        │               │                │               │

        └───────────────┴────────────────┴───────────────┘

                    Terraform Loop

                           │

                           ▼

                 4 Subnets Automatically Created

याद रखने की Trick:
for_each का मतलब है "Map में जितनी Entries होंगी, Terraform उतनी बार Resource Create करेगा।"
each.key = Resource का नाम
each.value = उस Resource की Value (CIDR Block)



भाई Error बिल्कुल सही है। 👍 Azure CIDR Validation कर रहा है।

तुमने लिखा है:

AzureBastionSubnet = "10.0.0.32/26"

लेकिन /26 Network हमेशा इन Addresses से शुरू होता है:

10.0.0.0/26
10.0.0.64/26
10.0.0.128/26
10.0.0.192/26

10.0.0.32/26 एक Valid Network Address नहीं है, इसलिए Azure ने Reject कर दिया।

अभी हमारा Address Plan बदलते हैं
VNet
10.0.0.0/16

│
├── GatewaySubnet
│   10.0.0.0/27
│
├── AzureBastionSubnet
│   10.0.0.64/26
│
├── Management
│   10.0.1.0/24
│
└── StreamFlix
    10.0.2.0/24
अपना Code बदलो

for_each = {

  GatewaySubnet      = "10.0.0.0/27"

  AzureBastionSubnet = "10.0.0.64/26"

  Management         = "10.0.1.0/24"

  StreamFlix         = "10.0.2.0/24"

}
क्यों?

GatewaySubnet

10.0.0.0 ─────────────── 10.0.0.31
            /27

उसके बाद अगला Available /26 Boundary है

10.0.0.64 ────────────── 10.0.0.127
            /26

इसलिए 10.0.0.64/26 Valid है।

# 🎯 एक चीज़ और

यही कारण है कि CIDR को हमने Documentation में Short नहीं बल्कि थोड़ा Detail में पढ़ाया था। Networking में CIDR Boundary समझना बहुत ज़रूरी है।

अब Code बदलो और फिर:

terraform plan
terraform apply

चलाओ। इस बार चारों Subnets सफलतापूर्वक Create हो जाएँगे।