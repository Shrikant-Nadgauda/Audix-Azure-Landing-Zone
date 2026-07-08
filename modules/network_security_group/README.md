NSG Association कैसे काम करती है?
                  Internet
                      │
                      ▼
                Public IP
                      │
                      ▼
                    NIC
                      │
          ┌───────────┴───────────┐
          │                       │
          ▼                       ▼
   NSG Association           Private IP
          │                       │
          └───────────┬───────────┘
                      ▼
                     VM
अगर NSG Associate नहीं करेंगे तो क्या होगा?
VM
 │
 ▼
NIC
 │
 ▼
No NSG Attached
 │
 ▼
NSG Rules कभी लागू नहीं होंगी

यानी आपने चाहे 100 Rules बना लिए हों, लेकिन Association नहीं है तो Rules का कोई Effect नहीं होगा।