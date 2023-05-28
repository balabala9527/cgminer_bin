#/bin/ash
echo "read core freq"
./SocReg $1 40000114
echo "read core voltage"
./SocReg $1 4f0002e4
echo "read temp sensor"
./SocReg $1 4f0002e8
echo "read MCU core state machine"
./SocReg $1 4f0002f8
echo "read cache start"
./SocReg $1 4000040c
echo "read dag start"
./SocReg $1 41300024
echo "read hashrate"
./SocReg $1 41300044
./SocReg $1 42300044
./SocReg $1 43300044
echo read "cache head info"
./SocReg $1 4f0002e0
echo read "nonce count"
./SocReg $1 4f0002f0
echo read "nonce accept count"
./SocReg $1 4f0002f4
echo read "work minute"
./SocReg $1 4f0002ec
