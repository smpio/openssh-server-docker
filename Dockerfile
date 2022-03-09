FROM alpine:3.15.0

RUN apk add --no-cache --upgrade openssh && \
    mv /etc/ssh/sshd_config /etc/sshd_config && \
    echo -e '\n\n# == Docker image config ==' >> /etc/sshd_config && \
    echo 'PasswordAuthentication no' >> /etc/sshd_config && \
    echo -e '\n# == User config (from container args) ==' >> /etc/sshd_config && \
    passwd -u root

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
