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

## Example Scenario: Service Not Starting

A web application service called 'myapp' failed to start after a server reboot. What commands would you run to diagnose the issue? Write at least 4 commands in order.

---

Step 1: systemctl status myapp

Why: i will check the status of the service It shows if the service is 
active, failed, or stopped

Step 2: journalctl -u myapp -n 50

Why: reviews recent logs to identify startup errors or missconfigurations

step 3: systemctl is-enabled myapp

Why :   verifies whether the service enabled to start automatically on boot

step 4:  systemctl restart myapp

Why :   attempts to restart the service after identifying or fixing the issue

step 5:  systemctl daemon-reload  ( interview bonus / optional follow up)
Why :  reloads systemd configuration if the service unit file was modified

---

## Scenario 2: High CPU Usage

Your manager reports that the application server is slow. You SSH into the server. What commands would you run to identify which process is using high CPU?

---

step 1 : Use a command that shows CPU usage that is = **top**

why :- shows live cpu usage and highlights the processes consuming 
highest cpu in real time

step 2: Look for processes sorted by CPU percentage = **htop**

why : - provides an interactive and clearer view of CPU usage sorted processes 
and per core utilization

step3 : **ps aux --sort=%cpu | head -10**

why : lists the top CPU consuming processes in descending order to quickly 
identify 

step 4 : **ps -p <543> -o pid,ppid,%cpu,%mem,cmd**
why : - inspects the identified process in details to understand what is causing high cpu usage

---

## Scenario 3: Finding Service Logs

A developer asks: "Where are the logs for the 'docker' service?" The service is managed by systemd. What commands would you use?

---


step 1 : **systemctl status docker**

why : confirms wheteher the docker service is running and shows recent
 log snippets
 
step 2: **journalctl -u docker -n 50**

why : displays the last 50 log entries for docker service from systemd journal

step 3: **journalctl -u docker -f** 

why : follows docker logs in real time ( similar to tail -f ) for 
live troubleshooting

one line interview summary > for a systemd managed services like docker i use 
journalctl -u docker to view and follow service logs.

---


## Scenario 4: File Permissions Issue

A script at /home/user/backup.sh is not executing. When you run it: ./backup.sh You get: "Permission denied"

What commands would you use to fix this?

---

step 1 : Check current permissions

Command: **ls -l /home/user/backup.sh**

why : checks current file permissions to confirm execute (x) is missing

step 2: Add execute permission

Command: **chmod +x /home/user/backup.sh**

why : adds execute permission so the script can run

step 3 : Verify it worked

Command: **ls -l /home/user/backup.sh**

Look for: -rwxr-xr-x (notice 'x' = executable)

Step 4: Try running it

Command: **./backup.sh**

---
