# 🚀 Day 08 – Cloud Server Setup: Docker, Nginx & Web Deployment

## 📌 Overview
This project demonstrates how to deploy a production-ready web server on a cloud instance using AWS EC2 (or Utho), configure Nginx, manage firewall rules, and extract server logs — core DevOps skills used in real-world environments.

## 🎯 Objectives
- Launch and configure a cloud server  
- Connect securely using SSH  
- Install Docker and Nginx  
- Configure Security Groups (Firewall)  
- Verify web server access via public IP  
- Extract and download logs  
- Document real-world DevOps workflow  

## 🏗️ Architecture Workflow
Local Machine → SSH → Cloud Server → Install Docker & Nginx → Open Port 80 → Access via Browser → Monitor Logs → Download Logs

## ⚙️ 1. Launch Cloud Instance
- Provider: AWS EC2 / Utho  
- OS: Ubuntu (Free Tier)  
- Instance Type: t2.micro  
- Key Pair: `.pem` file  

### Security Group Rules
| Type | Port | Purpose |
|------|------|--------|
| SSH  | 22   | Remote Access |
| HTTP | 80   | Web Access |

## 🔐 2. Connect via SSH
```bash
chmod 400 your-key.pem
ssh -i your-key.pem ubuntu@<your-instance-ip>

# 🔄 Update System

Run the following command to update package lists and upgrade installed packages on your Ubuntu system:

```bash
sudo apt update && sudo apt upgrade -y

