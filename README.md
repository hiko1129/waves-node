waves-node
====

This is dockerized waves node.

## Description
waves node by docker  
[Waves-Node-REST-API](https://github.com/wavesplatform/Waves/wiki/Waves-Node-REST-API)

## Requirement
docker  
docker-compose

## Usage
edit waves-mainnet.conf  
edit waves-testnet.conf  
```
docker-compose up -d
```

## Example
```
docker-compose up -d
curl localhost:6869/addresses
```

## Author

[hiko1129](https://github.com/hiko1129)