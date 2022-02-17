# Azure DevOps Agent

## Introduction
This repository houses a pre-fab buildagent for Azure Devops in Docker.

## Source
The source for this buildagent can be found at Microsoft's documentation regarding [Docker agents for Azure Devops](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops)

## How to use
Create a container based on this Docker image, [hosted at the Docker hub](https://hub.docker.com/r/physer/azure-devops-agent).
For the required environment variables, see [Microsoft's documentation](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#environment-variables)

## Additional software
Some additional software has been installed on this image:
- zip
- unzip
