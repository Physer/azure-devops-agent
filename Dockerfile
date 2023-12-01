FROM mcr.microsoft.com/dotnet/sdk:8.0-jammy

RUN apt update
RUN apt upgrade -y
RUN apt install -y curl git jq libicu70

ENV TARGETARCH="linux-x64"

WORKDIR /azp/

COPY ./start.sh ./
RUN chmod +x ./start.sh

ENV AGENT_ALLOW_RUNASROOT="true"

ENTRYPOINT ./start.sh