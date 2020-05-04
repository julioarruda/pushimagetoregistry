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


```
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - name: Push Image to ACR
      uses: julioarruda/pushimagetoacr@v0
      with:
        acr-tokenname: ${{ secrets.ACR_TOKEN_NAME }}
        acr-token: ${{ secrets.ACR_TOKEN_VALUE }}
        acr-account: myregistry.azurecr.io
        acr-imagename: myregistry.azurecr.io/hello-world:v1

```