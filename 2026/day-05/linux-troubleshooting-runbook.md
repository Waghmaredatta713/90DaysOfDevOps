**90DaysOfDevOps**

# 📝 Task

**Today’s goal was to run a focused troubleshooting drill.**

I selected a running system service (**Docker Engine**) and performed the following:

- Captured a quick health snapshot (CPU, memory, disk, network)
- Reviewed service logs
- Analyzed service state
- Created a mini runbook for incident response

---

#  Day 05 – Linux Troubleshooting Drill  
##  Target Service: Docker (`docker.service`)

This runbook documents a structured troubleshooting drill covering:

- Environment validation  
- Filesystem sanity  
- CPU & Memory  
- Disk & Storage  
- Network  
- Logs & Service health  
- Escalation strategy  

---

# 1️⃣ Environment Basics

## 🔹 uname -a

![uname](./images/uname.png)

- Linux → OS Kernel  
- AWS optimized kernel  
- x86_64 → 64-bit architecture  

---

## 🔹 cat /etc/os-release

![os-release](./images/os-release.png)

- Ubuntu 24.04.3 LTS  
- Noble Numbat  
- Debian-based system  

---

# 2️⃣ Filesystem Sanity Check

## 🔹 mkdir + cp + ls

![filesystem](./images/filesystem.png)

- Directory created successfully  
- File copied without errors  
- Normal permissions  

---

# 3️⃣ CPU & Memory Analysis

## 🔹 top

![top](./images/top.png)

- Load average very low  
- CPU mostly idle  
- No performance pressure  

---

## 🔹 htop

![htop](./images/htop.png)

- containerd running normally  
- No high CPU process  

---

## 🔹 ps -C dockerd

![ps-docker](./images/ps-docker.png)

- Docker CPU usage near 0%  
- Memory usage stable  

---

## 🔹 free -h

![free](./images/free.png)

- Available memory healthy  
- No swap usage  

---

## 🔹 vmstat

![vmstat](./images/vmstat.png)

- No swapping  
- No IO wait  
- CPU idle  

---

# 4️⃣ Disk & Storage

## 🔹 df -h

![df](./images/df.png)

- Root usage 38%  
- Enough free space  

---

## 🔹 du -sh /var/lib/docker

![docker-size](./images/docker-size.png)

- Docker storage ~2.4GB  

---

## 🔹 du -sh /var/log

![var-log](./images/var-log.png)

- Logs under control  
- No abnormal growth  

---

# 5️⃣ Network Check

## 🔹 ss -tulpn

![ss](./images/ss.png)

- Port 80 → nginx  
- Port 22 → SSH  
- containerd local socket  

---

## 🔹 curl -I http://localhost

![curl](./images/curl.png)

- HTTP/1.1 200 OK  
- nginx responding properly  

---

# 6️⃣ Logs & Service Status

## 🔹 systemctl status docker

![systemctl](./images/systemctl.png)

- Active: running  
- Memory usage stable  

---

## 🔹 journalctl -u docker -n 50

![journalctl](./images/journalctl.png)

- Docker initialized correctly  
- No fatal errors  
- Only non-critical warnings  

---

# 🔎 Final Health Summary

| Component | Status |
|-----------|--------|
| CPU | Healthy |
| Memory | Healthy |
| Disk | Safe |
| Docker | Running |
| Network | OK |
| Logs | Clean |

---

# 🚨 Escalation Plan

## 1️⃣ Check Container Usage

```bash
docker stats
```

Use when container consumes high CPU or memory.

---

## 2️⃣ Restart Docker

```bash
systemctl restart docker
```

Use when:
- Docker daemon unresponsive  
- Containers fail unexpectedly  

---

## 3️⃣ Inspect Container

```bash
docker inspect <container_id>
```

Provides:
- Restart policy  
- Environment variables  
- Network configuration  
- Error states  

---

## 4️⃣ Deep Debug (Process-Level)

```bash
pidof dockerd
strace -p <dockerd_pid>
```

Use when:
- Docker stuck  
- High CPU without clear reason  
- Suspected system-level issue  

---

#  Why This Matters for DevOps

**Incidents rarely come with perfect clues. A fast, repeatable checklist saves minutes when services misbehave.**

**This drill builds:**

- Habit of capturing evidence before acting  
- Confidence reading resource signals (CPU, memory, disk, network)  
- Log-first mindset before restarts or escalations  

These habits reduce downtime and prevent guesswork in production.

---
