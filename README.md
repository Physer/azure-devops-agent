# Azure DevOps Agent

## Introduction

This repository houses a pre-fab buildagent for Azure Devops in Docker.

## Source

The source for this buildagent can be found at Microsoft's documentation regarding [Docker agents for Azure Devops](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops)

## How to use

Create a container based on this Docker image, [hosted at the Docker hub](https://hub.docker.com/r/physer/azuredevops-agent).
For more information on the required environment variables, see [Microsoft's documentation](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#environment-variables).

You can use the following `docker run` command. Be sure to replace the environment variable's values with your organization values: `docker run --name selfhosted_agent -d -e AZP_URL=https://dev.azure.com/organizationname  -e AZP_TOKEN=personalaccesstoken  -e AZP_AGENT_NAME=selfhosted_devops_agent -e AZP_POOL="Self-hosted agents" physer/azuredevops-agent:latest`

There is also a `compose.yaml` file using `Docker Compose` for easy local testing. If you want to use this, be sure to copy over `.env.example` and rename the copy to `.env`. Fill the environment variables correctly as specified above.

## Additional software

Some additional software has been installed on this image:

- NodeJS v22.15
