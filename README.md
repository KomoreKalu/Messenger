# Messenger

使用smstools3转发短信至TG/QQ

### 依赖

`bash curl iconv smstools3 kmod-usb-serial kmod-usb-serial-wwan kmod-usb-serial-option usb-modeswitch`

### 使用

git clone https://hub.fastgit.org/KomoreKalu/Messenger.git && cd Messenger

cp smsd.conf /etc/smsd.conf

补充forward.sh内的ID和TOKEN信息并取消toQmsg或toTG的注释

### 参考

[Openwrt/LEDE 利用 3G 上网卡推送短信到 Telegram/微信](https://lte.pw/lede-openwrt-smstools3-push-sms-to-telegram.html)

[使用smstools3转发短信至TG/QQ](https://akihi.ink/2021/03/16/SMS-forwarding/)

[Qmsg酱](https://qmsg.zendee.cn/api.html)