# Shell Scripts Repository

Welcome to the Shell Scripts Repository! This collection contains various shell scripts designed to automate tasks, monitor system performance, and manage user accounts. Each script is organized into subdirectories based on its functionality.

## Table of Contents

- [Overview](#overview)
- [Directory Structure](#directory-structure)
- [Scripts](#scripts)
  - [Backups](#backups)
  - [Monitoring](#monitoring)
  - [Network](#network)
  - [User Management](#user-management)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Overview

This repository aims to provide useful shell scripts for various system administration tasks. Whether you need to monitor CPU and memory usage, perform backups, or check the reachability of an IP address, you'll find relevant scripts here.

## Directory Structure

    shell-scripts/
    │
    ├── backups/
    │ ├── automated_backup.sh
    │ └── db_backup.sh
    ├── monitoring/
    │ ├── cpu_memory_usage.sh
    │ └── disk_space_check.sh
    ├── network/
    │ ├── ip_address_checker.sh
    │ └── ping_monitor.sh
    ├── user_management/
    │ ├── user_creation.sh
    │ └── login_notification.sh
    ├── utilities/
    │ ├── file_cleanup.sh
    │ ├── instal_packages.sh
    │ └── text_extract.sh
    ├── README.md
    └── LICENSE

## Scripts

### Backups

- **automated_backup.sh**: This script creates backups of specified directories.
- **db_backup.sh**: This script performs a backup of a database.

### Monitoring

- **disk_space_check.sh**: This script checks and logs the available disk space.
- **cpu_memory_usage.sh**: This script monitors and logs CPU and memory usage every minute.

### Network

- **ping_monitor.sh**: This script pings a specified host and logs the results.
- **ip_address_checker.sh**: This script checks if a given IP address is reachable.

### User Management

- **user_creation.sh**: This script automates user account creation.
- **login_notification.sh**: This script sends a notification when a user logs in.

## Usage

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/your-username/shell-scripts-repo.git
   cd shell-scripts-repo
   ```
