# 📌 Public IP वास्तव में क्या है?
                         Internet
                              │
                              │
                     20.205.x.x.x
                     Public IP
                              │
                              ▼
                    Azure Network
                              │
                              ▼
                          VM-01 (Private IP)
                         10.0.1.4
Internet केवल Public IP को जानता है।
Azure VM वास्तव में Private IP पर चलती है।
Public IP केवल Internet और Azure Network के बीच एक Entry Point का काम करती है।

---

# 📌 Static vs Dynamic
                Public IP

                    │

        ┌───────────┴───────────┐

        │                       │

        ▼                       ▼

     Dynamic                 Static

IP बदल सकती है       IP हमेशा वही रहती है

Testing               Production

Temporary             DNS / Cloudflare

Not Recommended       Best Practice

---

# 📌 हमारी Architecture
                    Internet

                        │

                Static Public IP

                        │

                 Network Interface

                        │

                      VM-01

                 Private IP (10.0.1.x)