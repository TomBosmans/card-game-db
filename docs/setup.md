# Development Setup

This project uses a [Dev Container](https://containers.dev/) for a consistent development environment. The container includes Ruby 4.0, Rails 8.1, Node.js, SQLite, and OpenCode.

## Prerequisites

You need a tool that supports Dev Containers:

- **VS Code**: Install the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers). VS Code will detect the `.devcontainer/` folder and prompt you to reopen in the container.
- **DevPod**: Install [DevPod](https://devpod.sh/) and point it at the repository. DevPod works with any IDE and supports multiple container runtimes (Docker, Podman, Kubernetes, etc.).
- **GitHub Codespaces**: Open the repository in a Codespace directly from GitHub.

All three options use the same `.devcontainer/devcontainer.json` configuration.

## Getting Started

1. Open the project in your Dev Container using one of the methods above.
2. Once inside the container, run:

```sh
make
```

This runs `bin/setup`, which installs dependencies, prepares the database, and starts the development server on port 3000.

## Useful Commands

Run `make help` to see all available commands. See the [README](../README.md) for a full list.
