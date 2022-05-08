FROM amazon/aws-cli:2.6.1
RUN curl -sL -o /usr/bin/jq https://stedolan.github.io/jq/download/linux64/jq
RUN chmod +x /usr/bin/jq
RUN curl -sL -o /usr/bin/kubectl https://dl.k8s.io/release/v1.23.6/bin/darwin/amd64/kubectl && \
    curl -sL -o /usr/bin/aws-iam-authenticator https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.5.7/aws-iam-authenticator_0.5.7_linux_amd64  && \
    chmod +x /usr/bin/aws-iam-authenticator && \
    chmod +x /usr/bin/kubectl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
