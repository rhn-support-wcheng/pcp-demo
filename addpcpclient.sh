#!/bin/bash
pmlogconf /var/lib/pcp/config/pmlogger/config.$1
echo "$1 n n PCP_LOG_DIR/pmlogger/$1 -r -T24h10m -c config.$1" > /etc/pcp/pmlogger/control.d/$1
systemctl restart pmlogger
