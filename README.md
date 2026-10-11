# Linux Security Audit

A Bash script for collecting basic Linux system and security information.

## Features

- User identity and group information
- Linux kernel and system information
- Disk and memory usage
- Top processes by CPU usage
- Listening network ports
- Logged-in users and sessions
- System cron directory listing
- Timestamped audit reports
- Basic error handling

## Requirements

- Linux or WSL2 with Ubuntu
- Bash
- Standard Linux utilities

## Usage

Run the audit and display the results:

```bash
./security_audit.sh
```

Save a timestamped report:

```bash
./security_audit.sh > "reports/audit_$(date +%Y-%m-%d_%H-%M-%S).txt"
```

## Disclaimer

This script performs basic information gathering. It is not a complete security audit or vulnerability scanner.
