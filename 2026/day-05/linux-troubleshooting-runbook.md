# 📘 Day 05 – Linux Troubleshooting Drill  
## 🎯 Target Service: Docker (`docker.service`)

---

# 1️⃣ Environment Basics

## 🔹 uname -a
![uname](images/01-uname.png)

- Linux → OS Kernel  
- AWS optimized kernel  
- x86_64 → 64-bit  

---

## 🔹 cat /etc/os-release
![os-release](images/02-os-release.png)

- Ubuntu 24.04.3 LTS  
- Noble Numbat  
- Debian-based  

---

# 2️⃣ Filesystem Sanity

## 🔹 mkdir + cp + ls
![filesystem](images/03-filesystem.png)

- Directory created  
- File copied  
- Normal permissions  

---

# 3️⃣ CPU & Memory

## 🔹 top
![top](images/04-top.png)

- Load average low  
- CPU mostly idle  
- Memory available healthy  

---

## 🔹 ps -C dockerd
![ps-docker](images/05-ps-docker.png)

- Docker CPU low  
- Memory usage stable  

---

## 🔹 free -h
![free](images/06-free.png)

- Available memory > 500MB  
- No swap used  

---

## 🔹 vmstat
![vmstat](images/07-vmstat.png)

- No swapping  
- No IO wait  

---

# 4️⃣ Disk & Storage

## 🔹 df -h
![df](images/08-df.png)

- Root usage 38%  
- Enough free space  

---

## 🔹 du -sh /var/lib/docker
![docker-size](images/09-docker-size.png)

- Docker storage ~2.4GB  

---

## 🔹 du -sh /var/log
![var-log](images/10-var-log.png)

- Logs ~67MB  

---

# 5️⃣ Network

## 🔹 ss -tulpn
![ss](images/11-ss.png)

- Port 80 → nginx  
- Port 22 → SSH  

---

## 🔹 curl -I http://localhost
![curl](images/12-curl.png)

- HTTP 200 OK  
- nginx running  

---

# 6️⃣ Logs & Service

## 🔹 systemctl status docker
![systemctl](images/13-systemctl.png)

- Active: running  
- Memory ~57MB  

---

## 🔹 journalctl -u docker -n 50
![journalctl](images/14-journalctl.png)

- No critical errors  
- Docker initialized properly  

---

# 🔎 Final Status

| Component | Result |
|------------|--------|
| CPU | Healthy |
| Memory | Healthy |
| Disk | Safe |
| Docker | Running |
| Network | OK |
| Logs | Clean |

---

# 🚨 Escalation Steps

## 1️⃣ docker stats
```
docker stats
```
Use to check container resource usage.

## 2️⃣ Restart Docker
```
systemctl restart docker
```
Use when daemon unresponsive.

## 3️⃣ Inspect Container
```
docker inspect <container_id>
```

## 4️⃣ Deep Debug
```
pidof dockerd
strace -p <pid>
```

---

⭐ #90DaysOfDevOps
