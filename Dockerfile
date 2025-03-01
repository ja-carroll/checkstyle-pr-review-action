FROM alpine:3.10

ENV CHECKSTYLE_PR_VERSION=v1.0.9

RUN wget -O - -q https://raw.githubusercontent.com/ja-carroll/checkstyle-pr-review/main/install.sh | sh -s -- -b /usr/local/bin/ ${CHECKSTYLE_PR_VERSION}
COPY entrypoint.sh /entrypoint.sh 

ENTRYPOINT ["/entrypoint.sh"]
