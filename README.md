**tl;dr;** pass in 2 --mount settings.  First, what you would find in .komodo directory.  It can be empty except for komodo.conf like the repo's _node_ dir.  Second zcash-params.

put your chain data in the node directory, alternatively change the --mount settings when you run it, also --mount setting needs zcash-params passed in.

```
git clone https://github.com/imylomylo/docker-komodod.git
cd docker-komodo-smartcontracts
sudo docker build -t kmd-cc .
sudo docker run -it -p 7770:7770  --mount src=/home/me/docker-komodod/node,target=/root/.komodo,type=bind --mount src=/home/me/.zcash-params,target=/root/.zcash-params,type=bind kmd-cc
```
it will drop you into a shell
```
/komodo/src/komodod  -ac_cc=1 -ac_name=ATEST -addressindex=1 -spentindex=1 -ac_supply=1000 -ac_reward=10000000000000 -pubkey=033ace50aedf8df70035b962a805431363a61cc4e69d99d90726a2d48fb195f68c -regtest &
/komodo/src/komodo-cli -ac_name=ATEST -regtest getinfo
/komodo/src/komodo-cli -ac_name=ATEST -regtest generate 5
/komodo/src/komodo-cli -ac_name=ATEST -regtest getnewaddress
/komodo/src/komodo-cli -ac_name=ATEST -regtest getwalletinfo
```


**Tips:**
 - It is designed so that you have the zcash-params already downloaded, so you can reuse them across many containers/blockchains in the ecosystem.
 - The node directory has the blockchain data and config.
 - Runs as root - this will get updated
 - The node/komodo.conf file has rpcuser and rpcpassword.  You can use curl to interact.
 - Alternatively something like `sudo docker exec /komodo/src/komodo-cli getinfo` might work
 - curl should work, something like `curl --user rpcuser:passworddrowssap --data '{"method": "getinfo"}' http://127.0.0.1:7771`
