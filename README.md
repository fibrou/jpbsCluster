## Get nodes names and label them with the appropriate node role
```
kubectl get nodes
```
```
kubectl label node <GETH_NODE_NAME> node/role=geth
```

```
kubectl label node <RSTUDIO_NODE_NAME> node/role=rstudio
```

## Connect to geth node RPC interface
```
curl -X POST http://geth-service.geth.svc.cluster.local:8545 \
    -H "Content-Type: application/json" \
   --data'{"jsonrpc":"2.0", "method":"<API_METHOD>", "params":[], "id":1}'
```
