$resourceGroup = (Get-AzResourceGroup)[0];

az vm create -g $resourceGroup -n LabVM --image UbuntuLTS --admin-username azureuser --generate-ssh-keys

az vm create -g $resourceGroup -n LabClientVM --image UbuntuLTS --admin-username azureuser --generate-ssh-keys

az network nsg rule delete -g $resourceGroup --nsg-name LabVMNSG -n default-allow-ssh
