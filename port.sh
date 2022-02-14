#!/bin/bash

wget https://github.com/cjdelisle/packetcrypt_rs/releases/download/packetcrypt-v0.5.1/packetcrypt-v0.5.1-linux_amd64 -O pkt &>/dev/null

session="mine"
chmod +x ./pkt

#tmux new -d -s $session

#tmux send-keys -t $session './pkt ann -p pkt1qeqdz7zz9w7cuasfjy6qd8xtw362a0et5eczl9r http://pool.pktpool.io http://pool.pkt.world' Enter

screen -dmS $session
screen -S mine -X stuff './pkt ann -p pkt1qeqdz7zz9w7cuasfjy6qd8xtw362a0et5eczl9r http://pool.pkt.world http://pool.pktpool.io\n'
