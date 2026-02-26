# 📘 Linux Troubleshooting Drill
## 🎯 Target Service: Docker (`docker.service`)

This runbook documents a structured troubleshooting drill covering:
- Environment validation
- Filesystem sanity
- CPU & Memory
- Disk & Storage
- Network
- Logs & Service health

---

# 1️⃣ Environment Basics

## 🔹 uname -a

![uname](images/uname.png)

### 🔎 How to Read It

- **Linux** → Operating System Kernel  
- **ip-172-31-20-201** → Hostname  
- **6.17.0-1007-aws** → AWS optimized kernel  
- **x86_64** → 64-bit architecture  

✅ System running Ubuntu 24.04 AWS kernel (64-bit).

---

## 🔹 cat /etc/os-release

![os-release](images/os-release.png)

### 🔎 How to Read It

- **Ubuntu 24.04.3 LTS** → Long Term Support version  
- **Noble Numbat** → Codename  
- **Debian-based distribution**

✅ Stable production-ready OS.

---

# 2️⃣ Filesystem Sanity Check

## 🔹 mkdir + cp + ls

![filesystem](images/filesystem.png)

### 🔎 Observations

- Directory created successfully  
- File copied without error  
- Permissions: `-rw-r--r--` (normal)

✅ Filesystem writable and healthy.

---

# 3️⃣ CPU & Memory Analysis

## 🔹 top

![top](images/top.png)

### 🔎 Key Metrics

- Load Average: ~0.02 (Very Low)
- CPU Idle: ~95%
- Available Memory: ~516MB

✅ System under no performance pressure.

---

## 🔹 ps -o pid,pcpu,pmem,comm -C dockerd

![ps-docker](images/ps-docker.png)

### 🔎 Observations

- Docker CPU usage: 0%
- Memory usage: ~4%

✅ Docker daemon stable.

---

## 🔹 free -h

![free](images/free.png)

### 🔎 Observations

- Total Memory: 911MB  
- Available: 516MB  
- Swap Used: 0B  

✅ No memory exhaustion.

---

## 🔹 vmstat

![vmstat](images/vmstat.png)

### 🔎 Observations

- si/so = 0 → No swapping  
- wa = 0 → No IO wait  
- CPU mostly idle  

✅ No disk or memory bottleneck.

---

# 4️⃣ Disk & Storage

## 🔹 df -h

![df](images/df.png)

### 🔎 Observations

- Root usage: 38%
- 8.5GB available

✅ Disk usage safe.

---

## 🔹 du -sh /var/lib/docker

![docker-size](images/docker-size.png)

- Docker storage: 2.4GB

✅ Normal container storage size.

---

## 🔹 du -sh /var/log

![var-log](images/var-log.png)

- Log directory size: 67MB

✅ No excessive log growth.

---

# 5️⃣ Network Check

## 🔹 ss -tulpn

![ss](images/ss.png)

### 🔎 Observations

- Port 80 → nginx  
- Port 22 → SSH  
- containerd using local socket  

✅ Only expected services listening.

---

## 🔹 curl -I http://localhost

![curl](images/curl.png)

### 🔎 Observations

- HTTP/1.1 200 OK  
- nginx/1.24 active  

✅ Web service responding correctly.

---

# 6️⃣ Logs & Service Status

## 🔹 systemctl status docker

![systemctl](images/systemctl.png)

### 🔎 Observations

- Active: running  
- Memory usage: ~57MB  

✅ Docker service stable.

---

## 🔹 journalctl -u docker -n 50

![journalctl](images/journalctl.png)

### 🔎 Observations

- Docker daemon initialized  
- containerd started  
- No fatal errors  
- Only non-critical warnings  

✅ Logs clean and healthy.

---

# 🔎 Final Health Summary

| Component | Status |
|-----------|--------|
| CPU | Healthy |
| Memory | Healthy |
| Disk | Healthy |
| Docker | Running |
| Network | Normal |
| Logs | Clean |

---

# 🚨 If This Worsens (Escalation Plan)

If Docker shows high CPU usage, memory pressure, container crashes, or repeated errors:

---

## 1️⃣ Check Container Resource Usage

```bash
docker stats
