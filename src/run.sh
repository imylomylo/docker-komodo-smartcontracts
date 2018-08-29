#!/bin/bash
echo "/komodo/src/komodod  -ac_cc=1 -addressindex=1 -spentindex=1 -txindex=1  -ac_supply=100000000  -pubkey=033ace50aedf8df70035b962a805431363a61cc4e69d99d90726a2d48fb195f68c -regtest &"
sudo rm -Rf node/regtest
sudo docker run -it -p 26724 -p 26725 --mount src=/home/${USER}/docker-komodod-smartcontracts/node,target=/root/.komodo,type=bind --mount src=/home/${USER}/.zcash-params,target=/root/.zcash-params,type=bind kmd-cc
#sudo docker run -it -p 127.0.0.1:7771:7771 --mount src=/home/${USER}/docker-komodod-smartcontracts/node,target=/root/.komodo,type=bind --mount src=/home/${USER}/.zcash-params,target=/root/.zcash-params,type=bind kmd-cc

#sudo docker stop $(sudo docker ps -a -q)
#sudo docker ps -a
#sudo docker rm $(sudo docker ps -a -q)
