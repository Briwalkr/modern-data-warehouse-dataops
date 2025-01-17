#!/bin/bash

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

sudo az extension add --name application-insights

sudo az extension add --name azure-devops

# Test AZ Monitor Extension (auto installed on first execution of a monitor command)
az monitor action-group list --query "[?name=='ADF_Admins']" #--query-examples #resource-group "rg-Monitor" --subscription $env:AZURE_SUBSCRIPTION_ID

# Configure connection to DevOps Project
az devops configure --defaults organization=https://dev.azure.com/brwalker-Projects/ project=DataOps-Parking-Sensors

sudo apt install makepasswd

makepasswd -h

pip install databricks-cli

databricks --version

az account set -s $AZURE_SUBSCRIPTION_ID 

# Login as Service Principal
az login --service-principal -u $BRWALKER_SP_ID -p $BRWALKER_SP_SEC --tenant $AZURE_TENANT_ID
az account set -s $AZURE_SUBSCRIPTION_ID 
