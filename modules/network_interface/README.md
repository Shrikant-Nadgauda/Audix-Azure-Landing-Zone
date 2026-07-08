NIC वास्तव में कैसे काम करती है?
                 Internet
                      │
                      │
             Static Public IP
                      │
                      ▼
            Network Interface (NIC)
        ┌──────────────────────────┐
        │ Private IP : 10.0.1.4    │
        │ Public IP  : 20.x.x.x    │
        └──────────────────────────┘
                      │
                      ▼
                 Management Subnet
                      │
                      ▼
                   VM-01
Azure में Flow
VM
 │
 ▼
NIC
 │
 ├── Private IP
 │
 ├── Public IP
 │
 └── Connected Subnet

याद रखने की Trick:

VM = Computer
NIC = Network Card
Subnet = Switch Port
Public IP = Internet Address
Private IP = Internal Address