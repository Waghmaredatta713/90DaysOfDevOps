
---

# 1️⃣ Environment Basics

## 🔹 uname -a  
📸 Image: `images/uname.png`

![uname](images/uname.png)

### 🔎 How to Read It
- Linux → OS Kernel  
- ip-172-31-20-201 → Hostname  
- 6.17.0-1007-aws → AWS optimized kernel  
- x86_64 → 64-bit architecture  

✅ System running Ubuntu 24.04 (AWS kernel, 64-bit).

---

## 🔹 cat /etc/os-release  
📸 Image: `images/os-release.png`

![os-release](images/os-release.png)

### 🔎 Observations
- Ubuntu 24.04.3 LTS  
- Codename: Noble  
- Debian-based distribution  

✅ Stable production-ready OS.

---

# 2️⃣ Filesystem Sanity Check

## 🔹 mkdir + cp + ls  
📸 Image: `images/filesystem.png`

![filesystem](images/filesystem.png)

### 🔎 Observations
- Directory created successfully  
- File copied without error  
- Normal permissions (`-rw-r--r--`)  

✅ Filesystem writable and healthy.

---

# 3️⃣ CPU & Memory Analysis

## 🔹 top  
📸 Image: `images/top.png`

![top](images/top.png)

### 🔎 Key Metrics
- Load Average: ~0.02  
- CPU Idle: ~95%  
- Available Memory: ~516MB  

✅ No performance pressure.

---

## 🔹 ps -o pid,pcpu,pmem,comm -C dockerd  
📸 Image: `images/ps-docker.png`

![ps-docker](images/ps-docker.png)

### 🔎 Observations
- Docker CPU usage: 0%  
- Memory usage: ~4%  

✅ Docker daemon stable.

---

## 🔹 free -h  
📸 Image: `images/free.png`

![free](images/free.png)

### 🔎 Observations
- Total Memory: 911MB  
- Available: 516MB  
- Swap Used: 0B  

✅ No memory exhaustion.

---

## 🔹 vmstat  
📸 Image: `images/vmstat.png`

![vmstat](images/vmstat.png)

### 🔎 Observations
- No swapping (si/so = 0)  
- No IO wait  
- CPU mostly idle  

✅ No bottlenecks detected.

---

# 4️⃣ Disk & Storage

## 🔹 df -h  
📸 Image: `images/df.png`

![df](images/df.png)

### 🔎 Observations
- Root usage: 38%  
- 8.5GB available  

✅ Disk usage safe.

---

## 🔹 du -sh /var/lib/docker  
📸 Image: `images/docker-size.png`

![docker-size](images/docker-size.png)

- Docker storage: 2.4GB  

✅ Normal container storage usage.

---

## 🔹 du -sh /var/log  
📸 Image: `images/var-log.png`

![var-log](images/var-log.png)

- Log directory size: 67MB  

✅ No excessive log growth.

---

# 5️⃣ Network Check

## 🔹 ss -tulpn  
📸 Image: `images/ss.png`

![ss](images/ss.png)

### 🔎 Observations
- Port 80 → nginx  
- Port 22 → SSH  
- containerd local socket  

✅ Only expected services listening.

---

## 🔹 curl -I http://localhost  
📸 Image: `images/curl.png`

![curl](images/curl.png)

### 🔎 Observations
- HTTP/1.1 200 OK  
- nginx 1.24 active  

✅ Web service responding correctly.

---

# 6️⃣ Logs & Service Status

## 🔹 systemctl status docker  
📸 Image: `images/systemctl.png`

![systemctl](images/systemctl.png)

### 🔎 Observations
- Active: running  
- Memory usage: ~57MB  

✅ Docker service healthy.

---

## 🔹 journalctl -u docker -n 50  
📸 Image: `images/journalctl.png`

![journalctl](images/journalctl.png)

### 🔎 Observations
- Docker daemon initialized  
- containerd started  
- No critical errors  

✅ Logs clean.

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
