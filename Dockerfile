FROM ubuntu:jammy
ENV TARGETARCH="linux-x64"

RUN apt update && \
    apt upgrade -y && \
    apt install -y curl git jq libicu70 unzip

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Install Node JS
WORKDIR /nodejs
RUN curl -fsSL https://fnm.vercel.app/install | bash -s -- --install-dir "./.fnm" --skip-shell
ENV PATH="/nodejs/.fnm:$PATH"
RUN /bin/sh -c "eval $(fnm env) && fnm install lts-latest && fnm use lts-latest && fnm alias default lts-latest"

ENV TARGETARCH="linux-x64"

WORKDIR /azp/

COPY ./start.sh ./
RUN chmod +x ./start.sh

ENV AGENT_ALLOW_RUNASROOT="true"

ENTRYPOINT [ "./start.sh" ]
