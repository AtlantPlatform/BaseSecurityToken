all:

init:
	mkdir -p var
	geth --datadir=var/chain/ init var/genesis.json

node:
	geth --datadir=var/chain/ --rpc

attach:
	geth attach var/chain/geth.ipc

compile: # the main contract
	solc contracts/BaseSecurityToken.sol

lint:
	solhint "contracts/**/*.sol"
	solium -d contracts/
