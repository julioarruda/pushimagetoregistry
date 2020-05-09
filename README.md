# Push Image to ACR

This action push your docker image to private Registry .

## Inputs

### `acr-tokenname`
Username for your registry.

### `acr-token`
Password or Token used in your registry..

### `acr-account`
Your Registry Account: myregistry.azurecr.io

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