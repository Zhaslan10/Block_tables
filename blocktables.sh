#!/bin/bash
#Блокировка сайтов
 /usr/bin/sudo iptables -t filter -A INPUT -p tcp -s vpngate.eubank.kz --dport https -j ACCEPT ;
 /usr/bin/sudo iptables -t filter -A OUTPUT -p tcp -d vpngate.eubank.kz --dport https -j ACCEPT ; 
 /usr/bin/sudo iptables -t filter -A INPUT -p tcp -s eufamily.eub.kz --dport https -j ACCEPT ;
 /usr/bin/sudo iptables -t filter -A OUTPUT -p tcp -d eufamily.eub.kz --dport https -j ACCEPT ; 
 /usr/bin/sudo iptables -t filter -A INPUT -p tcp -s eustudy.eub.kz --dport https -j ACCEPT ;
 /usr/bin/sudo iptables -t filter -A OUTPUT -p tcp -d eustudy.eub.kz --dport https -j ACCEPT ; 
 /usr/bin/sudo iptables -t filter -A INPUT -p tcp -s euspace.eub.kz --dport https -j ACCEPT ;
 /usr/bin/sudo iptables -t filter -A OUTPUT -p tcp -d euspace.eub.kz --dport https -j ACCEPT ; 
 /usr/bin/sudo iptables -t filter -A INPUT -p tcp -s zakaz.mechta.kz --dport https -j ACCEPT ;
 /usr/bin/sudo iptables -t filter -A OUTPUT -p tcp -d zakaz.mechta.kz --dport https -j ACCEPT ;
 /usr/bin/sudo iptables -t filter -A INPUT -p tcp -s kes.eubank.kz --dport https -j ACCEPT ;
 /usr/bin/sudo iptables -t filter -A OUTPUT -p tcp -d kes.eubank.kz --dport https -j ACCEPT ;
 /usr/bin/sudo iptables -t filter -A INPUT -p tcp --dport https -j DROP ;
 /usr/bin/sudo iptables -t filter -A OUTPUT -p tcp --dport https -j DROP ;
 /usr/bin/sudo iptables -t filter -A INPUT -p tcp --dport http -j DROP ;
 /usr/bin/sudo iptables -t filter -A OUTPUT -p tcp --dport http -j DROP ;
 /usr/bin/sudo sh -c "iptables-save > /etc/iptables.rules" ;
#Сохранение параметров IPtables
 /usr/bin/sudo cp /home/techman/EUBANK/IPT/IPTABLES.sh /etc/init.d/
 /usr/bin/sudo chmod ugo+x /etc/init.d/IPTABLES.sh
 /usr/bin/sudo update-rc.d IPTABLES.sh defaults
