# openssh-server

Usage:

```
$ docker run --rm -p 2222:22 -v $HOME/.ssh/id_rsa.pub:/root/.ssh/authorized_keys ghcr.io/smpio/openssh-server
$ ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 2222 localhost
```
