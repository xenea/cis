# Packer-custom-image
Packer Script to create custom Image using ansible  


link : https://developer.hashicorp.com/packer/downloads

# Requirement
- Virtual Machine (with networking/internet)
- Create Service Account in GCP, give it permissions following permission
```
roles/iam.serviceAccountUser (Service Account User)
roles/compute.instanceAdmin.v1 (Compute Instance Admin v1)
```
- Install Packer
```
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update && sudo apt install packer
```

# Run the script
packer build template.json