helm repo add rstudio https://helm.rstudio.com
helm upgrade --install rstudio-eth rstudio/rstudio-workbench --version=0.5.6 \
    --set userCreate="true" \
    --set config.secret.database\.conf.password=rstudio


# Connect to geth node RPC interface
curl -X POST http://<GETH_IP_ADDRESS>:8545 \
    -H "Content-Type: application/json" \
   --data'{"jsonrpc":"2.0", "method":"<API_METHOD>", "params":[], "id":1}'