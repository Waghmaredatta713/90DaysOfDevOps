# 📘 Day 07 – Linux File System & Troubleshooting Notes

This document covers Linux file system structure, hands-on practice, and real-world troubleshooting scenarios.

---

# 📁 Linux File System Overview

## 📁 / (Root Directory)

<p align="center">
  <img src="images/root-directory.png" width="900">
</p>

- Top-level directory of Linux  
- Everything starts from here  
- Command: `ls -l /`  
- Example: home, etc, var  

---

## 📁 /home

<p align="center">
  <img src="images/home-directory.png" width="900">
</p>

- Stores user directories  
- Command: `ls -l /home`  
- Example: ubuntu, datta  

---

## 📁 /root

<p align="center">
  <img src="images/root-directory.png" width="900">
</p>

- Root (admin) home  
- Command: `ls -l /root`  

---

## 📁 /etc

<p align="center">
  <img src="images/etc-directory.png" width="900">
</p>

- Configuration files  
- Command: `ls -l /etc`  
- Example: hostname, passwd  

---

## 📁 /var/log

<p align="center">
  <img src="images/var-log.png" width="900">
</p>

- System logs  
- Command: `ls -l /var/log`  

---

## 📁 /tmp

<p align="center">
  <img src="images/tmp-directory.png" width="900">
</p>

- Temporary files  
- Command: `ls -l /tmp`  

---

## 📁 /bin & /usr/bin

<p align="center">
  <img src="images/bin-usrbin.png" width="900">
</p>

- System binaries  
- Examples: ls, cp, mv, python3  

---

## 📁 /opt

- Third-party software  
- Command: `ls -l /opt`  

---

# 🧪 Hands-on Tasks

## 🔍 1. Find Largest Log Files

```bash
du -sh /var/log/* 2>/dev/null | sort -h | tail -5


## 🖼️ **Output**

<p align="center">
  <img src="images/home-directory_1.png" width="900">
</p>

## **✅ What this does**

- Shows file sizes
- Hides permission errors
- Sorts by size
- Displays top 5 largest

## 🧠 Learning
Observation: /var/log/journal is largest
Log files can fill disk space


⚙️ 2. View System Configuration
- Command: `cat /etc/hostname'

## 🖼️ Output

<p align="center">
  <img src="images/home-directory_1.png" width="900">
</p>

## 🧠 Learning
Hostname: **ip-172-31-74-169**
Helps identify server

## 🏠 3. Check Home Directory
- Command: `ls -la ~'

##🖼️ Output

<p align="center">
  <img src="images/home-directory_1.png" width="900">
</p>

## 🧠 Learning
Hidden files: .bashrc, .profile, .ssh
Stores user configs




# 📘 Day 07 – Linux Troubleshooting (Nginx Scenario)

This document demonstrates real-world troubleshooting of an Nginx service using standard Linux commands.

---

# 🌐 Scenario: Nginx Service Issue

---

## 🔹 Step 1: Check Service Status

```bash
systemctl status nginx

<p align="center">
  <img src="images/nginx-status.png" width="900">
</p>

Why:
Check if the service is running, failed, or inactive




