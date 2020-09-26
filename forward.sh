#!/bin/bash
ID= #chat_id
TOKEN= #token
if [ "$1" == "RECEIVED" ]; then
	FROM=$(sed -n '1p' < "$2" | awk -F ': ' '{printf $2}')
	BODY=$(sed -e '1,/^$/ d' < "$2" | iconv -f UNICODEBIG -t UTF-8)
	CONTENT="新短信%0a来自:%20$FROM%0a$BODY"
	echo -e "$(date)\n$FROM\n$BODY\n" >> /root/sms/sms.log
	curl -d "chat_id=$ID&text=$CONTENT" -X POST https://api.telegram.org/bot$TOKEN/sendMessage # -x socks5://172.16.7.1:3077 
fi
