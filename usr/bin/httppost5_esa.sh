#!/bin/ash
echo -n "sh with long-term short-term"
echo $1
filename1="/tmp/httplong_ori.txt"
filename2="/tmp/httpshort_ori.txt"

filename1last="/tmp/httplong.txt"
filename2last="/tmp/httpshort.txt"

rm $filename1last
rm $filename2last
rm $filename1
rm $filename2

echo "API Command summary"
#echo "{\"vdc\":1, \"SN\":\"testSN\", \"appid\":124578, \"data\":{\"summary\":" > $filename1
echo "{\"summary\":" > $filename1
echo -n '{"command":"summary", "parameter":"null"}' | nc 127.0.0.1 4028 >> $filename1
echo ", \"info\":" >> $filename1
echo "API Command info"
echo -n '{"command":"ascset", "parameter":"0,info,null"}' | nc 127.0.0.1 4028 >> $filename1
echo ", \"status\":" >> $filename1
echo "API Command status"
echo -n '{"command":"ascset", "parameter":"0,status,null"}' | nc 127.0.0.1 4028 >> $filename1
echo ", \"pools\":" >> $filename1
echo "API Command pools"
echo -n '{"command":"pools", "parameter":"null"}' | nc 127.0.0.1 4028 >> $filename1
echo ", \"chips\":" >> $filename1
echo "API Command chips"
echo -n '{"command":"ascset", "parameter":"0,chips,null"}' | nc 127.0.0.1 4028 >> $filename1
echo ", \"datas\":" >> $filename1
echo "API Command datas"
echo -n '{"command":"ascset", "parameter":"0,datas,null"}' | nc 127.0.0.1 4028 >> $filename1
echo ", \"memo\":" >> $filename1
echo "API Command memo"
echo -n '{"command":"ascset", "parameter":"0,memo,null"}' | nc 127.0.0.1 4028 >> $filename1
echo ", \"core1\":" >> $filename1
echo "API Command cores"
echo -n '{"command":"ascset", "parameter":"0,cores,0x00"}' | nc 127.0.0.1 4028 >> $filename1
echo ", \"core2\":" >> $filename1
echo "API Command cores"
echo -n '{"command":"ascset", "parameter":"0,cores,0x01"}' | nc 127.0.0.1 4028 >> $filename1
echo ", \"core3\":" >> $filename1
echo "API Command cores"
echo -n '{"command":"ascset", "parameter":"0,cores,0x02"}' | nc 127.0.0.1 4028 >> $filename1
echo ", \"net\":" >> $filename1
echo "API Command net"
echo -n '{"command":"ascset", "parameter":"0,net,null"}' | nc 127.0.0.1 4028 >> $filename1
echo ", \"hbsn\":" >> $filename1
echo "API Command hbsn"
echo -n '{"command":"ascset", "parameter":"0,hbsn,null"}' | nc 127.0.0.1 4028 >> $filename1
#echo "}}" >> $filename1
echo "}" >> $filename1

echo "API Command summary"
#echo "{\"vdc\":1, \"SN\":\"testSN\", \"appid\":124578, \"data:\"{\"summary\":" > $filename2
echo "API Command summary"
echo "{\"summary\":" > $filename2
echo -n '{"command":"summary", "parameter":"null"}' | nc 127.0.0.1 4028 >> $filename2
echo ", \"info\":" >> $filename2
echo "API Command info"
echo -n '{"command":"ascset", "parameter":"0,info,null"}' | nc 127.0.0.1 4028 >> $filename2
echo ", \"status\":" >> $filename2
echo "API Command status"
echo -n '{"command":"ascset", "parameter":"0,status,null"}' | nc 127.0.0.1 4028 >> $filename2
echo ", \"pools\":" >> $filename2
echo "API Command pools"
echo -n '{"command":"pools", "parameter":"null"}' | nc 127.0.0.1 4028 >> $filename2
echo ", \"chips\":" >> $filename2
echo "API Command chips"
echo -n '{"command":"ascset", "parameter":"0,chips,null"}' | nc 127.0.0.1 4028 >> $filename2
echo ", \"datas\":" >> $filename2
echo "API Command datas"
echo -n '{"command":"ascset", "parameter":"0,datas,null"}' | nc 127.0.0.1 4028 >> $filename2
echo ", \"memo\":" >> $filename2
echo "API Command memo"
echo -n '{"command":"ascset", "parameter":"0,memo,null"}' | nc 127.0.0.1 4028 >> $filename2
echo "API Command cores"
echo "}" >> $filename2

cat $filename1 | tr -d '\n''\0' > $filename1last
cat $filename2 | tr -d '\n''\0' > $filename2last

