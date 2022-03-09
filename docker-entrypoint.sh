#!/bin/sh

set -euo pipefail

if ! ls /etc/ssh/ssh_host_* >& /dev/null; then
    ssh-keygen -A
fi

while [[ $# -gt 0 ]]; do
    echo "$1" >> /etc/sshd_config
    shift
done

exec /usr/sbin/sshd -e -D -f /etc/sshd_config
