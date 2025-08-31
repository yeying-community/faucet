mkdir -p logs
PRIVATE_KEY=$(grep PRIVATE_KEY .env | cut -d '=' -f2-)
nohup build/faucet -httpport 7661 -wallet.provider https://blockchain.yeying.pub -wallet.privkey ${PRIVATE_KEY} 2>&1 > logs/faucet.log &
