# 🚀 Day 08 – Cloud Server Setup: Docker, Nginx & Web Deployment

## 📌 Overview
This project demonstrates how to deploy a production-ready web server on AWS EC2, configure Nginx, manage firewall rules, and monitor logs — essential DevOps skills used in real-world environments.

---

## 🎯 Objectives
- Launch and configure a cloud server  
- Connect securely using SSH  
- Install Docker and Nginx  
- Configure Security Groups (Firewall)  
- Deploy a website using Nginx  
- Monitor and download logs  

---

## 🏗️ Architecture Workflow
Local Machine → SSH → EC2 Instance → Install Docker & Nginx → Open Ports → Deploy Website → Access via Browser


---

## ⚙️ 1. Launch EC2 Instance

- Provider: AWS EC2  
- OS: Ubuntu  
- Instance Type: t2.micro  
- Key Pair: `.pem` file  

### 📸 EC2 Instance Running
![EC2 Instance](images/aws-ec2-running-instance-josh-batch.png)

---

## 🔐 2. Configure Security Group

| Type | Port | Purpose |
|------|------|--------|
| SSH  | 22   | Remote Access |
| HTTP | 80   | Web Access |
| HTTPS | 443 | Secure Access |

### 📸 Security Group Rules
![Security Group](images/aws-ec2-security-group-inbound-rules.png)

---

## 🔑 3. Connect via SSH

```bash
chmod 400 your-key.pem
ssh -i your-key.pem ubuntu@<your-public-ip>

---

## 🔄 4. Update System

```bash
sudo apt update && sudo apt upgrade -y

---
🐳 5. Install Docker

```bash
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
docker --version

![Installation Docker](images/docker-installation-and-version-check.png)
---

🌐 6. Install & Start Nginx

```bash
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx

![Installation Nginx and Status](images/nginx-installation-and-service-status.png)

---

```bash
cd /var/www/html/
sudo nano index.html

---
Restart Nginx:

```bash
sudo systemctl restart nginx

---

🌍 8. Access Website
Open browser:

```bash
http://100.28.127.7:80/

![Live Website](images/datta-path-lab-website-homepage.png)

