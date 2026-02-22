#  Linux Command Confidence – Cheat Sheet

##  Today’s Goal

**Build confidence in essential Linux commands used in real-world troubleshooting.**

**This cheat sheet focuses on:**

- Process Management  
- File System Operations  
- Networking Troubleshooting  

---

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
