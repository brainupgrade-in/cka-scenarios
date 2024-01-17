FROM mcr.microsoft.com/vscode/devcontainers/base:0-buster

ARG KIND_VERSION

RUN curl -Lo ./kind "https://kind.sigs.k8s.io/dl/${KIND_VERSION}/kind-linux-amd64" \
    && chmod +x ./kind \
    && mv ./kind /usr/local/bin/kind

RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl" \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl

COPY setup.sh .devcontainer/
RUN chmod +x .devcontainer/setup.sh
