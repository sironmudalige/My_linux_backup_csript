# Linux dockerized Backup Automation Script

This project demonstrates how to automate directory backups using a bash script running inside a container.

## Features
- Uses docker for a consistant environment
- Uses volumes to access host files
- Creates compressed '.tar.gz' backups
- Container is removed after execution

## Requirements
- Docker
- Linux/WSL

# How it works
- Host directory is mounted in to the container
- Backup is created using 'tar'
- Backup file is saved back to the host

## Usage

Build the Docker image:
```bash
docker build -t siron-backup .
