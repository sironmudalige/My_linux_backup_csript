# Linux Backup Automation Script

This project contains a simple Bash script to automate directory backups on Linux systems.

## Features
- Accepts a directory path as input
- Creates a compressed `.tar.gz` backup
- Adds timestamp to backup name
- Basic error handling
- Store logs about the script

## Usage
```bash
chmod +x backup.sh
./backup.sh /path/to/directory
