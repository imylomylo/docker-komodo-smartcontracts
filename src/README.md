# make command used for simplicity
...more info to go here

# curl commands to test connectivity
## from host
ip address of docker container is 172.17.0.3
```
 curl --user user --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getinfo", "params": [] }' -H 'content-type: text/plain;' http://172.17.0.3:7771/
```

## from container
```
 curl --user user --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:7771/
```
