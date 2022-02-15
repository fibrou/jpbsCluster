
## Get nodes names and label them with the appropriate node role
kubectl get nodes

kubectl label node <GETH_NODE_NAME> node/role=geth

kubectl label node <RSTUDIO_NODE_NAME> node/role=rstudio

kubectl get node --show-labels

# Delete all resources in a manifest file
kubectl delete -f <MANIFEST_FILE>
 
# Apply a manifest file
kubectl apply -f <MANIFEST_FILE>

# Follow the logs of a pod
kubectl logs <POD_NAME>

## Connect to geth node RPC interface
curl -X POST http://<GETH_IP_ADDRESS>:8545 \
    -H "Content-Type: application/json" \
   --data'{"jsonrpc":"2.0", "method":"<API_METHOD>", "params":[], "id":1}'
