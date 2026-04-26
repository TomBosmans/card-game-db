FROM mcr.microsoft.com/devcontainers/ruby:4.0-trixie

# Rename vscode user to dev
RUN usermod -l dev -d /home/dev -m vscode && groupmod -n dev vscode

RUN apt-get update && apt-get install -y \
    libsqlite3-dev \
    nodejs \
    npm \
  && rm -rf /var/lib/apt/lists/* \
  && gem install rails -v '~> 8.1' \
  && npm install -g opencode-ai

# Fix RVM gem directory permissions for dev user
RUN chown -R dev:dev /usr/local/rvm/gems

