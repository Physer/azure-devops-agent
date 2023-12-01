FROM alpine

RUN apk update
RUN apk upgrade
RUN apk add bash curl git icu-libs jq

ENV TARGETARCH="linux-musl-x64"

WORKDIR /azp/

COPY ./start.sh ./
RUN chmod +x ./start.sh

ENV AGENT_ALLOW_RUNASROOT="true"

ENTRYPOINT ./start.sh