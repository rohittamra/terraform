======================IF LOCAL=====================
PRereq:
Downlaod terraform and azure-cli

Go to location
ssh-keygen

cd /Users/rohittamra/Desktop/hackgarten/exercise

=======================IF GITHUB===================

az login

az account set --subscription a617c977-bd44-46fa-a9e2-84ce6ddd1ca5

az ad sp create-for-rbac --name "MyServicePrincipal" --role "Contributor" --scopes "/subscriptions/a617c977-bd44-46fa-a9e2-84ce6ddd1ca5"
 
go in settings of github > secrets values for:
    AZURE_CLIENT_ID --> appId
    AZURE_CLIENT_SECRET --> password
    AZURE_SUBSCRIPTION_ID --> subscription from az login
    AZURE_TENANT_ID --> tenant 


ALSO create a storage group and change the values in backend.tf
dont forget to create container 

ANd get the value of 
    AZURE_STORAGE_ACCESS_KEY ---> Access key of the storage account


================================

ON LOCAL TO CONNECT:

chmod 400 id_rsa

ssh -i ./id_rsa <user>@<ip>