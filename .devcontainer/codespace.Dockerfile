
FROM mcr.microsoft.com/vscode/devcontainers/universal:1-focal

# Prepare Ansible environment
WORKDIR /workspace

COPY ./install.sh ./

# Installation
RUN sudo chmod +x ./install.sh && sudo ./install.sh && rm -rf ./install.sh
