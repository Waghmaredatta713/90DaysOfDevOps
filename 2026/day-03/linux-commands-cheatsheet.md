#  Linux Command Confidence – Cheat Sheet

##  Today’s Goal

**Build confidence in essential Linux commands used in real-world troubleshooting.**

**This cheat sheet focuses on:**

- Process Management  
- File System Operations  
- Networking Troubleshooting  

---

##  𝗖𝗼𝗿𝗲 𝗟𝗶𝗻𝘂𝘅 𝗣𝗵𝗶𝗹𝗼𝘀𝗼𝗽𝗵𝘆

  **“Everything in Linux is either a file or a directory.”**

  **“Everything starts with a process.”**


##  Process Management

| Command | Description |
|----------|-------------|
| `ps` | Show process status. Often combined with `grep` to find specific processes. |
| `ps -ef` | Display detailed information about all running processes. |
| `top` | Real-time view of CPU and memory usage by processes. |
| `htop` | Interactive and user-friendly process monitor. |
| `kill PID` | Terminate a process using its Process ID (PID). |

---

##  File System

| Command | Description |
|----------|-------------|
| `ls -al` | List files (including hidden) with detailed permissions. |
| `pwd` | Display the current working directory. |
| `cd` | Change directory. |
| `cp` | Copy files or directories. |
| `mv` | Move or rename files. |
| `rm -r` | Remove directories recursively. |
| `cat` | View file contents. |

---

##  Networking Troubleshooting

| Command | Description |
|----------|-------------|
| `ip a` | Display IP addresses of all network interfaces. |
| `ping host` | Test network connectivity to a host. |
| `netstat -nutlp` | Show listening TCP/UDP ports and associated services. |
| `curl URL` | Test HTTP/HTTPS response from a service. |
| `tcpdump` | Capture live network traffic for deeper debugging. |
| `ss -tulnp` | Modern alternative to `netstat` for checking open ports. |

---
##  User Management

| Command | Description |
|----------|------------|
| `whoami` | Display current logged-in user |
| `groupadd` | Create a new group |
| `usermod -aG gp1 ab1` | Add user `ab1` to group `gp1` |
| `userdel` | Delete a user account |

---

##  Disk Usage

| Command | Description |
|----------|------------|
| `df` | Display free disk space |
| `du` | Show file/folder sizes on disk |
| `du -h` | Display disk usage in human-readable format |
| `free -m` | Display free and used memory in MB |
| `du -sh` | Show total disk usage of current directory |

---

##  System Information

| Command | Description |
|----------|------------|
| `uname -a` | Detailed Linux system information |
| `uname -r` | Show kernel version |
| `su` / `sudo` | Run command with superuser privileges |
| `hostname` | Show system host name |
| `man COMMAND` | Show manual page of a command (Press `q` to exit) |

---

##  Linux File Permissions

| Section | Description |
|----------|------------|
| File Structure | `-rwxr-xr--` → File type + User + Group + Others permissions |
| User (u) | File owner permissions |
| Group (g) | Group permissions |
| Others (o) | All other users permissions |

---

###  Permission Types

| Symbol | Meaning | Value |
|----------|------------|-------|
| `r` | Read | 4 |
| `w` | Write | 2 |
| `x` | Execute | 1 |
| `-` | No permission | 0 |

---

###  Permission Numbers (Octal)

| Number | Permission | Calculation |
|----------|------------|-------------|
| `7` | `rwx` | 4 + 2 + 1 |
| `6` | `rw-` | 4 + 2 |
| `5` | `r-x` | 4 + 1 |
| `4` | `r--` | 4 |
| `0` | `---` | 0 |

---

###  Common chmod Commands

| Command | Description |
|----------|------------|
| `chmod 644 file.txt` | Owner: read/write, Group & Others: read only |
| `chmod 755 script.sh` | Owner: full access, Group & Others: read/execute |
| `chmod 777 file.txt` | Full access to everyone (⚠ Not recommended in production) |
| `chmod u+x file.sh` | Add execute permission to user |
| `chmod g-w file.txt` | Remove write permission from group |
| `chmod o=r file.txt` | Set others to read-only |

---

## Why This Matters for DevOps

**Real production incidents are solved at the command line.**

**When something breaks, you must quickly:**

- Identify failing processes  
- Verify file paths and permissions  
- Check open ports and services  
- Confirm network connectivity  
- Validate application responses  

**The faster you diagnose →**  
**The faster you restore service →**  
**The more trust you build as an operator.**
