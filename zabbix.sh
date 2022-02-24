#! /bin/bash
find /tmp -type f -atime +10 -delete
statuscode=$?
zabbix_sender -vv -c /home/champillon/zabbix_agentd.conf -s "Sappix" -k temp.cleanup -o $statuscode