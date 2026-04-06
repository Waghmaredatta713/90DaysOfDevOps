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

<p align="center">
  <img src="images/root-directory.png" width="900">
</p>
