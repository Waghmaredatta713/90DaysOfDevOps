# 📘 Linux File System & Troubleshooting Notes

This document covers Linux file system basics, hands-on commands, and real-world troubleshooting scenarios.

---

# 📁 Linux File System Overview

## 📁 / (Root Directory)
- **What it contains:** Top-level directory of Linux; everything starts from here  
- **Command:** `ls -l /`  
- **Example:** home, etc, var  
- **Use Case:** Exploring entire system structure  

---

## 📁 /home
- **What it contains:** User home directories  
- **Command:** `ls -l /home`  
- **Example:** ubuntu, datta  
- **Use Case:** Accessing user files  

---

## 📁 /root
- **What it contains:** Root user’s home directory  
- **Command:** `ls -l /root`  
- **Example:** .bashrc, scripts  
- **Use Case:** Admin-level work  

---

## 📁 /etc
- **What it contains:** System configuration files  
- **Command:** `ls -l /etc`  
- **Example:** hostname, passwd  
- **Use Case:** Debugging configs  

---

## 📁 /var/log
- **What it contains:** System & application logs  
- **Command:** `ls -l /var/log`  
- **Example:** syslog, auth.log  
- **Use Case:** Troubleshooting  

---

## 📁 /tmp
- **What it contains:** Temporary files  
- **Command:** `ls -l /tmp`  
- **Example:** temp files  
- **Use Case:** Testing & temp storage  

---

## 📁 /bin
- **What it contains:** Essential commands  
- **Command:** `ls -l /bin`  
- **Example:** ls, cp, mv  
- **Use Case:** Basic system operations  

---

## 📁 /usr/bin
- **What it contains:** Installed programs  
- **Command:** `ls -l /usr/bin`  
- **Example:** python3, git  
- **Use Case:** Running tools  

---

## 📁 /opt
- **What it contains:** Third-party software  
- **Command:** `ls -l /opt`  
- **Example:** custom apps  
- **Use Case:** Manual installations  

---

# 🧪 Hands-on Tasks

## 🔍 1. Find Largest Log Files

```bash
du -sh /var/log/* 2>/dev/null | sort -h | tail -5

✅ What it does:
du -sh → File sizes
2>/dev/null → Hide errors
sort -h → Sort by size
tail -5 → Top 5 largest
🧠 Example Output:
10M  /var/log/syslog
25M  /var/log/auth.log
50M  /var/log/kern.log
80M  /var/log/cloud-init.log
120M /var/log/dpkg.log
✍️ Notes:
Observation: dpkg.log is largest
Learning: Large logs can fill disk
⚙️ 2. View System Configuration
cat /etc/hostname
✍️ Notes:
Observation: Shows server name
Learning: Helps identify system
🏠 3. Check Home Directory
ls -la ~
✍️ Notes:
Observation: Hidden files (.bashrc, .profile)
Learning: Stores user configs
🔧 Troubleshooting Runbooks
🌐 Scenario 1: Nginx Service Issue
systemctl status nginx
journalctl -u nginx -n 50
systemctl is-enabled nginx
nginx -t
ss -tulnp | grep :80
systemctl restart nginx
systemctl status nginx
🧠 Learning:

Check → Logs → Config → Fix → Restart

⚡ Scenario 2: High CPU Usage
top
ps aux --sort=-%cpu | head -10
top -p <PID>
ps -fp <PID>
kill -15 <PID>
top
🧠 Learning:

Identify → Analyze → Kill → Verify

🐳 Scenario 3: Docker Service Issue
systemctl status docker
journalctl -u docker -n 50
journalctl -u docker -f
systemctl restart docker
🧠 Learning:

Logs are key to debugging

🔐 Scenario 4: File Permission Issue
ls -l /home/user/backup.sh
chmod +x /home/user/backup.sh
ls -l /home/user/backup.sh
./backup.sh
🧠 Learning:

Scripts need execute permission

✅ Final Learning
Linux file system structure is critical
Logs are primary debugging tool
Step-by-step troubleshooting saves time
Permissions and processes are core DevOps skills
