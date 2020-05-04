# Push Image to ACR

This action push your docker image to your Azure Container Registry (ACR).

To use this action, you need to generate an [token in your ACR](https://docs.microsoft.com/en-us/azure/container-registry/container-registry-repository-scoped-permissions#create-token---portal). 


## Inputs

### `acr-tokenname`
Name of your Token, configured in your ACR Token Settings.

### `acr-token`
Value of your Token, configured in your ACR Token Settings.

### `acr-account`
Your ACR Account like: myregistry.azurecr.io

### `acr-imagename`
Your Image name created before, like: myregistry.azurecr.io/hello-world:v1
