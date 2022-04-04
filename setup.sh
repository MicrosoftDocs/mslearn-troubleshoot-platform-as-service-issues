#!/bin/bash
resourceGroup=`az group list --query '[0].name' --output tsv`

az vm create -g $resourceGroup -n LabVM --image UbuntuLTS --admin-username azureuser --generate-ssh-keys

az vm create -g $resourceGroup -n LabClientVM --image UbuntuLTS --admin-username azureuser --generate-ssh-keys

az network nsg rule delete -g $resourceGroup --nsg-name LabVMNSG -n default-allow-ssh
