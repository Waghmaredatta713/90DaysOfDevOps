#  Linux Commands Cheat Sheet

---

##  Process Management

| Command | Description |
|----------|-------------|
| `ps` | Show process status. Often used with `grep`. |
| `ps -ef` | Print detailed process overview. |
| `top` | Display sorted information about running processes. |
| `kill PID` | Kill a process using its Process ID (PID). |
| `htop` | Interactive process viewer with visual highlights. |

---

##  File System

| Command | Description |
|----------|-------------|
| `ls` | List files and subfolders in the current directory. |
| `ls -a` | Show hidden files and folders. |
| `pwd` | Display current working directory path. |
| `mv` | Move or rename a file. |
| `cp` | Copy a file. |
| `rm -r` | Recursively delete a directory. |
| `cat` | View file contents. |

---

##  Networking

| Command | Description |
|----------|-------------|
| `ifconfig` | Display all network interfaces with IP addresses. |
| `ping host` | Test connectivity using ICMP echo request. |
| `netstat -nutlp` | Show listening TCP/UDP ports and programs. |
| `curl LINK` | Display the HTML source of a URL. |
| `tcpdump` | Capture live network packets. |

---

## 👤 User Management

| Command | Description |
|----------|-------------|
| `whoami` | Show current logged-in user. |
| `groupadd` | Create a new group. |
| `usermod -aG gp1 ab1` | Add user `ab1` to group `gp1`. |
| `userdel` | Delete a user account. |

---

##  Disk Usage

| Command | Description |
|----------|-------------|
| `df` | Display free disk space. |
| `du` | Show file/folder disk usage. |
| `du -h` | Display disk usage in human-readable format. |
| `free -m` | Display free and used memory in MB. |
| `du -sh` | Show total disk usage of current directory. |

---

##  System Information

| Command | Description |
|----------|-------------|
| `uname -a` | Display detailed Linux system information. |
| `uname -r` | Show kernel version. |
| `su` / `sudo` | Run commands with superuser privileges. |
| `hostname` | Show system host name. |
| `man COMMAND` | Display manual page for a command (press `q` to exit). |
